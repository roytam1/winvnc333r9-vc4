# Microsoft Developer Studio Generated NMAKE File, Format Version 41001
# ** DO NOT EDIT **

# TARGTYPE "Win32 (PPC) Application" 0x0701
# TARGTYPE "Win32 (PPC) Dynamic-Link Library" 0x0702

!IF "$(CFG)" == ""
CFG=othdppc - Win32 Release
!MESSAGE No configuration specified.  Defaulting to othdppc - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "vncwppc - Win32 Release" && "$(CFG)" !=\
 "vncwppc - Win32 Debug" && "$(CFG)" != "othdppc - Win32 Release" && "$(CFG)" !=\
 "othdppc - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "vncwppc.mak" CFG="othdppc - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "vncwppc - Win32 Release" (based on "Win32 (PPC) Application")
!MESSAGE "vncwppc - Win32 Debug" (based on "Win32 (PPC) Application")
!MESSAGE "othdppc - Win32 Release" (based on\
 "Win32 (PPC) Dynamic-Link Library")
!MESSAGE "othdppc - Win32 Debug" (based on "Win32 (PPC) Dynamic-Link Library")
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
# PROP Target_Last_Scanned "othdppc - Win32 Debug"

!IF  "$(CFG)" == "vncwppc - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "PPCRel"
# PROP BASE Intermediate_Dir "PPCRel"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "PPCRel"
# PROP Intermediate_Dir "PPCRel"
# PROP Target_Dir ""
OUTDIR=.\PPCRel
INTDIR=.\PPCRel

ALL : "othdppc - Win32 Release" "$(OUTDIR)\vncwppc.exe"

CLEAN : 
	-@erase "$(INTDIR)\AboutBox.obj"
	-@erase "$(INTDIR)\AuthDialog.obj"
	-@erase "$(INTDIR)\ClientConnection.obj"
	-@erase "$(INTDIR)\ClientConnectionClipboard.obj"
	-@erase "$(INTDIR)\ClientConnectionCopyRect.obj"
	-@erase "$(INTDIR)\ClientConnectionCoRRE.obj"
	-@erase "$(INTDIR)\ClientConnectionFile.obj"
	-@erase "$(INTDIR)\ClientConnectionFullScreen.obj"
	-@erase "$(INTDIR)\ClientConnectionHextile.obj"
	-@erase "$(INTDIR)\ClientConnectionRaw.obj"
	-@erase "$(INTDIR)\ClientConnectionRRE.obj"
	-@erase "$(INTDIR)\d3des.obj"
	-@erase "$(INTDIR)\Daemon.obj"
	-@erase "$(INTDIR)\Exception.obj"
	-@erase "$(INTDIR)\Flasher.obj"
	-@erase "$(INTDIR)\KeyMap.obj"
	-@erase "$(INTDIR)\Log.obj"
	-@erase "$(INTDIR)\MRU.obj"
	-@erase "$(INTDIR)\SessionDialog.obj"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\vncauth.obj"
	-@erase "$(INTDIR)\VNCOptions.obj"
	-@erase "$(INTDIR)\vncviewer.obj"
	-@erase "$(INTDIR)\vncviewer.res"
	-@erase "$(INTDIR)\VNCviewerApp.obj"
	-@erase "$(INTDIR)\VNCviewerApp32.obj"
	-@erase "$(OUTDIR)\vncwppc.exe"
	-@erase "$(OUTDIR)\vncwppc.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /PPC
# ADD MTL /nologo /D "NDEBUG" /PPC
MTL_PROJ=/nologo /D "NDEBUG" /PPC 
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /Gt0 /QMOb2000 /c
# ADD CPP /nologo /W3 /GX /Zi /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /Gt0 /QMOb2000 /c
CPP_PROJ=/nologo /ML /W3 /GX /Zi /O2 /I "." /I "omnithread" /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL"\
 /Fp"$(INTDIR)/vncwppc.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /Gt0 /QMOb2000\
 /c 
CPP_OBJS=.\PPCRel/
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

RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "NDEBUG"
# ADD RSC /l 0x411 /d "NDEBUG"
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/vncviewer.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vncwppc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:PPC
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /debug /machine:PPC
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows\
 /pdb:"$(OUTDIR)/vncwppc.pdb" /debug /machine:PPC /out:"$(OUTDIR)/vncwppc.exe" 
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
	".\othdppc\PPCRel\othdppc.lib"

"$(OUTDIR)\vncwppc.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "PPCDbg"
# PROP BASE Intermediate_Dir "PPCDbg"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "PPCDbg"
# PROP Intermediate_Dir "PPCDbg"
# PROP Target_Dir ""
OUTDIR=.\PPCDbg
INTDIR=.\PPCDbg

ALL : "othdppc - Win32 Debug" "$(OUTDIR)\vncwppc.exe"

CLEAN : 
	-@erase "$(INTDIR)\AboutBox.obj"
	-@erase "$(INTDIR)\AuthDialog.obj"
	-@erase "$(INTDIR)\ClientConnection.obj"
	-@erase "$(INTDIR)\ClientConnectionClipboard.obj"
	-@erase "$(INTDIR)\ClientConnectionCopyRect.obj"
	-@erase "$(INTDIR)\ClientConnectionCoRRE.obj"
	-@erase "$(INTDIR)\ClientConnectionFile.obj"
	-@erase "$(INTDIR)\ClientConnectionFullScreen.obj"
	-@erase "$(INTDIR)\ClientConnectionHextile.obj"
	-@erase "$(INTDIR)\ClientConnectionRaw.obj"
	-@erase "$(INTDIR)\ClientConnectionRRE.obj"
	-@erase "$(INTDIR)\d3des.obj"
	-@erase "$(INTDIR)\Daemon.obj"
	-@erase "$(INTDIR)\Exception.obj"
	-@erase "$(INTDIR)\Flasher.obj"
	-@erase "$(INTDIR)\KeyMap.obj"
	-@erase "$(INTDIR)\Log.obj"
	-@erase "$(INTDIR)\MRU.obj"
	-@erase "$(INTDIR)\SessionDialog.obj"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\vncauth.obj"
	-@erase "$(INTDIR)\VNCOptions.obj"
	-@erase "$(INTDIR)\vncviewer.obj"
	-@erase "$(INTDIR)\vncviewer.res"
	-@erase "$(INTDIR)\VNCviewerApp.obj"
	-@erase "$(INTDIR)\VNCviewerApp32.obj"
	-@erase "$(OUTDIR)\vncwppc.exe"
	-@erase "$(OUTDIR)\vncwppc.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /PPC
# ADD MTL /nologo /D "_DEBUG" /PPC
MTL_PROJ=/nologo /D "_DEBUG" /PPC 
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /Gt0 /QMOb2000 /c
# ADD CPP /nologo /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /Gt0 /QMOb2000 /c
CPP_PROJ=/nologo /MLd /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL"\
 /Fp"$(INTDIR)/vncwppc.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /Gt0 /QMOb2000\
 /c 
CPP_OBJS=.\PPCDbg/
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

RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "_DEBUG"
# ADD RSC /l 0x411 /d "_DEBUG"
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/vncviewer.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vncwppc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:PPC
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /debug /machine:PPC
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows\
 /pdb:"$(OUTDIR)/vncwppc.pdb" /debug /machine:PPC /out:"$(OUTDIR)/vncwppc.exe" 
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
	".\othdppc\PPCDbg\othdppc.lib"

"$(OUTDIR)\vncwppc.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "othdppc - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "othdppc\PPCRel"
# PROP BASE Intermediate_Dir "othdppc\PPCRel"
# PROP BASE Target_Dir "othdppc"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "othdppc\PPCRel"
# PROP Intermediate_Dir "othdppc\PPCRel"
# PROP Target_Dir "othdppc"
OUTDIR=.\othdppc\PPCRel
INTDIR=.\othdppc\PPCRel

ALL : "$(OUTDIR)\othdppc.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\othdppc.dll"
	-@erase "$(OUTDIR)\othdppc.exp"
	-@erase "$(OUTDIR)\othdppc.lib"
	-@erase "$(OUTDIR)\othdppc.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /PPC
# ADD MTL /nologo /D "NDEBUG" /PPC
MTL_PROJ=/nologo /D "NDEBUG" /PPC 
CPP=cl.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /Gt0 /QMOb2000 /c
# ADD CPP /nologo /MT /W3 /GX /Zi /O2 /I "." /I "omnithread" /I "..\omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /Gt0 /QMOb2000 /c
# SUBTRACT CPP /X
CPP_PROJ=/nologo /MT /W3 /GX /Zi /O2 /I "." /I "omnithread" /I "..\omnithread"\
 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D\
 "_OMNITHREAD_DLL" /Fp"$(INTDIR)/othdppc.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /Gt0 /QMOb2000 /c 
CPP_OBJS=.\othdppc\PPCRel/
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

RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "NDEBUG"
# ADD RSC /l 0x411 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/othdppc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:PPC
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:PPC
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /pdb:"$(OUTDIR)/othdppc.pdb"\
 /debug /machine:PPC /out:"$(OUTDIR)/othdppc.dll"\
 /implib:"$(OUTDIR)/othdppc.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\othdppc.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "othdppc - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "othdppc\PPCDbg"
# PROP BASE Intermediate_Dir "othdppc\PPCDbg"
# PROP BASE Target_Dir "othdppc"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "othdppc\PPCDbg"
# PROP Intermediate_Dir "othdppc\PPCDbg"
# PROP Target_Dir "othdppc"
OUTDIR=.\othdppc\PPCDbg
INTDIR=.\othdppc\PPCDbg

ALL : "$(OUTDIR)\othdppc.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\othdppc.dll"
	-@erase "$(OUTDIR)\othdppc.exp"
	-@erase "$(OUTDIR)\othdppc.lib"
	-@erase "$(OUTDIR)\othdppc.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /PPC
# ADD MTL /nologo /D "_DEBUG" /PPC
MTL_PROJ=/nologo /D "_DEBUG" /PPC 
CPP=cl.exe
# ADD BASE CPP /nologo /MTd /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /Gt0 /QMOb2000 /c
# ADD CPP /nologo /MTd /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /Gt0 /QMOb2000 /c
CPP_PROJ=/nologo /MTd /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL"\
 /Fp"$(INTDIR)/othdppc.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /Gt0 /QMOb2000\
 /c 
CPP_OBJS=.\othdppc\PPCDbg/
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

RSC=rc.exe
# ADD BASE RSC /l 0x411 /d "_DEBUG"
# ADD RSC /l 0x411 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/othdppc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:PPC
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:PPC
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /pdb:"$(OUTDIR)/othdppc.pdb"\
 /debug /machine:PPC /out:"$(OUTDIR)/othdppc.dll"\
 /implib:"$(OUTDIR)/othdppc.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\othdppc.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

################################################################################
# Begin Target

# Name "vncwppc - Win32 Release"
# Name "vncwppc - Win32 Debug"

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

################################################################################
# Begin Project Dependency

# Project_Dep_Name "othdppc"

!IF  "$(CFG)" == "vncwppc - Win32 Release"

"othdppc - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\vncwppc.mak" CFG="othdppc - Win32 Release" 

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

"othdppc - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\vncwppc.mak" CFG="othdppc - Win32 Debug" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Source File

SOURCE=.\YVALS.H

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AboutBox.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\AuthDialog.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnection.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\d3des.c
DEP_CPP_D3DES=\
	".\d3des.h"\
	

"$(INTDIR)\d3des.obj" : $(SOURCE) $(DEP_CPP_D3DES) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\d3des.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Daemon.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Exception.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Flasher.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\KeyMap.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\keysymdef.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MRU.cpp
DEP_CPP_MRU_C=\
	".\MRU.h"\
	

"$(INTDIR)\MRU.obj" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\MRU.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfb.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfbproto.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\SessionDialog.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.cpp
DEP_CPP_STDHD=\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	

"$(INTDIR)\stdhdrs.obj" : $(SOURCE) $(DEP_CPP_STDHD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCOptions.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncviewer.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp32.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

!ENDIF 

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


# End Source File
################################################################################
# Begin Source File

SOURCE=.\res\resource.h

!IF  "$(CFG)" == "vncwppc - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"

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
	

!IF  "$(CFG)" == "vncwppc - Win32 Release"


"$(INTDIR)\vncviewer.res" : $(SOURCE) $(DEP_RSC_VNCVIEWE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/vncviewer.res" /i "res" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "vncwppc - Win32 Debug"


"$(INTDIR)\vncviewer.res" : $(SOURCE) $(DEP_RSC_VNCVIEWE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/vncviewer.res" /i "res" /d "_DEBUG" $(SOURCE)


!ENDIF 

# End Source File
# End Target
################################################################################
# Begin Target

# Name "othdppc - Win32 Release"
# Name "othdppc - Win32 Debug"

!IF  "$(CFG)" == "othdppc - Win32 Release"

!ELSEIF  "$(CFG)" == "othdppc - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread.h

!IF  "$(CFG)" == "othdppc - Win32 Release"

!ELSEIF  "$(CFG)" == "othdppc - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread\nt.h

!IF  "$(CFG)" == "othdppc - Win32 Release"

!ELSEIF  "$(CFG)" == "othdppc - Win32 Debug"

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
# End Target
# End Project
################################################################################
