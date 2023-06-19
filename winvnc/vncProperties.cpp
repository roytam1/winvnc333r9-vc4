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


// vncProperties.cpp

// Implementation of the Properties dialog!

#include "stdhdrs.h"
#include "lmcons.h"
#include "vncService.h"

#include "WinVNC.h"
#include "vncProperties.h"
#include "vncServer.h"
#include "vncPasswd.h"

const char NO_PASSWORD_WARN [] = "WARNING : Running WinVNC without setting a password is "
								"a dangerous security risk!\n"
								"Until you set a password, WinVNC will not accept incoming connections.";
const char NO_OVERRIDE_ERR [] = "This machine has been preconfigured with WinVNC settings, "
								"which cannot be overridden by individual users.  "
								"The preconfigured settings may be modified only by a System Administrator.";
const char NO_PASSWD_NO_OVERRIDE_ERR [] =
								"No password has been set & this machine has been "
								"preconfigured to prevent users from setting their own.\n"
								"You must contact a System Administrator to configure WinVNC properly.";
const char NO_PASSWD_NO_OVERRIDE_WARN [] =
								"WARNING : This machine has been preconfigured to allow un-authenticated\n"
								"connections to be accepted and to prevent users from enabling authentication.";
const char NO_PASSWD_NO_LOGON_WARN [] =
								"WARNING : This machine has no default password set.  WinVNC will present the "
								"Default Properties dialog now to allow one to be entered.";
const char NO_CURRENT_USER_ERR [] = "The WinVNC settings for the current user are unavailable at present.";
const char CANNOT_EDIT_DEFAULT_PREFS [] = "You do not have sufficient priviliges to edit the default local WinVNC settings.";

// Constructor & Destructor
vncProperties::vncProperties()
{
	m_allowproperties = TRUE;
	m_allowshutdown = TRUE;
	m_dlgvisible = FALSE;
	m_usersettings = TRUE;

	char myWorkDir[MAX_PATH];
	if (GetModuleFileName(NULL, myWorkDir, MAX_PATH))
	{
		char* p = strrchr(myWorkDir, '\\');
		if (p == NULL) return;
		*p = '\0';
	}
	strcpy(m_Inifile,"");
	strcat(m_Inifile,myWorkDir);//set the directory
	strcat(m_Inifile,"\\");
	strcat(m_Inifile,"winvnc.ini");
}

vncProperties::~vncProperties()
{
}

// Initialisation
BOOL
vncProperties::Init(vncServer *server)
{
	// Save the server pointer
	m_server = server;
	
	// Load the settings
	Load(TRUE);

	// If the password is empty then always show a dialog
	char passwd[MAXPWLEN];
	m_server->GetPassword(passwd);
	{
	    vncPasswd::ToText plain(passwd);
	    if (strlen(plain) == 0)
			if (!m_allowproperties) {
				if(m_server->AuthRequired()) {
					MessageBox(NULL, NO_PASSWD_NO_OVERRIDE_ERR,
								"WinVNC Error",
								MB_OK | MB_ICONSTOP);
					PostQuitMessage(0);
				} else {
					MessageBox(NULL, NO_PASSWD_NO_OVERRIDE_WARN,
								"WinVNC Error",
								MB_OK | MB_ICONEXCLAMATION);
				}
			} else {
				// If null passwords are not allowed, ensure that one is entered!
				if (m_server->AuthRequired()) {
					char username[UNLEN+1];
					if (!vncService::CurrentUser(username, sizeof(username)))
						return FALSE;
					if (strcmp(username, "") == 0) {
						MessageBox(NULL, NO_PASSWD_NO_LOGON_WARN,
									"WinVNC Error",
									MB_OK | MB_ICONEXCLAMATION);
						Show(TRUE, FALSE);
					} else {
						Show(TRUE, TRUE);
					}
				}
			}
	}

	return TRUE;
}

// Dialog box handling functions
void
vncProperties::Show(BOOL show, BOOL usersettings)
{
	if (show)
	{
		// Now, if the dialog is not already displayed, show it!
		if (!m_dlgvisible)
		{
			log.Print(LL_INTINFO, VNCLOG("show default system Properties\n"));

			// Load in the settings relevant to the user or system
			Load(usersettings);

			for (;;)
			{
				m_returncode_valid = FALSE;

				// Do the dialog box
				int result = DialogBoxParam(hAppInstance,
				    MAKEINTRESOURCE(IDD_PROPERTIES), 
				    NULL,
				    (DLGPROC) DialogProc,
				    (LONG) this);

				if (!m_returncode_valid)
				    result = IDCANCEL;

				log.Print(LL_INTINFO, VNCLOG("dialog result = %d\n"), result);

				if (result == -1)
				{
					// Dialog box failed, so quit
					PostQuitMessage(0);
					return;
				}

				// We're allowed to exit if the password is not empty
				char passwd[MAXPWLEN];
				m_server->GetPassword(passwd);
				{
				    vncPasswd::ToText plain(passwd);
				    if ((strlen(plain) != 0) || !m_server->AuthRequired())
					break;
				}

				log.Print(LL_INTERR, VNCLOG("warning - empty password\n"));

				// The password is empty, so if OK was used then redisplay the box,
				// otherwise, if CANCEL was used, close down WinVNC
				if (result == IDCANCEL)
				{
				    log.Print(LL_INTERR, VNCLOG("no password - QUITTING\n"));
				    PostQuitMessage(0);
				    return;
				}

				// If we reached here then OK was used & there is no password!
				int result2 = MessageBox(NULL, NO_PASSWORD_WARN,
				    "WinVNC Warning", MB_OK | MB_ICONEXCLAMATION);

				omni_thread::sleep(4);
			}

			// Load in all the settings
			Load(TRUE);
		}
	}
}

BOOL CALLBACK
vncProperties::DialogProc(HWND hwnd,
						  UINT uMsg,
						  WPARAM wParam,
						  LPARAM lParam )
{
	// We use the dialog-box's USERDATA to store a _this pointer
	// This is set only once WM_INITDIALOG has been recieved, though!
	vncProperties *_this = (vncProperties *) GetWindowLongPtr(hwnd, GWLP_USERDATA);

	switch (uMsg)
	{

	case WM_INITDIALOG:
		{
			// Retrieve the Dialog box parameter and use it as a pointer
			// to the calling vncProperties object
			SetWindowLongPtr(hwnd, GWLP_USERDATA, lParam);
			_this = (vncProperties *) lParam;

			// Set the dialog box's title to indicate which Properties we're editting
			if (_this->m_usersettings) {
				SetWindowText(hwnd, "WinVNC: Current User Properties");
			} else {
				SetWindowText(hwnd, "WinVNC: Default Local System Properties");
			}

			// Initialise the properties controls
			HWND hConnectSock = GetDlgItem(hwnd, IDC_CONNECT_SOCK);
			SendMessage(hConnectSock,
				BM_SETCHECK,
				_this->m_server->SockConnected(),
				0);

			HWND hConnectCorba = GetDlgItem(hwnd, IDC_CONNECT_CORBA);
			SendMessage(hConnectCorba,
				BM_SETCHECK,
				_this->m_server->CORBAConnected(),
				0);
#if(defined(_CORBA))
			EnableWindow(hConnectCorba, TRUE);
#else
			EnableWindow(hConnectCorba, FALSE);
#endif

			HWND hPortNoAuto = GetDlgItem(hwnd, IDC_PORTNO_AUTO);
			SendMessage(hPortNoAuto,
				BM_SETCHECK,
				_this->m_server->AutoPortSelect(),
				0);
			EnableWindow(hPortNoAuto, _this->m_server->SockConnected());
			
			HWND hPortNo = GetDlgItem(hwnd, IDC_PORTNO);
			SetDlgItemInt(hwnd, IDC_PORTNO, PORT_TO_DISPLAY(_this->m_server->GetPort()), FALSE);
			EnableWindow(hPortNo, _this->m_server->SockConnected()
				&& !_this->m_server->AutoPortSelect());

			HWND hPassword = GetDlgItem(hwnd, IDC_PASSWORD);
			EnableWindow(hPassword, _this->m_server->SockConnected());

			// Get the password
			char passwd[MAXPWLEN];
			_this->m_server->GetPassword(passwd);
			{
			    vncPasswd::ToText plain(passwd);
			    SetDlgItemText(hwnd, IDC_PASSWORD, (const char *) plain);
			}

			// Remote input settings
			HWND hEnableRemoteInputs = GetDlgItem(hwnd, IDC_DISABLE_INPUTS);
			SendMessage(hEnableRemoteInputs,
				BM_SETCHECK,
				!(_this->m_server->RemoteInputsEnabled()),
				0);

			// Local input settings
			HWND hDisableLocalInputs = GetDlgItem(hwnd, IDC_DISABLE_LOCAL_INPUTS);
			SendMessage(hDisableLocalInputs,
				BM_SETCHECK,
				_this->m_server->LocalInputsDisabled(),
				0);

			// Set the polling options
			HWND hPollFullScreen = GetDlgItem(hwnd, IDC_POLL_FULLSCREEN);
			SendMessage(hPollFullScreen,
				BM_SETCHECK,
				_this->m_server->PollFullScreen(),
				0);

			HWND hPollForeground = GetDlgItem(hwnd, IDC_POLL_FOREGROUND);
			SendMessage(hPollForeground,
				BM_SETCHECK,
				_this->m_server->PollForeground(),
				0);

			HWND hPollUnderCursor = GetDlgItem(hwnd, IDC_POLL_UNDER_CURSOR);
			SendMessage(hPollUnderCursor,
				BM_SETCHECK,
				_this->m_server->PollUnderCursor(),
				0);

			HWND hPollConsoleOnly = GetDlgItem(hwnd, IDC_CONSOLE_ONLY);
			SendMessage(hPollConsoleOnly,
				BM_SETCHECK,
				_this->m_server->PollConsoleOnly(),
				0);
			EnableWindow(hPollConsoleOnly,
				_this->m_server->PollUnderCursor() || _this->m_server->PollForeground()
				);

			HWND hPollOnEventOnly = GetDlgItem(hwnd, IDC_ONEVENT_ONLY);
			SendMessage(hPollOnEventOnly,
				BM_SETCHECK,
				_this->m_server->PollOnEventOnly(),
				0);
			EnableWindow(hPollOnEventOnly,
				_this->m_server->PollUnderCursor() || _this->m_server->PollForeground()
				);

			SetForegroundWindow(hwnd);

			_this->m_dlgvisible = TRUE;

			return TRUE;
		}

	case WM_COMMAND:
		switch (LOWORD(wParam))
		{

		case IDOK:
		case IDC_APPLY:
			{
				// Save the password
				char passwd[MAXPWLEN+1];
				if (GetDlgItemText(hwnd, IDC_PASSWORD, (LPSTR) &passwd, MAXPWLEN+1) == 0)
				{
				    vncPasswd::FromClear crypt;
				    _this->m_server->SetPassword(crypt);
				}
				else
				{
				    vncPasswd::FromText crypt(passwd);
				    _this->m_server->SetPassword(crypt);
				}

				// Save the new settings to the server
				HWND hPortNoAuto = GetDlgItem(hwnd, IDC_PORTNO_AUTO);
				_this->m_server->SetAutoPortSelect(
					SendMessage(hPortNoAuto, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				// only save the port number if we're not auto selecting!
				if (!_this->m_server->AutoPortSelect())
				{
					BOOL success;
					UINT portno = GetDlgItemInt(hwnd, IDC_PORTNO, &success, TRUE);
					if (success)
						_this->m_server->SetPort(DISPLAY_TO_PORT(portno));
				}
				
				HWND hConnectSock = GetDlgItem(hwnd, IDC_CONNECT_SOCK);
				_this->m_server->SockConnect(
					SendMessage(hConnectSock, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				HWND hConnectCorba = GetDlgItem(hwnd, IDC_CONNECT_CORBA);
				_this->m_server->CORBAConnect(
					SendMessage(hConnectCorba, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				// Remote input stuff
				HWND hEnableRemoteInputs = GetDlgItem(hwnd, IDC_DISABLE_INPUTS);
				_this->m_server->EnableRemoteInputs(
					SendMessage(hEnableRemoteInputs, BM_GETCHECK, 0, 0) != BST_CHECKED
					);

				// Local input stuff
				HWND hDisableLocalInputs = GetDlgItem(hwnd, IDC_DISABLE_LOCAL_INPUTS);
				_this->m_server->DisableLocalInputs(
					SendMessage(hDisableLocalInputs, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				// Handle the polling stuff
				HWND hPollFullScreen = GetDlgItem(hwnd, IDC_POLL_FULLSCREEN);
				_this->m_server->PollFullScreen(
					SendMessage(hPollFullScreen, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				HWND hPollForeground = GetDlgItem(hwnd, IDC_POLL_FOREGROUND);
				_this->m_server->PollForeground(
					SendMessage(hPollForeground, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				HWND hPollUnderCursor = GetDlgItem(hwnd, IDC_POLL_UNDER_CURSOR);
				_this->m_server->PollUnderCursor(
					SendMessage(hPollUnderCursor, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				HWND hPollConsoleOnly = GetDlgItem(hwnd, IDC_CONSOLE_ONLY);
				_this->m_server->PollConsoleOnly(
					SendMessage(hPollConsoleOnly, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				HWND hPollOnEventOnly = GetDlgItem(hwnd, IDC_ONEVENT_ONLY);
				_this->m_server->PollOnEventOnly(
					SendMessage(hPollOnEventOnly, BM_GETCHECK, 0, 0) == BST_CHECKED
					);

				// And to the registry
				_this->Save();

				// Was ok pressed?
				if (LOWORD(wParam) == IDOK)
				{
					// Yes, so close the dialog
					log.Print(LL_INTINFO, VNCLOG("enddialog (OK)\n"));

					_this->m_returncode_valid = TRUE;

					EndDialog(hwnd, IDOK);
					_this->m_dlgvisible = FALSE;
				}

				return TRUE;
			}

		case IDCANCEL:
			log.Print(LL_INTINFO, VNCLOG("enddialog (CANCEL)\n"));

			_this->m_returncode_valid = TRUE;

			EndDialog(hwnd, IDCANCEL);
			_this->m_dlgvisible = FALSE;
			return TRUE;

		case IDC_CONNECT_SOCK:
			// The user has clicked on the socket connect tickbox
			{
				HWND hConnectSock = GetDlgItem(hwnd, IDC_CONNECT_SOCK);
				BOOL connectsockon =
					(SendMessage(hConnectSock, BM_GETCHECK, 0, 0) == BST_CHECKED);

				HWND hPortNoAuto = GetDlgItem(hwnd, IDC_PORTNO_AUTO);
				EnableWindow(hPortNoAuto, connectsockon);
			
				HWND hPortNo = GetDlgItem(hwnd, IDC_PORTNO);
				EnableWindow(hPortNo, connectsockon
					&& (SendMessage(hPortNoAuto, BM_GETCHECK, 0, 0) != BST_CHECKED));
			
				HWND hPassword = GetDlgItem(hwnd, IDC_PASSWORD);
				EnableWindow(hPassword, connectsockon);
			}
			return TRUE;

		case IDC_POLL_FOREGROUND:
		case IDC_POLL_UNDER_CURSOR:
			// User has clicked on one of the polling mode buttons
			// affected by the pollconsole and pollonevent options
			{
				// Get the poll-mode buttons
				HWND hPollForeground = GetDlgItem(hwnd, IDC_POLL_FOREGROUND);
				HWND hPollUnderCursor = GetDlgItem(hwnd, IDC_POLL_UNDER_CURSOR);

				// Determine whether to enable the modifier options
				BOOL enabled = (SendMessage(hPollForeground, BM_GETCHECK, 0, 0) == BST_CHECKED) ||
					(SendMessage(hPollUnderCursor, BM_GETCHECK, 0, 0) == BST_CHECKED);

				HWND hPollConsoleOnly = GetDlgItem(hwnd, IDC_CONSOLE_ONLY);
				EnableWindow(hPollConsoleOnly, enabled);

				HWND hPollOnEventOnly = GetDlgItem(hwnd, IDC_ONEVENT_ONLY);
				EnableWindow(hPollOnEventOnly, enabled);
			}
			return TRUE;

		case IDC_PORTNO_AUTO:
			// User has toggled the Auto Port Select feature.
			// If this is in use, then we don't allow the Display number field
			// to be modified!
			{
				// Get the auto select button
				HWND hPortNoAuto = GetDlgItem(hwnd, IDC_PORTNO_AUTO);

				// Should the portno field be modifiable?
				BOOL enable = SendMessage(hPortNoAuto, BM_GETCHECK, 0, 0) != BST_CHECKED;

				// Set the state
				HWND hPortNo = GetDlgItem(hwnd, IDC_PORTNO);
				EnableWindow(hPortNo, enable);
			}
			return TRUE;

		}

		break;
	}
	return 0;
}

// Functions to load & save the settings
LONG
vncProperties::LoadInt(LPCSTR key, LPCSTR valname, LONG defval)
{
	return GetPrivateProfileInt(key, valname, defval, m_Inifile);
}

void
vncProperties::LoadPassword(LPCSTR key, char *buffer)
{
	GetPrivateProfileStruct(key,"passwd",buffer,MAXPWLEN,m_Inifile);
}

char *
vncProperties::LoadString(LPCSTR key, LPCSTR keyname)
{
	char *buffer = 0;

	buffer = new char[MAX_PATH];
	GetPrivateProfileString(key,keyname, "",buffer,MAX_PATH,m_Inifile);

	return (char *)buffer;
}

void
vncProperties::Load(BOOL usersettings)
{
	// LOAD THE MACHINE-LEVEL PREFS

	// Logging/debugging prefs
	log.Print(LL_INTINFO, VNCLOG("loading local-only settings\n"));
	log.SetMode(LoadInt("winvnc", "DebugMode", 0));
	log.SetLevel(LoadInt("winvnc", "DebugLevel", 0));

	// Authentication required, loopback allowed, loopbackOnly
	m_server->SetLoopbackOnly(LoadInt("winvnc", "LoopbackOnly", false));
	if (m_server->LoopbackOnly())
		m_server->SetLoopbackOk(true);
	else
		m_server->SetLoopbackOk(LoadInt("winvnc", "AllowLoopback", false));
	m_server->SetAuthRequired(LoadInt("winvnc", "AuthRequired", true));
	m_server->SetConnectPriority(LoadInt("winvnc", "ConnectPriority", 0));
	if (!m_server->LoopbackOnly())
	{
		char *authhosts = LoadString("winvnc", "AuthHosts");
		if (authhosts != 0) {
			m_server->SetAuthHosts(authhosts);
			delete [] authhosts;
		} else {
			m_server->SetAuthHosts(0);
		}
	} else {
		m_server->SetAuthHosts(0);
	}

	// LOAD THE USER PREFERENCES

	// Set the default user prefs
	log.Print(LL_INTINFO, VNCLOG("clearing user settings\n"));
	m_pref_AutoPortSelect=TRUE;
	m_pref_SockConnect=TRUE;
	m_pref_CORBAConn=FALSE;
	{
	    vncPasswd::FromClear crypt;
	    memcpy(m_pref_passwd, crypt, MAXPWLEN);
	}
	m_pref_QuerySetting=2;
	m_pref_QueryTimeout=10;
	m_pref_IdleTimeout=0;
	m_pref_EnableRemoteInputs=TRUE;
	m_pref_DisableLocalInputs=FALSE;
	m_pref_LockSettings=-1;
	m_pref_PollUnderCursor=FALSE;
	m_pref_PollForeground=TRUE;
	m_pref_PollFullScreen=FALSE;
	m_pref_PollConsoleOnly=TRUE;
	m_pref_PollOnEventOnly=FALSE;
	m_pref_RemoveWallpaper=TRUE;
	m_allowshutdown = TRUE;
	m_allowproperties = TRUE;

	// Load the local prefs for this user
	{
		log.Print(LL_INTINFO, VNCLOG("loading DEFAULT local settings\n"));
		LoadUserPrefs();
		m_allowshutdown = LoadInt("winvnc", "AllowShutdown", m_allowshutdown);
		m_allowproperties = LoadInt("winvnc", "AllowProperties", m_allowproperties);
	}

	// Make the loaded settings active..
	ApplyUserPrefs();

	// Note whether we loaded the user settings or just the default system settings
	m_usersettings = usersettings;
}

void
vncProperties::LoadUserPrefs()
{
	// LOAD USER PREFS FROM THE SELECTED KEY

	// Connection prefs
	m_pref_SockConnect=LoadInt("winvnc", "SocketConnect", m_pref_SockConnect);
	m_pref_AutoPortSelect=LoadInt("winvnc", "AutoPortSelect", m_pref_AutoPortSelect);
	m_pref_PortNumber=LoadInt("winvnc", "PortNumber", m_pref_PortNumber);
	m_pref_IdleTimeout=LoadInt("winvnc", "IdleTimeout", m_pref_IdleTimeout);
	
	m_pref_RemoveWallpaper=LoadInt("winvnc", "RemoveWallpaper", m_pref_RemoveWallpaper);

	// Connection querying settings
	m_pref_QuerySetting=LoadInt("winvnc", "QuerySetting", m_pref_QuerySetting);
	m_pref_QueryTimeout=LoadInt("winvnc", "QueryTimeout", m_pref_QueryTimeout);

	// Load the password
	LoadPassword("winvnc", m_pref_passwd);
	
	// CORBA Settings
	m_pref_CORBAConn=LoadInt("winvnc", "CORBAConnect", m_pref_CORBAConn);

	// Remote access prefs
	m_pref_EnableRemoteInputs=LoadInt("winvnc", "InputsEnabled", m_pref_EnableRemoteInputs);
	m_pref_LockSettings=LoadInt("winvnc", "LockSetting", m_pref_LockSettings);
	m_pref_DisableLocalInputs=LoadInt("winvnc", "LocalInputsDisabled", m_pref_DisableLocalInputs);

	// Polling prefs
	m_pref_PollUnderCursor=LoadInt("winvnc", "PollUnderCursor", m_pref_PollUnderCursor);
	m_pref_PollForeground=LoadInt("winvnc", "PollForeground", m_pref_PollForeground);
	m_pref_PollFullScreen=LoadInt("winvnc", "PollFullScreen", m_pref_PollFullScreen);
	m_pref_PollConsoleOnly=LoadInt("winvnc", "OnlyPollConsole", m_pref_PollConsoleOnly);
	m_pref_PollOnEventOnly=LoadInt("winvnc", "OnlyPollOnEvent", m_pref_PollOnEventOnly);
}

void
vncProperties::ApplyUserPrefs()
{
	// APPLY THE CACHED PREFERENCES TO THE SERVER

	// Update the connection querying settings
	m_server->SetQuerySetting(m_pref_QuerySetting);
	m_server->SetQueryTimeout(m_pref_QueryTimeout);
	m_server->SetAutoIdleDisconnectTimeout(m_pref_IdleTimeout);
	m_server->EnableRemoveWallpaper(m_pref_RemoveWallpaper);

	// Is the listening socket closing?
	if (!m_pref_SockConnect)
		m_server->SockConnect(m_pref_SockConnect);

	// Are inputs being disabled?
	if (!m_pref_EnableRemoteInputs)
		m_server->EnableRemoteInputs(m_pref_EnableRemoteInputs);
	if (m_pref_DisableLocalInputs)
		m_server->DisableLocalInputs(m_pref_DisableLocalInputs);

	// Update the password
	m_server->SetPassword(m_pref_passwd);

	// Now change the listening port settings
	m_server->SetAutoPortSelect(m_pref_AutoPortSelect);
	if (!m_pref_AutoPortSelect)
		m_server->SetPort(m_pref_PortNumber);
	m_server->SockConnect(m_pref_SockConnect);
	
	// Set the CORBA connection status
	m_server->CORBAConnect(m_pref_CORBAConn);

	// Remote access prefs
	m_server->EnableRemoteInputs(m_pref_EnableRemoteInputs);
	m_server->SetLockSettings(m_pref_LockSettings);
	m_server->DisableLocalInputs(m_pref_DisableLocalInputs);

	// Polling prefs
	m_server->PollUnderCursor(m_pref_PollUnderCursor);
	m_server->PollForeground(m_pref_PollForeground);
	m_server->PollFullScreen(m_pref_PollFullScreen);
	m_server->PollConsoleOnly(m_pref_PollConsoleOnly);
	m_server->PollOnEventOnly(m_pref_PollOnEventOnly);
}

void
vncProperties::SaveInt(LPCSTR key, LPCSTR valname, LONG val)
{
	char       buf[32];
	wsprintf(buf, "%d", val);
	WritePrivateProfileString(key,valname, buf,m_Inifile);
}

void
vncProperties::SavePassword(LPCSTR key, char *buffer)
{
	WritePrivateProfileStruct(key,"passwd", buffer,MAXPWLEN,m_Inifile);
}

void
vncProperties::Save()
{
	if (!m_allowproperties)
		return;

	// SAVE PER-USER PREFS IF ALLOWED
	SaveUserPrefs();
}

void
vncProperties::SaveUserPrefs()
{
	// SAVE THE PER USER PREFS
	log.Print(LL_INTINFO, VNCLOG("saving current settings to registry\n"));

	// Connection prefs
	SaveInt("winvnc", "SocketConnect", m_server->SockConnected());
	SaveInt("winvnc", "AutoPortSelect", m_server->AutoPortSelect());
	if (!m_server->AutoPortSelect())
		SaveInt("winvnc", "PortNumber", m_server->GetPort());
	SaveInt("winvnc", "InputsEnabled", m_server->RemoteInputsEnabled());
	SaveInt("winvnc", "LocalInputsDisabled", m_server->LocalInputsDisabled());
	SaveInt("winvnc", "IdleTimeout", m_server->AutoIdleDisconnectTimeout());

	// Connection querying settings
	SaveInt("winvnc", "QuerySetting", m_server->QuerySetting());
	SaveInt("winvnc", "QueryTimeout", m_server->QueryTimeout());

	// Save the password
	char passwd[MAXPWLEN];
	m_server->GetPassword(passwd);
	SavePassword("winvnc", passwd);

#if(defined(_CORBA))
	// Don't save the CORBA enabled flag if CORBA is not compiled in!
	SaveInt("winvnc", "CORBAConnect", m_server->CORBAConnected());
#endif

	// Polling prefs
	SaveInt("winvnc", "PollUnderCursor", m_server->PollUnderCursor());
	SaveInt("winvnc", "PollForeground", m_server->PollForeground());
	SaveInt("winvnc", "PollFullScreen", m_server->PollFullScreen());

	SaveInt("winvnc", "OnlyPollConsole", m_server->PollConsoleOnly());
	SaveInt("winvnc", "OnlyPollOnEvent", m_server->PollOnEventOnly());
}
