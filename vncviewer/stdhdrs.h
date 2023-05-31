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

#ifndef _STDHDRS_H
#define _STDHDRS_H

// #define VC_EXTRALEAN
#define STRICT

#include <winsock.h>
#include <windows.h>
#include <stdio.h>
#include <process.h>
#include <assert.h>
#include <crtdbg.h>
#include <locale.h>
#include <time.h>
#include <tchar.h>
#include <windows.h>
#include <io.h>

#if defined(_MSC_VER) && _MSC_VER < 1100
// bool/true/false support
#include <yvals.h>

// winsock.h
#ifndef SD_BOTH
#define SD_BOTH 2
#endif

// winuser.h
#ifndef UOI_USER_SID
#define UOI_USER_SID 4
#endif
#ifndef WM_MOUSEWHEEL
#define WM_MOUSEWHEEL 0x020A
#endif

#endif

#endif
