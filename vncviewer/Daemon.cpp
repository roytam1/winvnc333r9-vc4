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


// Daemon.cpp: implementation of the Daemon class.

#include "stdhdrs.h"
#include "vncviewer.h"
#include "Daemon.h"
#include "Exception.h"
#include "ClientConnection.h"
#include "AboutBox.h"

/* Dynamic loading Shell_NotifyIcon */
BOOL WINAPI MyShell_NotifyIcon_init(DWORD dwMessage, PNOTIFYICONDATAA lpData);

typedef BOOL (WINAPI *pfnShell_NotifyIconA)(DWORD dwMessage, PNOTIFYICONDATAA lpData);
static pfnShell_NotifyIconA MyShell_NotifyIcon = MyShell_NotifyIcon_init;

BOOL WINAPI MyShell_NotifyIcon_fallback(DWORD dwMessage, PNOTIFYICONDATAA lpData) {
	return FALSE;
}

BOOL WINAPI MyShell_NotifyIcon_init(DWORD dwMessage, PNOTIFYICONDATAA lpData) {
	if( MyShell_NotifyIcon == MyShell_NotifyIcon_init ) {
		HMODULE hShell32 = NULL;
		if (hShell32 = LoadLibrary("shell32.dll")) {
			MyShell_NotifyIcon = (pfnShell_NotifyIconA)GetProcAddress(hShell32, "Shell_NotifyIconA");
			if (!MyShell_NotifyIcon) {
				MyShell_NotifyIcon = (pfnShell_NotifyIconA)GetProcAddress(hShell32, "Shell_NotifyIcon");
			}
		}
	}
		if (!MyShell_NotifyIcon || MyShell_NotifyIcon == MyShell_NotifyIcon_init) {
			MyShell_NotifyIcon = MyShell_NotifyIcon_fallback;
		}

	return MyShell_NotifyIcon(dwMessage, lpData);
}

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////
#define DAEMON_CLASS_NAME "VNCviewer Daemon"

Daemon::Daemon(int port)
{

	// Create a dummy window
	WNDCLASS wndclass;

	wndclass.style			= CS_HREDRAW | CS_VREDRAW | CS_DBLCLKS;
	wndclass.lpfnWndProc	= Daemon::WndProc;
	wndclass.cbClsExtra		= 0;
	wndclass.cbWndExtra		= 0;
	wndclass.hInstance		= pApp->m_instance;
	wndclass.hIcon			= LoadIcon(pApp->m_instance, MAKEINTRESOURCE(IDI_MAINICON));
	wndclass.hCursor		= LoadCursor(NULL, IDC_ARROW);
	wndclass.hbrBackground	= (HBRUSH) GetStockObject(WHITE_BRUSH);
	wndclass.lpszMenuName	= (const char *) NULL;
	wndclass.lpszClassName	= DAEMON_CLASS_NAME;

	RegisterClass(&wndclass);

	m_hwnd = CreateWindow(DAEMON_CLASS_NAME,
				"VNCViewer Listening Daemon",
				WS_OVERLAPPEDWINDOW,
				CW_USEDEFAULT,
				CW_USEDEFAULT,
				200, 200,
				NULL,
				NULL,
				pApp->m_instance,
				NULL);
	
	// record which client created this window
	SetWindowLongPtr(m_hwnd, GWLP_USERDATA, (INT_PTR) this);

	// Load a popup menu
	m_hmenu = LoadMenu(pApp->m_instance, MAKEINTRESOURCE(IDR_TRAYMENU));

	DWORD winver = GetVersion();
	MyShell_NotifyIcon(NIM_DELETE, &m_nid); // test run Shell_NotifyIcon
	if (MyShell_NotifyIcon == MyShell_NotifyIcon_fallback || (winver & 0xFF) < 4) // if Shell_NotifyIcon falls back or NT major version is too low, stop using it
		m_no_tray_icon = TRUE;
	// Add VNC options to the System Menu of the minimized window
	HMENU hSysMenu = GetSystemMenu(m_hwnd, FALSE);
	if (hSysMenu) {
		AppendMenu(hSysMenu, MF_SEPARATOR, 0, NULL);
		AppendMenu(hSysMenu, MF_STRING, ID_NEWCONN, "&New connection...");
		AppendMenu(hSysMenu, MF_STRING, IDC_OPTIONBUTTON, "&Properties...");
		AppendMenu(hSysMenu, MF_STRING, IDD_APP_ABOUT, "&About VNCviewer...");
		AppendMenu(hSysMenu, MF_STRING, ID_CLOSEDAEMON, "&Close listening daemon");
	}

	// Create a listening socket
    struct sockaddr_in addr;

    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = INADDR_ANY;

    m_sock = socket(AF_INET, SOCK_STREAM, 0);
	if (!m_sock) throw WarningException("Error creating Daemon socket");
    
	try {
		int one = 1, res = 0;
		//res = setsockopt(m_sock, SOL_SOCKET, SO_REUSEADDR, (const char *) &one, sizeof(one));
		//if (res == SOCKET_ERROR) 
		//  throw WarningException("Error setting Daemon socket options");
		
		res = bind(m_sock, (struct sockaddr *)&addr, sizeof(addr));
		if (res == SOCKET_ERROR)
			throw WarningException("Error binding Daemon socket");
		
		res = listen(m_sock, 5);
		if (res == SOCKET_ERROR)
			throw WarningException("Error when Daemon listens");
	} catch (...) {
		closesocket(m_sock);
		m_sock = 0;
		throw;
	}
	
	// Send a message to specified window on an incoming connection
	WSAAsyncSelect (m_sock,  m_hwnd,  WM_SOCKEVENT, FD_ACCEPT);

	// Create the tray icon
	AddTrayIcon();
	
	// A timer checks that the tray icon is intact
	m_timer = SetTimer( m_hwnd, IDT_TRAYTIMER,  15000, NULL);
}

void Daemon::AddTrayIcon() {
	g_log.Print(4, _T("Adding tray icon\n"));
	SendTrayMsg(NIM_ADD);
}

void Daemon::CheckTrayIcon() {
	g_log.Print(8, _T("Checking tray icon\n"));
	if (!SendTrayMsg(NIM_MODIFY)) {
		g_log.Print(4, _T("Tray icon not there - reinstalling\n"));
		AddTrayIcon();
	};
}

void Daemon::RemoveTrayIcon() {
	g_log.Print(4, _T("Deleting tray icon\n"));
	SendTrayMsg(NIM_DELETE);
}

bool Daemon::SendTrayMsg(DWORD msg)
{
	m_nid.hWnd = m_hwnd;
	m_nid.cbSize = sizeof(m_nid);
	m_nid.uID = IDR_TRAY;	// never changes after construction
	m_nid.hIcon = LoadIcon(pApp->m_instance, MAKEINTRESOURCE(IDR_TRAY));
	m_nid.uFlags = NIF_ICON | NIF_MESSAGE;
	m_nid.uCallbackMessage = WM_TRAYNOTIFY;
	m_nid.szTip[0] = '\0';
	// Use resource string as tip if there is one
	if (LoadString(pApp->m_instance, IDR_TRAY, m_nid.szTip, sizeof(m_nid.szTip))) {
		m_nid.uFlags |= NIF_TIP;
	}
	if(!m_no_tray_icon) {
		return (bool) (MyShell_NotifyIcon(msg, &m_nid) != 0);
	} else {
		switch (msg) {
			case NIM_ADD:
				// Handled when creating/showing the window minimized
				ShowWindow(m_hwnd, SW_SHOWMINNOACTIVE);
				UpdateWindow(m_hwnd);
				break;

			case NIM_MODIFY:
				// --- Update Icon ---
				if (m_nid.uFlags & NIF_ICON) {
					// NT 3.51 uses the Class Icon (GCL_HICON) to draw the desktop icon
					SetClassLong(m_hwnd, GCL_HICON, (LONG)m_nid.hIcon);

					// Also send WM_SETICON for compatibility if running under NT 4 / Win95 shell
					#ifndef WM_SETICON
					#define WM_SETICON 0x0080
					#endif
					SendMessage(m_hwnd, WM_SETICON, 0 /* ICON_SMALL */, (LPARAM)m_nid.hIcon);
					SendMessage(m_hwnd, WM_SETICON, 1 /* ICON_BIG */,   (LPARAM)m_nid.hIcon);
				}

				// --- Update Tooltip / Status Text ---
				if (m_nid.uFlags & NIF_TIP) {
					// The caption under the minimized icon on NT 3.51 acts as the "tooltip"
					SetWindowText(m_hwnd, m_nid.szTip);
				}

				// --- Force Immediate Desktop Redraw ---
				// Invalidate the non-client area so Program Manager / Desktop updates the icon immediately
				RedrawWindow(
					m_hwnd, 
					NULL, 
					NULL, 
					RDW_INVALIDATE | RDW_ERASE | RDW_FRAME | RDW_UPDATENOW
				);
				break;

			case NIM_DELETE:
				ShowWindow(m_hwnd, SW_HIDE);
		}
		return TRUE;
	}
}

// Process window messages
LRESULT CALLBACK Daemon::WndProc(HWND hwnd, UINT iMsg, WPARAM wParam, LPARAM lParam) {
	// This is a static method, so we don't know which instantiation we're 
	// dealing with. We have stored a pseudo-this in the window user data, 
	// though.
	Daemon *_this = (Daemon *) GetWindowLongPtr(hwnd, GWLP_USERDATA);

	switch (iMsg) {

	case WM_CREATE:
		{
			return 0;
		}

	case WM_SOCKEVENT:
		{
			assert(HIWORD(lParam) == 0);
			// A new socket created by accept might send messages to
			// this procedure. We can ignore them.
			if(wParam != _this->m_sock) {
				return 0;
			}

			switch(lParam) {
			case FD_ACCEPT:
				{
					SOCKET hNewSock;
					hNewSock = accept(_this->m_sock, NULL, NULL);
					WSAAsyncSelect(hNewSock, hwnd, 0, 0);
					unsigned long nbarg = 0;
					ioctlsocket(hNewSock, FIONBIO, &nbarg);

					pApp->NewConnection(hNewSock);
					
					break;
				}
			case FD_READ:
				{
					unsigned long numbytes;
					ioctlsocket(_this->m_sock, FIONREAD, &numbytes);
					recv(_this->m_sock, _this->netbuf, numbytes, 0);
					break;
				}
			case FD_CLOSE:
				g_log.Print(5, _T("Daemon connection closed\n"));
				DestroyWindow(hwnd);
				break;
			}
			
			return 0;
		}
	case WM_COMMAND:
		switch (LOWORD(wParam)) {
		case ID_NEWCONN:
			pApp->NewConnection();
			break;
		case IDC_OPTIONBUTTON:
			pApp->m_options.DoDialog();
			break;
		case ID_CLOSEDAEMON:
			PostQuitMessage(0);
			break;
		case IDD_APP_ABOUT:
			ShowAboutBox();
			break;
		}
		return 0;
	case WM_RBUTTONUP:
	case WM_NCRBUTTONUP:
		if (_this && _this->m_no_tray_icon) {
			POINT pt;
			GetCursorPos(&pt);
			SetForegroundWindow(hwnd);
			TrackPopupMenu(_this->m_hmenu, TPM_RIGHTBUTTON, pt.x, pt.y, 0, hwnd, NULL);
			PostMessage(hwnd, WM_NULL, 0, 0);
			return 0;
		}
		break;

	case WM_LBUTTONDBLCLK:
	case WM_NCLBUTTONDBLCLK:
		if (_this && _this->m_no_tray_icon) {
			// Opening properties dialog on double click
			PostMessage(hwnd, WM_COMMAND, IDC_OPTIONBUTTON, 0);
			return 0;
		}
		break;

	case WM_SYSCOMMAND:
		if (_this && _this->m_no_tray_icon) {
			WORD cmd = LOWORD(wParam) & 0xFFF0;
			if (cmd == SC_RESTORE || cmd == SC_MAXIMIZE) {
				// Intercept window restore to open Properties instead of empty frame
				PostMessage(hwnd, WM_COMMAND, IDC_OPTIONBUTTON, 0);
				return 0;
			}
			// Route custom system menu items to command handler
			if (wParam == ID_NEWCONN ||
				wParam == IDC_OPTIONBUTTON ||
				wParam == IDD_APP_ABOUT ||
				wParam == ID_CLOSEDAEMON) {
				PostMessage(hwnd, WM_COMMAND, wParam, lParam);
				return 0;
			}
		}
		break;
	case WM_TRAYNOTIFY:
		{
			HMENU hSubMenu = GetSubMenu(_this->m_hmenu, 0);
			if (lParam==WM_LBUTTONDBLCLK) {
				// double click: execute first menu item
				::SendMessage(_this->m_nid.hWnd, WM_COMMAND, 
					GetMenuItemID(hSubMenu, 0), 0);
			} else if (lParam==WM_RBUTTONUP || lParam==WM_LBUTTONUP) {
				if (hSubMenu == NULL) { 
					g_log.Print(2, _T("No systray submenu\n"));
					return 0;
				}
				// Make first menu item the default (bold font)
				::SetMenuDefaultItem(hSubMenu, 0, TRUE);
				
				// Display the menu at the current mouse location. There's a "bug"
				// (Microsoft calls it a feature) in Windows 95 that requires calling
				// SetForegroundWindow. To find out more, search for Q135788 in MSDN.
				//
				POINT mouse;
				GetCursorPos(&mouse);
				::SetForegroundWindow(_this->m_nid.hWnd);
				::TrackPopupMenu(hSubMenu, 0, mouse.x, mouse.y, 0,
					_this->m_nid.hWnd, NULL);
				
			} 
			return 0;
		}
	case WM_TIMER:
		_this->CheckTrayIcon();
		return 0;
	case WM_DESTROY:
		PostQuitMessage(0);
		return 0;
	}
	
	return DefWindowProc(hwnd, iMsg, wParam, lParam);
}

Daemon::~Daemon()
{
	KillTimer(m_hwnd, m_timer);
	RemoveTrayIcon();
	DestroyMenu(m_hmenu);
	shutdown(m_sock, SD_BOTH);
	closesocket(m_sock);
}
