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

// vncBuffer object

// The vncBuffer object provides a client-local copy of the screen
// It can tell the client which bits have changed in a given region
// It uses the specified vncDesktop to read screen data from

class vncBuffer;

#if !defined(_WINVNC_VNCBUFFER)
#define _WINVNC_VNCBUFFER
#pragma once

// Includes

#include "vncDesktop.h"
#include "vncEncoder.h"
#include "vncRegion.h"
#include "RectList.h"

// Class definition

class vncBuffer
{
// Methods
public:
	// Create/Destroy methods
	vncBuffer(vncDesktop *desktop);
	~vncBuffer();

	// BUFFER INFO
	RECT GetSize();
	rfbPixelFormat GetLocalFormat();
	BYTE *GetClientBuffer();
	UINT GetClientBuffSize();
	BOOL GetRemotePalette(RGBQUAD *quadbuff, UINT ncolours);

	// BUFFER MANIPULATION
	BOOL CheckBuffer();

	// SCREEN SCANNING
	void Clear(RECT &rect);
	void GetChangedRegion(vncRegion &rgn, RECT &rect);											
	UINT GetNumCodedRects(RECT &rect);

	// SCREEN CAPTURE
	void GrabRect(RECT &rect);
	void CopyRect(RECT &dest, POINT &source);
	RECT GrabMouse();					
	BOOL SetClientFormat(rfbPixelFormat &format);

	// ENCODING
	BOOL SetEncoding(CARD32 encoding);
	UINT TranslateRect(const RECT &rect);

// Implementation
protected:

	// Routine to verify the mainbuff handle hasn't changed
	inline BOOL FastCheckMainbuffer();
	
	BYTE		*m_mainbuff;
	BOOL		m_freemainbuff;
	BYTE		*m_backbuff;
	UINT		m_mainsize;

	BYTE		*m_clientbuff;
	UINT		m_clientbuffsize;
	BOOL		m_clientfmtset;

	UINT		m_bytesPerRow;

	rfbServerInitMsg	m_scrinfo;
	rfbPixelFormat		m_clientformat;
	rfbTranslateFnType	m_transfunc;

	vncDesktop	*m_desktop;
	vncEncoder	*m_encoder;
};

#endif // _WINVNC_VNCBUFFER
