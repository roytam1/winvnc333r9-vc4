# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101
# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=omnithread - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to omnithread - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "vncviewer - Win32 Release" && "$(CFG)" !=\
 "vncviewer - Win32 Debug" && "$(CFG)" != "omnithread - Win32 Release" &&\
 "$(CFG)" != "omnithread - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "vncviewer.mak" CFG="omnithread - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "vncviewer - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "vncviewer - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "omnithread - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "omnithread - Win32 Debug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "vncviewer - Win32 Release"

!IF  "$(CFG)" == "vncviewer - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "omnithread - Win32 Release" "$(OUTDIR)\vncviewer.exe"\
 "$(OUTDIR)\vncviewer.bsc"

CLEAN : 
	-@erase "$(INTDIR)\AboutBox.obj"
	-@erase "$(INTDIR)\AboutBox.sbr"
	-@erase "$(INTDIR)\AuthDialog.obj"
	-@erase "$(INTDIR)\AuthDialog.sbr"
	-@erase "$(INTDIR)\ClientConnection.obj"
	-@erase "$(INTDIR)\ClientConnection.sbr"
	-@erase "$(INTDIR)\ClientConnectionClipboard.obj"
	-@erase "$(INTDIR)\ClientConnectionClipboard.sbr"
	-@erase "$(INTDIR)\ClientConnectionCopyRect.obj"
	-@erase "$(INTDIR)\ClientConnectionCopyRect.sbr"
	-@erase "$(INTDIR)\ClientConnectionCoRRE.obj"
	-@erase "$(INTDIR)\ClientConnectionCoRRE.sbr"
	-@erase "$(INTDIR)\ClientConnectionFile.obj"
	-@erase "$(INTDIR)\ClientConnectionFile.sbr"
	-@erase "$(INTDIR)\ClientConnectionFullScreen.obj"
	-@erase "$(INTDIR)\ClientConnectionFullScreen.sbr"
	-@erase "$(INTDIR)\ClientConnectionHextile.obj"
	-@erase "$(INTDIR)\ClientConnectionHextile.sbr"
	-@erase "$(INTDIR)\ClientConnectionRaw.obj"
	-@erase "$(INTDIR)\ClientConnectionRaw.sbr"
	-@erase "$(INTDIR)\ClientConnectionRRE.obj"
	-@erase "$(INTDIR)\ClientConnectionRRE.sbr"
	-@erase "$(INTDIR)\d3des.obj"
	-@erase "$(INTDIR)\d3des.sbr"
	-@erase "$(INTDIR)\Daemon.obj"
	-@erase "$(INTDIR)\Daemon.sbr"
	-@erase "$(INTDIR)\Exception.obj"
	-@erase "$(INTDIR)\Exception.sbr"
	-@erase "$(INTDIR)\Flasher.obj"
	-@erase "$(INTDIR)\Flasher.sbr"
	-@erase "$(INTDIR)\KeyMap.obj"
	-@erase "$(INTDIR)\KeyMap.sbr"
	-@erase "$(INTDIR)\Log.obj"
	-@erase "$(INTDIR)\Log.sbr"
	-@erase "$(INTDIR)\MRU.obj"
	-@erase "$(INTDIR)\MRU.sbr"
	-@erase "$(INTDIR)\SessionDialog.obj"
	-@erase "$(INTDIR)\SessionDialog.sbr"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\stdhdrs.sbr"
	-@erase "$(INTDIR)\vncauth.obj"
	-@erase "$(INTDIR)\vncauth.sbr"
	-@erase "$(INTDIR)\VNCOptions.obj"
	-@erase "$(INTDIR)\VNCOptions.sbr"
	-@erase "$(INTDIR)\vncviewer.obj"
	-@erase "$(INTDIR)\vncviewer.res"
	-@erase "$(INTDIR)\vncviewer.sbr"
	-@erase "$(INTDIR)\VNCviewerApp.obj"
	-@erase "$(INTDIR)\VNCviewerApp.sbr"
	-@erase "$(INTDIR)\VNCviewerApp32.obj"
	-@erase "$(INTDIR)\VNCviewerApp32.sbr"
	-@erase "$(OUTDIR)\vncviewer.bsc"
	-@erase "$(OUTDIR)\vncviewer.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Ox /I "Release/" /c /nologo
# ADD F90 /Ox /FR /I "Release/" /c /nologo
F90_PROJ=/Ox /FR"Release/" /I "Release/" /c /nologo /Fo"Release/" 
F90_OBJS=.\Release/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /GX /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "_WINSTATIC" /D "__WIN32__" /FR /YX /c
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "__NT__" /D "_WINSTATIC" /D "__WIN32__" /FR"$(INTDIR)/"\
 /Fp"$(INTDIR)/vncviewer.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\Release/

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "NDEBUG"
# ADD RSC /l 0x411 /d "NDEBUG"
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/vncviewer.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vncviewer.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\AboutBox.sbr" \
	"$(INTDIR)\AuthDialog.sbr" \
	"$(INTDIR)\ClientConnection.sbr" \
	"$(INTDIR)\ClientConnectionClipboard.sbr" \
	"$(INTDIR)\ClientConnectionCopyRect.sbr" \
	"$(INTDIR)\ClientConnectionCoRRE.sbr" \
	"$(INTDIR)\ClientConnectionFile.sbr" \
	"$(INTDIR)\ClientConnectionFullScreen.sbr" \
	"$(INTDIR)\ClientConnectionHextile.sbr" \
	"$(INTDIR)\ClientConnectionRaw.sbr" \
	"$(INTDIR)\ClientConnectionRRE.sbr" \
	"$(INTDIR)\d3des.sbr" \
	"$(INTDIR)\Daemon.sbr" \
	"$(INTDIR)\Exception.sbr" \
	"$(INTDIR)\Flasher.sbr" \
	"$(INTDIR)\KeyMap.sbr" \
	"$(INTDIR)\Log.sbr" \
	"$(INTDIR)\MRU.sbr" \
	"$(INTDIR)\SessionDialog.sbr" \
	"$(INTDIR)\stdhdrs.sbr" \
	"$(INTDIR)\vncauth.sbr" \
	"$(INTDIR)\VNCOptions.sbr" \
	"$(INTDIR)\vncviewer.sbr" \
	"$(INTDIR)\VNCviewerApp.sbr" \
	"$(INTDIR)\VNCviewerApp32.sbr"

"$(OUTDIR)\vncviewer.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 omnithread/Release/omnithread.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /machine:I386
LINK32_FLAGS=omnithread/Release/omnithread.lib kernel32.lib user32.lib\
 gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib\
 oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo\
 /subsystem:windows /incremental:no /pdb:"$(OUTDIR)/vncviewer.pdb" /machine:I386\
 /out:"$(OUTDIR)/vncviewer.exe" 
LINK32_OBJS= \
	"$(INTDIR)\AboutBox.obj" \
	"$(INTDIR)\AuthDialog.obj" \
	"$(INTDIR)\ClientConnection.obj" \
	"$(INTDIR)\ClientConnectionClipboard.obj" \
	"$(INTDIR)\ClientConnectionCopyRect.obj" \
	"$(INTDIR)\ClientConnectionCoRRE.obj" \
	"$(INTDIR)\ClientConnectionFile.obj" \
	"$(INTDIR)\ClientConnectionFullScreen.obj" \
	"$(INTDIR)\ClientConnectionHextile.obj" \
	"$(INTDIR)\ClientConnectionRaw.obj" \
	"$(INTDIR)\ClientConnectionRRE.obj" \
	"$(INTDIR)\d3des.obj" \
	"$(INTDIR)\Daemon.obj" \
	"$(INTDIR)\Exception.obj" \
	"$(INTDIR)\Flasher.obj" \
	"$(INTDIR)\KeyMap.obj" \
	"$(INTDIR)\Log.obj" \
	"$(INTDIR)\MRU.obj" \
	"$(INTDIR)\SessionDialog.obj" \
	"$(INTDIR)\stdhdrs.obj" \
	"$(INTDIR)\vncauth.obj" \
	"$(INTDIR)\VNCOptions.obj" \
	"$(INTDIR)\vncviewer.obj" \
	"$(INTDIR)\vncviewer.res" \
	"$(INTDIR)\VNCviewerApp.obj" \
	"$(INTDIR)\VNCviewerApp32.obj" \
	".\omnithread\Release\omnithread.lib"

"$(OUTDIR)\vncviewer.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "omnithread - Win32 Debug" "$(OUTDIR)\vncviewer.exe"\
 "$(OUTDIR)\vncviewer.bsc"

CLEAN : 
	-@erase "$(INTDIR)\AboutBox.obj"
	-@erase "$(INTDIR)\AboutBox.sbr"
	-@erase "$(INTDIR)\AuthDialog.obj"
	-@erase "$(INTDIR)\AuthDialog.sbr"
	-@erase "$(INTDIR)\ClientConnection.obj"
	-@erase "$(INTDIR)\ClientConnection.sbr"
	-@erase "$(INTDIR)\ClientConnectionClipboard.obj"
	-@erase "$(INTDIR)\ClientConnectionClipboard.sbr"
	-@erase "$(INTDIR)\ClientConnectionCopyRect.obj"
	-@erase "$(INTDIR)\ClientConnectionCopyRect.sbr"
	-@erase "$(INTDIR)\ClientConnectionCoRRE.obj"
	-@erase "$(INTDIR)\ClientConnectionCoRRE.sbr"
	-@erase "$(INTDIR)\ClientConnectionFile.obj"
	-@erase "$(INTDIR)\ClientConnectionFile.sbr"
	-@erase "$(INTDIR)\ClientConnectionFullScreen.obj"
	-@erase "$(INTDIR)\ClientConnectionFullScreen.sbr"
	-@erase "$(INTDIR)\ClientConnectionHextile.obj"
	-@erase "$(INTDIR)\ClientConnectionHextile.sbr"
	-@erase "$(INTDIR)\ClientConnectionRaw.obj"
	-@erase "$(INTDIR)\ClientConnectionRaw.sbr"
	-@erase "$(INTDIR)\ClientConnectionRRE.obj"
	-@erase "$(INTDIR)\ClientConnectionRRE.sbr"
	-@erase "$(INTDIR)\d3des.obj"
	-@erase "$(INTDIR)\d3des.sbr"
	-@erase "$(INTDIR)\Daemon.obj"
	-@erase "$(INTDIR)\Daemon.sbr"
	-@erase "$(INTDIR)\Exception.obj"
	-@erase "$(INTDIR)\Exception.sbr"
	-@erase "$(INTDIR)\Flasher.obj"
	-@erase "$(INTDIR)\Flasher.sbr"
	-@erase "$(INTDIR)\KeyMap.obj"
	-@erase "$(INTDIR)\KeyMap.sbr"
	-@erase "$(INTDIR)\Log.obj"
	-@erase "$(INTDIR)\Log.sbr"
	-@erase "$(INTDIR)\MRU.obj"
	-@erase "$(INTDIR)\MRU.sbr"
	-@erase "$(INTDIR)\SessionDialog.obj"
	-@erase "$(INTDIR)\SessionDialog.sbr"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\stdhdrs.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\vncauth.obj"
	-@erase "$(INTDIR)\vncauth.sbr"
	-@erase "$(INTDIR)\VNCOptions.obj"
	-@erase "$(INTDIR)\VNCOptions.sbr"
	-@erase "$(INTDIR)\vncviewer.obj"
	-@erase "$(INTDIR)\vncviewer.res"
	-@erase "$(INTDIR)\vncviewer.sbr"
	-@erase "$(INTDIR)\VNCviewerApp.obj"
	-@erase "$(INTDIR)\VNCviewerApp.sbr"
	-@erase "$(INTDIR)\VNCviewerApp32.obj"
	-@erase "$(INTDIR)\VNCviewerApp32.sbr"
	-@erase "$(OUTDIR)\vncviewer.bsc"
	-@erase "$(OUTDIR)\vncviewer.exe"
	-@erase "$(OUTDIR)\vncviewer.ilk"
	-@erase "$(OUTDIR)\vncviewer.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Zi /I "Debug/" /c /nologo
# ADD F90 /FR /Zi /I "Debug/" /c /nologo
F90_PROJ=/FR"Debug/" /Zi /I "Debug/" /c /nologo /Fo"Debug/"\
 /Fd"Debug/vncviewer.pdb" 
F90_OBJS=.\Debug/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "_WINSTATIC" /D "__WIN32__" /FR /YX /c
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__NT__" /D "_WINSTATIC" /D "__WIN32__"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/vncviewer.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "_DEBUG"
# ADD RSC /l 0x411 /d "_DEBUG"
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/vncviewer.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vncviewer.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\AboutBox.sbr" \
	"$(INTDIR)\AuthDialog.sbr" \
	"$(INTDIR)\ClientConnection.sbr" \
	"$(INTDIR)\ClientConnectionClipboard.sbr" \
	"$(INTDIR)\ClientConnectionCopyRect.sbr" \
	"$(INTDIR)\ClientConnectionCoRRE.sbr" \
	"$(INTDIR)\ClientConnectionFile.sbr" \
	"$(INTDIR)\ClientConnectionFullScreen.sbr" \
	"$(INTDIR)\ClientConnectionHextile.sbr" \
	"$(INTDIR)\ClientConnectionRaw.sbr" \
	"$(INTDIR)\ClientConnectionRRE.sbr" \
	"$(INTDIR)\d3des.sbr" \
	"$(INTDIR)\Daemon.sbr" \
	"$(INTDIR)\Exception.sbr" \
	"$(INTDIR)\Flasher.sbr" \
	"$(INTDIR)\KeyMap.sbr" \
	"$(INTDIR)\Log.sbr" \
	"$(INTDIR)\MRU.sbr" \
	"$(INTDIR)\SessionDialog.sbr" \
	"$(INTDIR)\stdhdrs.sbr" \
	"$(INTDIR)\vncauth.sbr" \
	"$(INTDIR)\VNCOptions.sbr" \
	"$(INTDIR)\vncviewer.sbr" \
	"$(INTDIR)\VNCviewerApp.sbr" \
	"$(INTDIR)\VNCviewerApp32.sbr"

"$(OUTDIR)\vncviewer.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 omnithread/Debug/omnithread.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /debug /machine:I386
LINK32_FLAGS=omnithread/Debug/omnithread.lib kernel32.lib user32.lib gdi32.lib\
 winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib\
 uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo\
 /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)/vncviewer.pdb" /debug\
 /machine:I386 /out:"$(OUTDIR)/vncviewer.exe" 
LINK32_OBJS= \
	"$(INTDIR)\AboutBox.obj" \
	"$(INTDIR)\AuthDialog.obj" \
	"$(INTDIR)\ClientConnection.obj" \
	"$(INTDIR)\ClientConnectionClipboard.obj" \
	"$(INTDIR)\ClientConnectionCopyRect.obj" \
	"$(INTDIR)\ClientConnectionCoRRE.obj" \
	"$(INTDIR)\ClientConnectionFile.obj" \
	"$(INTDIR)\ClientConnectionFullScreen.obj" \
	"$(INTDIR)\ClientConnectionHextile.obj" \
	"$(INTDIR)\ClientConnectionRaw.obj" \
	"$(INTDIR)\ClientConnectionRRE.obj" \
	"$(INTDIR)\d3des.obj" \
	"$(INTDIR)\Daemon.obj" \
	"$(INTDIR)\Exception.obj" \
	"$(INTDIR)\Flasher.obj" \
	"$(INTDIR)\KeyMap.obj" \
	"$(INTDIR)\Log.obj" \
	"$(INTDIR)\MRU.obj" \
	"$(INTDIR)\SessionDialog.obj" \
	"$(INTDIR)\stdhdrs.obj" \
	"$(INTDIR)\vncauth.obj" \
	"$(INTDIR)\VNCOptions.obj" \
	"$(INTDIR)\vncviewer.obj" \
	"$(INTDIR)\vncviewer.res" \
	"$(INTDIR)\VNCviewerApp.obj" \
	"$(INTDIR)\VNCviewerApp32.obj" \
	".\omnithread\Debug\omnithread.lib"

"$(OUTDIR)\vncviewer.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "omnithread - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "omnithread\omnithre"
# PROP BASE Intermediate_Dir "omnithread\omnithre"
# PROP BASE Target_Dir "omnithread"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "omnithread\Release"
# PROP Intermediate_Dir "omnithread\Release"
# PROP Target_Dir "omnithread"
OUTDIR=.\omnithread\Release
INTDIR=.\omnithread\Release

ALL : "$(OUTDIR)\omnithread.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(OUTDIR)\omnithread.dll"
	-@erase "$(OUTDIR)\omnithread.exp"
	-@erase "$(OUTDIR)\omnithread.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Ox /I "omnithread\omnithre/" /c /nologo /MT
# ADD F90 /Ox /I "omnithread\Release/" /c /nologo /MT
F90_PROJ=/Ox /I "omnithread\Release/" /c /nologo /MT /Fo"omnithread\Release/" 
F90_OBJS=.\omnithread\Release/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__" /YX /c
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__" /Fp"$(INTDIR)/omnithread.pch"\
 /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\omnithread\Release/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "NDEBUG"
# ADD RSC /l 0x411 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/omnithread.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/omnithread.pdb" /machine:I386 /out:"$(OUTDIR)/omnithread.dll"\
 /implib:"$(OUTDIR)/omnithread.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\omnithread.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "omnithread - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "omnithread\Debug"
# PROP BASE Intermediate_Dir "omnithread\Debug"
# PROP BASE Target_Dir "omnithread"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "omnithread\Debug"
# PROP Intermediate_Dir "omnithread\Debug"
# PROP Target_Dir "omnithread"
OUTDIR=.\omnithread\Debug
INTDIR=.\omnithread\Debug

ALL : "$(OUTDIR)\omnithread.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\omnithread.dll"
	-@erase "$(OUTDIR)\omnithread.exp"
	-@erase "$(OUTDIR)\omnithread.ilk"
	-@erase "$(OUTDIR)\omnithread.lib"
	-@erase "$(OUTDIR)\omnithread.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Zi /I "omnithread\Debug/" /c /nologo /MT
# ADD F90 /Zi /I "omnithread\Debug/" /c /nologo /MT
F90_PROJ=/Zi /I "omnithread\Debug/" /c /nologo /MT /Fo"omnithread\Debug/"\
 /Fd"omnithread\Debug/vncviewer.pdb" 
F90_OBJS=.\omnithread\Debug/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__" /YX /c
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__"\
 /Fp"$(INTDIR)/omnithread.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\omnithread\Debug/
CPP_SBRS=.\.

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "_DEBUG"
# ADD RSC /l 0x411 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/omnithread.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/omnithread.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/omnithread.dll" /implib:"$(OUTDIR)/omnithread.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\omnithread.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

################################################################################
# Begin Target

# Name "vncviewer - Win32 Release"
# Name "vncviewer - Win32 Debug"

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp32.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AboutBox.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AuthDialog.cpp
DEP_CPP_AUTHD=\
	".\AuthDialog.h"\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_AUTHD=\
	".\omnithreadce.h"\
	

"$(INTDIR)\AuthDialog.obj" : $(SOURCE) $(DEP_CPP_AUTHD) "$(INTDIR)"

"$(INTDIR)\AuthDialog.sbr" : $(SOURCE) $(DEP_CPP_AUTHD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\AuthDialog.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnection.cpp
DEP_CPP_CLIEN=\
	".\AboutBox.h"\
	".\AuthDialog.h"\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\MRU.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\SessionDialog.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncauth.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIEN=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnection.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"

"$(INTDIR)\ClientConnection.sbr" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnection.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionClipboard.cpp
DEP_CPP_CLIENT=\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENT=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionClipboard.obj" : $(SOURCE) $(DEP_CPP_CLIENT)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionClipboard.sbr" : $(SOURCE) $(DEP_CPP_CLIENT)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionCopyRect.cpp
DEP_CPP_CLIENTC=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTC=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionCopyRect.obj" : $(SOURCE) $(DEP_CPP_CLIENTC)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionCopyRect.sbr" : $(SOURCE) $(DEP_CPP_CLIENTC)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionCoRRE.cpp
DEP_CPP_CLIENTCO=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCO=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionCoRRE.obj" : $(SOURCE) $(DEP_CPP_CLIENTCO)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionCoRRE.sbr" : $(SOURCE) $(DEP_CPP_CLIENTCO)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionFile.cpp
DEP_CPP_CLIENTCON=\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncauth.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCON=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionFile.obj" : $(SOURCE) $(DEP_CPP_CLIENTCON)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionFile.sbr" : $(SOURCE) $(DEP_CPP_CLIENTCON)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionFullScreen.cpp
DEP_CPP_CLIENTCONN=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONN=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionFullScreen.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONN)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionFullScreen.sbr" : $(SOURCE) $(DEP_CPP_CLIENTCONN)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionHextile.cpp
DEP_CPP_CLIENTCONNE=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONNE=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionHextile.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNE)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionHextile.sbr" : $(SOURCE) $(DEP_CPP_CLIENTCONNE)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionRaw.cpp
DEP_CPP_CLIENTCONNEC=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONNEC=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionRaw.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNEC)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionRaw.sbr" : $(SOURCE) $(DEP_CPP_CLIENTCONNEC)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionRRE.cpp
DEP_CPP_CLIENTCONNECT=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONNECT=\
	".\omnithreadce.h"\
	

"$(INTDIR)\ClientConnectionRRE.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNECT)\
 "$(INTDIR)"

"$(INTDIR)\ClientConnectionRRE.sbr" : $(SOURCE) $(DEP_CPP_CLIENTCONNECT)\
 "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\d3des.c
DEP_CPP_D3DES=\
	".\d3des.h"\
	

"$(INTDIR)\d3des.obj" : $(SOURCE) $(DEP_CPP_D3DES) "$(INTDIR)"

"$(INTDIR)\d3des.sbr" : $(SOURCE) $(DEP_CPP_D3DES) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\d3des.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Daemon.cpp
DEP_CPP_DAEMO=\
	".\AboutBox.h"\
	".\ClientConnection.h"\
	".\Daemon.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_DAEMO=\
	".\omnithreadce.h"\
	

"$(INTDIR)\Daemon.obj" : $(SOURCE) $(DEP_CPP_DAEMO) "$(INTDIR)"

"$(INTDIR)\Daemon.sbr" : $(SOURCE) $(DEP_CPP_DAEMO) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Daemon.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Exception.cpp
DEP_CPP_EXCEP=\
	".\Exception.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	

"$(INTDIR)\Exception.obj" : $(SOURCE) $(DEP_CPP_EXCEP) "$(INTDIR)"

"$(INTDIR)\Exception.sbr" : $(SOURCE) $(DEP_CPP_EXCEP) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Exception.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Flasher.cpp
DEP_CPP_FLASH=\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\Flasher.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_FLASH=\
	".\omnithreadce.h"\
	

"$(INTDIR)\Flasher.obj" : $(SOURCE) $(DEP_CPP_FLASH) "$(INTDIR)"

"$(INTDIR)\Flasher.sbr" : $(SOURCE) $(DEP_CPP_FLASH) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Flasher.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\KeyMap.cpp
DEP_CPP_KEYMA=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_KEYMA=\
	".\omnithreadce.h"\
	

"$(INTDIR)\KeyMap.obj" : $(SOURCE) $(DEP_CPP_KEYMA) "$(INTDIR)"

"$(INTDIR)\KeyMap.sbr" : $(SOURCE) $(DEP_CPP_KEYMA) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\KeyMap.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\keysymdef.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.cpp
DEP_CPP_LOG_C=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	

"$(INTDIR)\Log.obj" : $(SOURCE) $(DEP_CPP_LOG_C) "$(INTDIR)"

"$(INTDIR)\Log.sbr" : $(SOURCE) $(DEP_CPP_LOG_C) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MRU.cpp
DEP_CPP_MRU_C=\
	".\MRU.h"\
	

"$(INTDIR)\MRU.obj" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"

"$(INTDIR)\MRU.sbr" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\MRU.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfb.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfbproto.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SessionDialog.cpp
DEP_CPP_SESSI=\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\MRU.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\SessionDialog.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_SESSI=\
	".\omnithreadce.h"\
	

"$(INTDIR)\SessionDialog.obj" : $(SOURCE) $(DEP_CPP_SESSI) "$(INTDIR)"

"$(INTDIR)\SessionDialog.sbr" : $(SOURCE) $(DEP_CPP_SESSI) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\SessionDialog.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.cpp
DEP_CPP_STDHD=\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	

"$(INTDIR)\stdhdrs.obj" : $(SOURCE) $(DEP_CPP_STDHD) "$(INTDIR)"

"$(INTDIR)\stdhdrs.sbr" : $(SOURCE) $(DEP_CPP_STDHD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.c
DEP_CPP_VNCAU=\
	".\d3des.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncauth.h"\
	

"$(INTDIR)\vncauth.obj" : $(SOURCE) $(DEP_CPP_VNCAU) "$(INTDIR)"

"$(INTDIR)\vncauth.sbr" : $(SOURCE) $(DEP_CPP_VNCAU) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCOptions.cpp
DEP_CPP_VNCOP=\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_VNCOP=\
	".\omnithreadce.h"\
	

"$(INTDIR)\VNCOptions.obj" : $(SOURCE) $(DEP_CPP_VNCOP) "$(INTDIR)"

"$(INTDIR)\VNCOptions.sbr" : $(SOURCE) $(DEP_CPP_VNCOP) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCOptions.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncviewer.cpp
DEP_CPP_VNCVI=\
	".\ClientConnection.h"\
	".\Daemon.h"\
	".\Exception.h"\
	".\Flasher.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\VNCviewerApp32.h"\
	
NODEP_CPP_VNCVI=\
	".\omnithreadce.h"\
	

"$(INTDIR)\vncviewer.obj" : $(SOURCE) $(DEP_CPP_VNCVI) "$(INTDIR)"

"$(INTDIR)\vncviewer.sbr" : $(SOURCE) $(DEP_CPP_VNCVI) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncviewer.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp.cpp
DEP_CPP_VNCVIE=\
	".\ClientConnection.h"\
	".\Exception.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_VNCVIE=\
	".\omnithreadce.h"\
	

"$(INTDIR)\VNCviewerApp.obj" : $(SOURCE) $(DEP_CPP_VNCVIE) "$(INTDIR)"

"$(INTDIR)\VNCviewerApp.sbr" : $(SOURCE) $(DEP_CPP_VNCVIE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp32.cpp
DEP_CPP_VNCVIEW=\
	".\ClientConnection.h"\
	".\Daemon.h"\
	".\Exception.h"\
	".\Flasher.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\VNCviewerApp32.h"\
	
NODEP_CPP_VNCVIEW=\
	".\omnithreadce.h"\
	

"$(INTDIR)\VNCviewerApp32.obj" : $(SOURCE) $(DEP_CPP_VNCVIEW) "$(INTDIR)"

"$(INTDIR)\VNCviewerApp32.sbr" : $(SOURCE) $(DEP_CPP_VNCVIEW) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\AboutBox.cpp
DEP_CPP_ABOUT=\
	".\ClientConnection.h"\
	".\KeyMap.h"\
	".\keysymdef.h"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_ABOUT=\
	".\omnithreadce.h"\
	

"$(INTDIR)\AboutBox.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"

"$(INTDIR)\AboutBox.sbr" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\res\resource.h

!IF  "$(CFG)" == "vncviewer - Win32 Release"

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\res\vncviewer.rc
DEP_RSC_VNCVIEWE=\
	".\res\cursor1.cur"\
	".\res\idr_tray.ico"\
	".\res\nocursor.cur"\
	".\res\vnc.bmp"\
	".\res\vnc32.BMP"\
	".\res\vncviewer.ico"\
	

!IF  "$(CFG)" == "vncviewer - Win32 Release"


"$(INTDIR)\vncviewer.res" : $(SOURCE) $(DEP_RSC_VNCVIEWE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/vncviewer.res" /i "res" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"


"$(INTDIR)\vncviewer.res" : $(SOURCE) $(DEP_RSC_VNCVIEWE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/vncviewer.res" /i "res" /d "_DEBUG" $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Project Dependency

# Project_Dep_Name "omnithread"

!IF  "$(CFG)" == "vncviewer - Win32 Release"

"omnithread - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\vncviewer.mak" CFG="omnithread - Win32 Release" 

!ELSEIF  "$(CFG)" == "vncviewer - Win32 Debug"

"omnithread - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\vncviewer.mak" CFG="omnithread - Win32 Debug" 

!ENDIF 

# End Project Dependency
# End Target
################################################################################
# Begin Target

# Name "omnithread - Win32 Release"
# Name "omnithread - Win32 Debug"

!IF  "$(CFG)" == "omnithread - Win32 Release"

!ELSEIF  "$(CFG)" == "omnithread - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread.h

!IF  "$(CFG)" == "omnithread - Win32 Release"

!ELSEIF  "$(CFG)" == "omnithread - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread\nt.cpp
DEP_CPP_NT_CP=\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	

"$(INTDIR)\nt.obj" : $(SOURCE) $(DEP_CPP_NT_CP) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread\nt.h

!IF  "$(CFG)" == "omnithread - Win32 Release"

!ELSEIF  "$(CFG)" == "omnithread - Win32 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
