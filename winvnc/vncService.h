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


// vncService

// SERVICE-MODE CODE

// This class provides access to service-oriented routines, under both
// Windows NT and Windows 95.  Some routines only operate under one
// OS, others operate under any OS.

class vncService;

#if (!defined(_WINVNC_VNCSERVICE))
#define _WINVNC_VNCSERVICE

#include "stdhdrs.h"

// The NT-specific code wrapper class
class vncService
{
public:
	vncService();

	// SERVICE INSTALL & START FUNCTIONS

	// Routine called by WinMain to cause WinVNC to be installed
	// as a service.
	static int WinVNCServiceMain();

	// Routine to install the WinVNC service on the local machine
	static int InstallService();

	// Routine to remove the WinVNC service from the local machine
	static int RemoveService();

	// SERVICE SUPPORT FUNCTIONS

	// Routine to establish and return the currently logged in user name
	static BOOL CurrentUser(char *buffer, UINT size);

	// Routine to post a message to the currently running WinVNC server
	// to pass it a handle to the current user
	static BOOL PostUserHelperMessage();
	// Routine to process a user helper message
	static BOOL ProcessUserHelperMessage(WPARAM wParam, LPARAM lParam);

	// Routines to establish which OS we're running on
	static BOOL IsWin95();
	static BOOL IsWinNT();
	static DWORD VersionMajor();
	static DWORD VersionMinor();

	// Routine to establish whether the current instance is running
	// as a service or not
	static BOOL RunningAsService();

	// Routine to kill any other running copy of WinVNC
	static BOOL KillRunningCopy();

	// Routine to set the current thread into the given desktop
	static BOOL SelectHDESK(HDESK newdesktop);

	// Routine to set the current thread into the named desktop,
	// or the input desktop if no name is given
	static BOOL SelectDesktop(char *name);

	// Routine to establish whether the current thread desktop is the
	// current user input one
	static BOOL InputDesktopSelected();

	// Routine to fake a CtrlAltDel to winlogon when required.
	// *** This is a nasty little hack...
	static BOOL SimulateCtrlAltDel();

	// Routine to make any currently running version of WinVNC show its
	// Properties dialog, to allow the user to make changes to their settings
	static BOOL ShowProperties();

	// Routine to make any currently running version of WinVNC show the
	// Properties dialog for the default settings, so the user can make changes
	static BOOL ShowDefaultProperties();

	// Routine to make the an already running copy of WinVNC bring up its
	// About box so you can check the version!
	static BOOL ShowAboutBox();

	// Routine to make an already running copy of WinVNC form an outgoing
	// connection to a new VNC client
	static BOOL PostAddNewClient(unsigned long ipaddress);
};

#endif