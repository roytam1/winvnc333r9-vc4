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


// vncKeymap.cpp

// This code originally just mapped between X keysyms and local Windows
// virtual keycodes.  Now it actually does the local-end simulation of
// key presses, to keep this messy code on one place!

#include "vncKeymap.h"

#include "keysymdef.h"
#include "vncService.h"

// Define the keymap structure
typedef struct vncKeymapping_struct {
	UINT wincode;
	UINT Xcode;
} vncKeymapping;

const UINT ignorekeymap[] = {
	XK_Scroll_Lock,
	XK_Caps_Lock,
	XK_Num_Lock
};

const vncKeymapping keymap[] = {
    {'`',		XK_dead_grave},
    {'´',		XK_dead_acute},
    {'~',		XK_dead_tilde},
    {'^',		XK_dead_circumflex},
    {VK_BACK,		XK_BackSpace},
    {VK_TAB,		XK_Tab},
    {VK_CLEAR,		XK_Clear},
    {VK_RETURN,		XK_Return},
    {VK_LSHIFT,		XK_Shift_L},
    {VK_RSHIFT,		XK_Shift_R},
    {VK_LCONTROL,	XK_Control_L},
    {VK_RCONTROL,	XK_Control_R},
    {VK_LMENU,		XK_Alt_L},
    {VK_RMENU,		XK_Alt_R},
    {VK_PAUSE,		XK_Pause},
    {VK_CAPITAL,	XK_Caps_Lock},
    {VK_ESCAPE,		XK_Escape},
    {VK_SPACE,		XK_space},
    {VK_PRIOR,		XK_Page_Up},
    {VK_NEXT,		XK_Page_Down},
    {VK_END,		XK_End},
    {VK_HOME,		XK_Home},
    {VK_LEFT,		XK_Left},
    {VK_UP,		XK_Up},
    {VK_RIGHT,		XK_Right},
    {VK_DOWN,		XK_Down},
    {VK_SELECT,		XK_Select},
    {VK_EXECUTE,	XK_Execute},
    {VK_SNAPSHOT,	XK_Print},
    {VK_INSERT,		XK_Insert},
    {VK_DELETE,		XK_Delete},
    {VK_HELP,		XK_Help},
    {VK_NUMPAD0,	XK_KP_0},
    {VK_NUMPAD1,	XK_KP_1},
    {VK_NUMPAD2,	XK_KP_2},
    {VK_NUMPAD3,	XK_KP_3},
    {VK_NUMPAD4,	XK_KP_4},
    {VK_NUMPAD5,	XK_KP_5},
    {VK_NUMPAD6,	XK_KP_6},
    {VK_NUMPAD7,	XK_KP_7},
    {VK_NUMPAD8,	XK_KP_8},
    {VK_NUMPAD9,	XK_KP_9},
    {VK_SPACE,		XK_KP_Space},
    {VK_TAB,		XK_KP_Tab},
    {VK_RETURN,		XK_KP_Enter},
    {VK_F1,		XK_KP_F1},
    {VK_F2,		XK_KP_F2},
    {VK_F3,		XK_KP_F3},
    {VK_F4,		XK_KP_F4},
    {VK_HOME,		XK_KP_Home},
    {VK_LEFT,		XK_KP_Left},
    {VK_UP,		XK_KP_Up},
    {VK_RIGHT,		XK_KP_Right},
    {VK_DOWN,		XK_KP_Down},
    {VK_PRIOR,		XK_KP_Prior},
    {VK_PRIOR,		XK_KP_Page_Up},
    {VK_NEXT,		XK_KP_Next},
    {VK_NEXT,		XK_KP_Page_Down},
    {VK_END,		XK_KP_End},
    {VK_INSERT,		XK_KP_Insert},
    {VK_DELETE,		XK_KP_Delete},
    {VK_MULTIPLY,	XK_KP_Multiply},
    {VK_ADD,		XK_KP_Add},
    {VK_SEPARATOR,	XK_KP_Separator},
    {VK_SUBTRACT,	XK_KP_Subtract},
    {VK_DECIMAL,	XK_KP_Decimal},
    {VK_DIVIDE,		XK_KP_Divide},
    {VK_F1,		XK_F1},
    {VK_F2,		XK_F2},
    {VK_F3,		XK_F3},
    {VK_F4,		XK_F4},
    {VK_F5,		XK_F5},
    {VK_F6,		XK_F6},
    {VK_F7,		XK_F7},
    {VK_F8,		XK_F8},
    {VK_F9,		XK_F9},
    {VK_F10,		XK_F10},
    {VK_F11,		XK_F11},
    {VK_F12,		XK_F12},
    {VK_F13,		XK_F13},
    {VK_F14,		XK_F14},
    {VK_F15,		XK_F15},
    {VK_F16,		XK_F16},
    {VK_F17,		XK_F17},
    {VK_F18,		XK_F18},
    {VK_F19,		XK_F19},
    {VK_F20,		XK_F20},
    {VK_F21,		XK_F21},
    {VK_F22,		XK_F22},
    {VK_F23,		XK_F23},
    {VK_F24,		XK_F24},
    {VK_NUMLOCK,	XK_Num_Lock},
    {VK_SCROLL,		XK_Scroll_Lock}
};

vncKeymap::vncKeymap()
{
};

void
KeybdEvent(BYTE keycode, DWORD flags)
{
	// Send the desired keyboard event
	keybd_event(keycode, MapVirtualKey(keycode, 0), flags, 0);
}

void
SetShiftState(BYTE key, BOOL down)
{
	BOOL keystate = (GetAsyncKeyState(key) & 0x8000) != 0;

	// This routine sets the specified key to the desired value (up or down)
	if ((keystate && down) || ((!keystate) && (!down)))
		return;

	log.Print(LL_INTINFO,
		VNCLOG("setshiftstate %d - (%s->%s)\n"),
		key, keystate ? "down" : "up",
		down ? "down" : "up");

	// Now send a key event to set the key to the new value
	KeybdEvent(key, down ? 0 : KEYEVENTF_KEYUP);
	keystate = (GetAsyncKeyState(key) & 0x8000) != 0;

	log.Print(LL_INTINFO,
		VNCLOG("new state %d (%s)\n"),
		key, keystate ? "down" : "up");
}

void
vncKeymap::DoXkeysym(CARD32 keysym, BOOL keydown)
{
	int i;

	log.Print(LL_INTINFO, VNCLOG("keysym = %x (%s)\n"), keysym, keydown ? "down" : "up");

	// Cull out some particular keysyms
	for (i=0; i < (sizeof(ignorekeymap) / sizeof(UINT)); i++)
		if (ignorekeymap[i] == keysym)
			return;

	// First just try to map the virtual keycode using our lookup-table
	for (i = 0; i < (sizeof(keymap) / sizeof(vncKeymapping)); i++)
	{
		if (keymap[i].Xcode == keysym)
		{
			UINT virtcode = keymap[i].wincode;

			// *** NT-Only hack
			if (vncService::IsWinNT())
			{
				log.Print(LL_INTINFO, VNCLOG("IsWinNT in keymap\n"));

				// DELETE and DEL are used for control-alt-del commands
				if (keydown && (virtcode == VK_DELETE))
				{
					// *** NB : Under WinNT 3.51 these _always_ return zero, so
					// Ctrl-Alt-Del doesn't work.  No idea why...
					BOOL ctrl = (GetAsyncKeyState(VK_CONTROL) & 0x8000) != 0;
					BOOL alt = (GetAsyncKeyState(VK_MENU) & 0x8000) != 0;
					if (ctrl && alt)
						vncService::SimulateCtrlAltDel();
				}
			}

			// *** Win95-Only hack
			if (vncService::IsWin95())
			{
				// On Windows 95, we have to munge LShift & RShift down to plain Shift:
				switch(virtcode)
				{
				case VK_LSHIFT:
				case VK_RSHIFT:
					virtcode = VK_SHIFT;
					break;
				case VK_LCONTROL:
				case VK_CONTROL:
					virtcode = VK_CONTROL;
					break;
				case VK_LMENU:
				case VK_RMENU:
					virtcode = VK_MENU;
					break;
				};
			}

			// Now simulate the keyboard event
			KeybdEvent((unsigned char) (virtcode & 255), keydown ? 0 : KEYEVENTF_KEYUP);
			return;
		}
	}

	// Otherwise, get the OS to tell us how to simulate it
	SHORT keyval = VkKeyScan((char) (keysym & 255));
	
	// Retrieve the keycode and shift state
	BYTE keycode = LOBYTE(keyval);
	BYTE keymask = HIBYTE(keyval);
	if (keycode == -1)
		return;

	BOOL lshift, rshift;
	BOOL ctrl;
	BOOL alt;

	// Correct the keymask shift state to cope with the capslock state
	// Changed to 'Async' by qsf 27/4/99.
	BOOL capslock = (GetAsyncKeyState(VK_CAPITAL) & 0x8000) != 0;
	keymask = capslock ? keymask ^ 1 : keymask;

	// Are we running on NT?
	if (vncService::IsWinNT())
	{
		// Yes, so the modifier keys come in Left and Right flavours:

		// Toggle shift to the required position
		lshift = (GetAsyncKeyState(VK_LSHIFT) & 0x8000) != 0;
		rshift = (GetAsyncKeyState(VK_RSHIFT) & 0x8000) != 0;

		// NT gets confused if you set the shift state in the wrong order,
		// so now we clear both shift keys and use the generic shift instead.
		SetShiftState(VK_RSHIFT, FALSE);
		SetShiftState(VK_LSHIFT, FALSE);
		SetShiftState(VK_SHIFT, keymask & 1);

		// But only toggle Ctrl & Alt if they aught to be down
		ctrl = (GetAsyncKeyState(VK_LCONTROL) & 0x8000) != 0;
		if (!ctrl) SetShiftState(VK_LCONTROL, keymask & 2);
		alt = (GetAsyncKeyState(VK_LMENU) & 0x8000) != 0;
		if (!alt) SetShiftState(VK_LMENU, keymask & 4);

	}
	else
	{
		// No, so the modifier keys come in only one flavour

		// Toggle shift to the required position
		lshift = (GetAsyncKeyState(VK_SHIFT) & 0x8000) != 0;

		SetShiftState(VK_SHIFT, keymask & 1);
	
		// But only toggle Ctrl & Alt if they aught to be down
		ctrl = (GetAsyncKeyState(VK_CONTROL) & 0x8000) != 0;
		if (!ctrl) SetShiftState(VK_CONTROL, keymask & 2);
		alt = (GetAsyncKeyState(VK_MENU) & 0x8000) != 0;
		if (!alt) SetShiftState(VK_MENU, keymask & 4);
	}

	// Now send the desired keycode
	log.Print(LL_INTINFO, VNCLOG("shift state (%s)\n"), (GetAsyncKeyState(VK_SHIFT) & 0x8000) ? "down" : "up");
	KeybdEvent((unsigned char) (keycode & 255), keydown ? 0 : KEYEVENTF_KEYUP);

	// Are we running on NT?
	if (vncService::IsWinNT())
	{
		// Yes, so reset both Shift keys & the left Control & Alt
		SetShiftState(VK_LSHIFT, lshift);
		SetShiftState(VK_RSHIFT, rshift);
		SetShiftState(VK_LCONTROL, ctrl);
		SetShiftState(VK_LMENU, alt);
	}
	else
	{
		// No, so just reset the single versions
		SetShiftState(VK_SHIFT, lshift);
		SetShiftState(VK_CONTROL, ctrl);
		SetShiftState(VK_MENU, alt);
	}
}

void
vncKeymap::ClearShiftKeys()
{
	if (vncService::IsWinNT())
	{
		// On NT, clear both sets of keys

		// LEFT
		SetShiftState(VK_LSHIFT, FALSE);
		SetShiftState(VK_LCONTROL, FALSE);
		SetShiftState(VK_LMENU, FALSE);

		// RIGHT
		SetShiftState(VK_RSHIFT, FALSE);
		SetShiftState(VK_RCONTROL, FALSE);
		SetShiftState(VK_RMENU, FALSE);
	}
	else
	{
		// Otherwise, we can't distinguish the keys anyway...

		// Clear the shift key states
		SetShiftState(VK_SHIFT, FALSE);
		SetShiftState(VK_CONTROL, FALSE);
		SetShiftState(VK_MENU, FALSE);
	}
}
