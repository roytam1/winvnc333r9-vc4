//  Copyright (C) 1999 AT&T Laboratories Cambridge. All Rights Reserved.
//
//  This file is part of the VNC system.
//
//  The VNC system is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
//  USA.
//
// If the source code for the VNC system is not available from the place 
// whence you received this file, check http://www.uk.research.att.com/vnc or contact
// the authors on vnc@uk.research.att.com for information on obtaining it.


// ScrBuffer implementation

#include "stdhdrs.h"

// Header

#include "vncDesktop.h"
#include "vncEncoder.h"
#include "vncEncodeRRE.h"
#include "vncEncodeCoRRE.h"
#include "vncEncodeHexT.h"
#include "MinMax.h"

#include "vncBuffer.h"

// Implementation

vncBuffer::vncBuffer(vncDesktop *desktop)
{
	m_desktop = desktop;
	m_encoder = NULL;

	m_freemainbuff = FALSE;
	m_mainbuff = NULL;
	m_backbuff = NULL;
	m_mainsize = 0;
	
	m_clientbuff = NULL;
	m_clientbuffsize = 0;
	m_clientfmtset = FALSE;

	// Initialise the screen buffers
	CheckBuffer();
}

vncBuffer::~vncBuffer()
{
	if (m_freemainbuff) {
		// We need to free the slow-blit buffer
		if (m_mainbuff != NULL)
		{
			delete [] m_mainbuff;
			m_mainbuff = NULL;
		}
	}
	if (m_backbuff != NULL)
	{
		delete [] m_backbuff;
		m_backbuff = NULL;
	}
	if (m_encoder != NULL)
	{
		delete m_encoder;
		m_encoder = NULL;
	}
	if (m_clientbuff != NULL)
	{
		delete m_clientbuff;
		m_clientbuff = NULL;
	}
	m_clientbuffsize = 0;
	m_mainsize = 0;
}

RECT
vncBuffer::GetSize()
{
	RECT rect;

	rect.left = 0;
	rect.top = 0;
	rect.right = m_scrinfo.framebufferWidth;
	rect.bottom = m_scrinfo.framebufferHeight;

	return rect;
}

rfbPixelFormat
vncBuffer::GetLocalFormat()
{
	return m_scrinfo.format;
}

BYTE *
vncBuffer::GetClientBuffer()
{
	return m_clientbuff;
}

BOOL
vncBuffer::GetRemotePalette(RGBQUAD *quadlist, UINT ncolours)
{
	// Try to get the RGBQUAD data from the encoder
	// This will only work if the remote client is palette-based,
	// in which case the encoder will be storing RGBQUAD data
	if (m_encoder == NULL)
	{
		log.Print(LL_INTWARN, VNCLOG("GetRemotePalette called but no encoder set\n"));
		return FALSE;
	}

	// Now get the palette data
	return m_encoder->GetRemotePalette(quadlist, ncolours);
}

BOOL
vncBuffer::CheckBuffer()
{
	// Get the screen format, in case it has changed
	m_desktop->FillDisplayInfo(&m_scrinfo);

	// If the client has not specified a pixel format then set one for it
	if (!m_clientfmtset) {
	    m_clientfmtset = TRUE;
	    m_clientformat = m_scrinfo.format;
	}

	// If the client has not selected an encoding then set one for it
	if (m_encoder == NULL) {
	    if (!SetEncoding(rfbEncodingRaw))
		return FALSE;
	}

	m_bytesPerRow = m_scrinfo.framebufferWidth * m_scrinfo.format.bitsPerPixel/8;

	// Check the client buffer is sufficient
	const UINT clientbuffsize =
	    m_encoder->RequiredBuffSize(m_scrinfo.framebufferWidth,
					m_scrinfo.framebufferHeight);
	if (m_clientbuffsize != clientbuffsize)
	{
	    if (m_clientbuff != NULL)
	    {
			delete [] m_clientbuff;
			m_clientbuff = NULL;
	    }
	    m_clientbuffsize = 0;

	    m_clientbuff = new BYTE [clientbuffsize];
	    if (m_clientbuff == NULL)
	    {		
			log.Print(LL_INTERR, VNCLOG("unable to allocate client buffer[%d]\n"), clientbuffsize);
			return FALSE;
	    }

	    m_clientbuffsize = clientbuffsize;

	    ZeroMemory(m_clientbuff, m_clientbuffsize);
	}

	// Check that the local format buffers are sufficient
	if ((m_mainsize != m_desktop->ScreenBuffSize()) || !m_freemainbuff)
	{
		if (m_freemainbuff) {
			// Slow blits were enabled - free the slow blit buffer
			if (m_mainbuff != NULL)
			{
				delete [] m_mainbuff;
				m_mainbuff = NULL;
			}
		}

		if (m_backbuff != NULL)
		{
			delete [] m_backbuff;
			m_backbuff = NULL;
		}
		m_mainsize = 0;

		// Check whether or not the vncDesktop is using fast blits
		m_mainbuff = (BYTE *)m_desktop->OptimisedBlitBuffer();
		if (m_mainbuff) {
			// Prevent us from freeing the DIBsection buffer
			m_freemainbuff = FALSE;
			log.Print(LL_INTINFO, VNCLOG("fast blits detected - using DIBsection buffer\n"));
		} else {
			// Create our own buffer to copy blits through
			m_freemainbuff = TRUE;
			if ((m_mainbuff = new BYTE [m_desktop->ScreenBuffSize()]) == NULL)
			{
				log.Print(LL_INTERR, VNCLOG("unable to allocate main buffer[%d]\n"), m_desktop->ScreenBuffSize());
				return FALSE;
			}
		}

		// Always create a back buffer
		if ((m_backbuff = new BYTE [m_desktop->ScreenBuffSize()]) == NULL)
		{
			log.Print(LL_INTERR, VNCLOG("unable to allocate back buffer[%d]\n"), m_desktop->ScreenBuffSize());
			return FALSE;
		}
		m_mainsize = m_desktop->ScreenBuffSize();
		
		// Clear the backbuffer
		memcpy(m_backbuff, m_mainbuff, m_desktop->ScreenBuffSize());
	}

	log.Print(LL_INTINFO, VNCLOG("local buffer=%d, remote buffer=%d\n"), m_mainsize, m_clientbuffsize);

	return TRUE;
}

// returns true if any *(p1+n) != *(p2+n) for 0<n<count-1
inline static bool
bytesdiff(BYTE *p1, BYTE *p2, int count) {
	for (int i=0; i<count; i++) {
		if (*(p1+i) != *(p2+i)) return true;
	}
	return false;
}

// New version of GetChangedRegion.  This version tries to avoid
// sending too much unnecessary data.
#pragma function(memcpy,memcmp)
void
vncBuffer::GetChangedRegion(vncRegion &rgn, RECT &rect)
{
	if (!FastCheckMainbuffer())
		return;

	const int BLOCK_SIZE = 32;
	const UINT bytesPerPixel = m_scrinfo.format.bitsPerPixel / 8;

	RECT new_rect;

	int x, y, ay, by;

	// DWORD align the incoming rectangle.  (bPP will be 8, 16 or 32)
	if (bytesPerPixel < 4) {
		if (bytesPerPixel == 1)				// 1 byte per pixel
			rect.left -= (rect.left & 3);	// round down to nearest multiple of 4
		else								// 2 bytes per pixel
			rect.left -= (rect.left & 1);	// round down to nearest multiple of 2
	}

	// Scan down the rectangle
	unsigned char *o_topleft_ptr = m_backbuff + (rect.top * m_bytesPerRow) + (rect.left * bytesPerPixel);
	unsigned char *n_topleft_ptr = m_mainbuff + (rect.top * m_bytesPerRow) + (rect.left * bytesPerPixel);
	for (y = rect.top; y<rect.bottom; y+=BLOCK_SIZE)
	{
		// Work out way down the bitmap
		unsigned char * o_row_ptr = o_topleft_ptr;
		unsigned char * n_row_ptr = n_topleft_ptr;

		const UINT blockbottom = Min(y+BLOCK_SIZE, rect.bottom);
		for (x = rect.left; x<rect.right; x+=BLOCK_SIZE)
		{
			// Work our way across the row
			unsigned char *n_block_ptr = n_row_ptr;
			unsigned char *o_block_ptr = o_row_ptr;

			const UINT blockright = Min(x+BLOCK_SIZE, rect.right);
			const UINT bytesPerBlockRow = (blockright-x) * bytesPerPixel;

			// Scan this block
			for (ay = y; ay < blockbottom; ay++)
			{
				if (memcmp(n_block_ptr, o_block_ptr, bytesPerBlockRow) != 0)
				{
					// A pixel has changed, so this block needs updating
					new_rect.top = y;
					new_rect.left = x;
					new_rect.right = blockright;
					new_rect.bottom = blockbottom;
					rgn.AddRect(new_rect);

					// Copy the changes to the back buffer
					for (by = ay; by < blockbottom; by++)
					{
						memcpy(o_block_ptr, n_block_ptr, bytesPerBlockRow);
						n_block_ptr+=m_bytesPerRow;
						o_block_ptr+=m_bytesPerRow;
					}

					break;
				}

				n_block_ptr += m_bytesPerRow;
				o_block_ptr += m_bytesPerRow;
			}

			o_row_ptr += bytesPerBlockRow;
			n_row_ptr += bytesPerBlockRow;
		}

		o_topleft_ptr += m_bytesPerRow * BLOCK_SIZE;
		n_topleft_ptr += m_bytesPerRow * BLOCK_SIZE;
	}
}

UINT
vncBuffer::GetNumCodedRects(RECT &rect)
{
	// Ask the encoder how many rectangles this update would become
	return m_encoder->NumCodedRects(rect);
}

void
vncBuffer::GrabRect(RECT &rect)
{
	if (!FastCheckMainbuffer())
		return;
	m_desktop->CaptureScreen(rect, m_mainbuff, m_mainsize);
}

void
vncBuffer::CopyRect(RECT &dest, POINT &source)
{
	// Copy the data from one region of the back-buffer to another!
	BYTE *srcptr = m_backbuff + (source.y * m_bytesPerRow) +
		(source.x * m_scrinfo.format.bitsPerPixel/8);
	BYTE *destptr = m_backbuff + (dest.top * m_bytesPerRow) +
		(dest.left * m_scrinfo.format.bitsPerPixel/8);
	const UINT bytesPerLine = (dest.right-dest.left)*(m_scrinfo.format.bitsPerPixel/8);
	if (dest.top < source.y)
	{
		for (int y=dest.top; y < dest.bottom; y++)
		{
			memmove(destptr, srcptr, bytesPerLine);
			srcptr+=m_bytesPerRow;
			destptr+=m_bytesPerRow;
		}
	}
	else
	{
		srcptr += (m_bytesPerRow * ((dest.bottom-dest.top)-1));
		destptr += (m_bytesPerRow * ((dest.bottom-dest.top)-1));
		for (int y=dest.bottom; y > dest.top; y--)
		{
			memmove(destptr, srcptr, bytesPerLine);
			srcptr-=m_bytesPerRow;
			destptr-=m_bytesPerRow;
		}
	}
}

RECT
vncBuffer::GrabMouse()
{
	if (FastCheckMainbuffer()) {
		m_desktop->CaptureScreen(m_desktop->MouseRect(), m_mainbuff, m_mainsize);
		m_desktop->CaptureMouse(m_mainbuff, m_mainsize);
	}
	return m_desktop->MouseRect();
}

BOOL
vncBuffer::SetClientFormat(rfbPixelFormat &format)
{
	log.Print(LL_INTINFO, VNCLOG("SetClientFormat called\n"));
	
	// Save the desired format
	m_clientfmtset = TRUE;
	m_clientformat = format;

	// Tell the encoder of the new format
	if (m_encoder != NULL)
		m_encoder->SetRemoteFormat(format);

	// Check that the output buffer is sufficient
	if (!CheckBuffer())
		return FALSE;

	return TRUE;
}

BOOL
vncBuffer::SetEncoding(CARD32 encoding)
{
	// Delete the old encoder
	if (m_encoder != NULL)
	{
		delete m_encoder;
		m_encoder = NULL;
	}

	// Returns FALSE if the desired encoding cannot be used
	switch(encoding)
	{

	case rfbEncodingRaw:

		log.Print(LL_INTINFO, VNCLOG("raw encoder requested\n"));

		// Create a RAW encoder
		m_encoder = new vncEncoder;
		if (m_encoder == NULL)
			return FALSE;
		break;

	case rfbEncodingRRE:

		log.Print(LL_INTINFO, VNCLOG("RRE encoder requested\n"));

		// Create a RRE encoder
		m_encoder = new vncEncodeRRE;
		if (m_encoder == NULL)
			return FALSE;
		break;

	case rfbEncodingCoRRE:

		log.Print(LL_INTINFO, VNCLOG("CoRRE encoder requested\n"));

		// Create a CoRRE encoder
		m_encoder = new vncEncodeCoRRE;
		if (m_encoder == NULL)
			return FALSE;
		break;

	case rfbEncodingHextile:

		log.Print(LL_INTINFO, VNCLOG("Hextile encoder requested\n"));

		// Create a CoRRE encoder
		m_encoder = new vncEncodeHexT;
		if (m_encoder == NULL)
			return FALSE;
		break;

	default:
		// An unknown encoding was specified
		log.Print(LL_INTERR, VNCLOG("unknown encoder requested\n"));

		return FALSE;
	}

	// Initialise it and give it the pixel format
	m_encoder->Init();
	m_encoder->SetLocalFormat(
			m_scrinfo.format,
			m_scrinfo.framebufferWidth,
			m_scrinfo.framebufferHeight);
	if (m_clientfmtset)
		if (!m_encoder->SetRemoteFormat(m_clientformat))
		{
			log.Print(LL_INTERR, VNCLOG("client pixel format is not supported\n"));

			return FALSE;
		}

	// Check that the client buffer is compatible
	return CheckBuffer();
}

void
vncBuffer::Clear(RECT &rect)
{
	if (!FastCheckMainbuffer())
		return;

	log.Print(LL_INTINFO,
		VNCLOG("clearing rectangle (%d, %d)-(%d, %d)\n"),
		rect.left, rect.top, rect.right, rect.bottom);

	// Update the contents of a region, to stop it from being marked as having changed
	BYTE *backptr = m_backbuff + (rect.top * m_bytesPerRow) + (rect.left * m_scrinfo.format.bitsPerPixel/8);
	BYTE *mainptr = m_mainbuff + (rect.top * m_bytesPerRow) + (rect.left * m_scrinfo.format.bitsPerPixel/8);
	const UINT bytesPerLine = (rect.right-rect.left)*(m_scrinfo.format.bitsPerPixel/8);
	for (int y=rect.top; y < rect.bottom; y++)
	{
		memcpy(backptr, mainptr, bytesPerLine);
		backptr+=m_bytesPerRow;
		mainptr+=m_bytesPerRow;
	}
}

// Routine to translate a rectangle between pixel formats
UINT
vncBuffer::TranslateRect(const RECT &rect)
{
	if (!FastCheckMainbuffer())
		return 0;

	// Call the encoder to encode the rectangle into the client buffer...
	return m_encoder->EncodeRect(m_backbuff, m_clientbuff, rect);
}

// Verify that the fast blit buffer hasn't changed
inline BOOL
vncBuffer::FastCheckMainbuffer() {
	VOID *tmp = m_desktop->OptimisedBlitBuffer();
	if (tmp && (m_mainbuff != tmp))
		return CheckBuffer();
	return TRUE;
}
