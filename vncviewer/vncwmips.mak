# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (MIPS) Dynamic-Link Library" 0x0502
# TARGTYPE "Win32 (MIPS) Application" 0x0501

!IF "$(CFG)" == ""
CFG=othdmips - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to othdmips - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "vncwmips - Win32 Release" && "$(CFG)" !=\
 "vncwmips - Win32 Debug" && "$(CFG)" != "othdmips - Win32 Release" && "$(CFG)"\
 != "othdmips - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "vncwmips.mak" CFG="othdmips - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "vncwmips - Win32 Release" (based on "Win32 (MIPS) Application")
!MESSAGE "vncwmips - Win32 Debug" (based on "Win32 (MIPS) Application")
!MESSAGE "othdmips - Win32 Release" (based on\
 "Win32 (MIPS) Dynamic-Link Library")
!MESSAGE "othdmips - Win32 Debug" (based on\
 "Win32 (MIPS) Dynamic-Link Library")
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

!IF  "$(CFG)" == "vncwmips - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "MIPSRel"
# PROP BASE Intermediate_Dir "MIPSRel"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "MIPSRel"
# PROP Intermediate_Dir "MIPSRel"
# PROP Target_Dir ""
OUTDIR=.\MIPSRel
INTDIR=.\MIPSRel

ALL : "othdmips - Win32 Release" ".\MIPSRel\vncwmips.exe"

CLEAN : 
	-@erase ".\MIPSRel\AboutBox.obj"
	-@erase ".\MIPSRel\AuthDialog.obj"
	-@erase ".\MIPSRel\ClientConnection.obj"
	-@erase ".\MIPSRel\ClientConnectionClipboard.obj"
	-@erase ".\MIPSRel\ClientConnectionCopyRect.obj"
	-@erase ".\MIPSRel\ClientConnectionCoRRE.obj"
	-@erase ".\MIPSRel\ClientConnectionFile.obj"
	-@erase ".\MIPSRel\ClientConnectionFullScreen.obj"
	-@erase ".\MIPSRel\ClientConnectionHextile.obj"
	-@erase ".\MIPSRel\ClientConnectionRaw.obj"
	-@erase ".\MIPSRel\ClientConnectionRRE.obj"
	-@erase ".\MIPSRel\d3des.obj"
	-@erase ".\MIPSRel\Daemon.obj"
	-@erase ".\MIPSRel\Exception.obj"
	-@erase ".\MIPSRel\Flasher.obj"
	-@erase ".\MIPSRel\KeyMap.obj"
	-@erase ".\MIPSRel\Log.obj"
	-@erase ".\MIPSRel\MRU.obj"
	-@erase ".\MIPSRel\SessionDialog.obj"
	-@erase ".\MIPSRel\stdhdrs.obj"
	-@erase ".\MIPSRel\vncauth.obj"
	-@erase ".\MIPSRel\VNCOptions.obj"
	-@erase ".\MIPSRel\vncviewer.obj"
	-@erase ".\MIPSRel\vncviewer.res"
	-@erase ".\MIPSRel\VNCviewerApp.obj"
	-@erase ".\MIPSRel\VNCviewerApp32.obj"
	-@erase ".\MIPSRel\vncwmips.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /mips
# ADD MTL /nologo /D "NDEBUG" /mips
MTL_PROJ=/nologo /D "NDEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /c
CPP_PROJ=/nologo /ML /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "omnithread" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D\
 "_OMNITHREAD_DLL" /Fp"$(INTDIR)/vncwmips.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\MIPSRel/
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
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/vncwmips.pdb" /machine:MIPS /out:"$(OUTDIR)/vncwmips.exe" 
LINK32_OBJS= \
	".\MIPSRel\AboutBox.obj" \
	".\MIPSRel\AuthDialog.obj" \
	".\MIPSRel\ClientConnection.obj" \
	".\MIPSRel\ClientConnectionClipboard.obj" \
	".\MIPSRel\ClientConnectionCopyRect.obj" \
	".\MIPSRel\ClientConnectionCoRRE.obj" \
	".\MIPSRel\ClientConnectionFile.obj" \
	".\MIPSRel\ClientConnectionFullScreen.obj" \
	".\MIPSRel\ClientConnectionHextile.obj" \
	".\MIPSRel\ClientConnectionRaw.obj" \
	".\MIPSRel\ClientConnectionRRE.obj" \
	".\MIPSRel\d3des.obj" \
	".\MIPSRel\Daemon.obj" \
	".\MIPSRel\Exception.obj" \
	".\MIPSRel\Flasher.obj" \
	".\MIPSRel\KeyMap.obj" \
	".\MIPSRel\Log.obj" \
	".\MIPSRel\MRU.obj" \
	".\MIPSRel\SessionDialog.obj" \
	".\MIPSRel\stdhdrs.obj" \
	".\MIPSRel\vncauth.obj" \
	".\MIPSRel\VNCOptions.obj" \
	".\MIPSRel\vncviewer.obj" \
	".\MIPSRel\vncviewer.res" \
	".\MIPSRel\VNCviewerApp.obj" \
	".\MIPSRel\VNCviewerApp32.obj" \
	".\othdmips\MIPSRel\othdmips.lib"

".\MIPSRel\vncwmips.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vncwmips.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "MIPSDbg"
# PROP BASE Intermediate_Dir "MIPSDbg"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "MIPSDbg"
# PROP Intermediate_Dir "MIPSDbg"
# PROP Target_Dir ""
OUTDIR=.\MIPSDbg
INTDIR=.\MIPSDbg

ALL : "othdmips - Win32 Debug" ".\MIPSDbg\vncwmips.exe"

CLEAN : 
	-@erase ".\MIPSDbg\AboutBox.obj"
	-@erase ".\MIPSDbg\AuthDialog.obj"
	-@erase ".\MIPSDbg\ClientConnection.obj"
	-@erase ".\MIPSDbg\ClientConnectionClipboard.obj"
	-@erase ".\MIPSDbg\ClientConnectionCopyRect.obj"
	-@erase ".\MIPSDbg\ClientConnectionCoRRE.obj"
	-@erase ".\MIPSDbg\ClientConnectionFile.obj"
	-@erase ".\MIPSDbg\ClientConnectionFullScreen.obj"
	-@erase ".\MIPSDbg\ClientConnectionHextile.obj"
	-@erase ".\MIPSDbg\ClientConnectionRaw.obj"
	-@erase ".\MIPSDbg\ClientConnectionRRE.obj"
	-@erase ".\MIPSDbg\d3des.obj"
	-@erase ".\MIPSDbg\Daemon.obj"
	-@erase ".\MIPSDbg\Exception.obj"
	-@erase ".\MIPSDbg\Flasher.obj"
	-@erase ".\MIPSDbg\KeyMap.obj"
	-@erase ".\MIPSDbg\Log.obj"
	-@erase ".\MIPSDbg\MRU.obj"
	-@erase ".\MIPSDbg\SessionDialog.obj"
	-@erase ".\MIPSDbg\stdhdrs.obj"
	-@erase ".\MIPSDbg\vc40.pdb"
	-@erase ".\MIPSDbg\vncauth.obj"
	-@erase ".\MIPSDbg\VNCOptions.obj"
	-@erase ".\MIPSDbg\vncviewer.obj"
	-@erase ".\MIPSDbg\vncviewer.res"
	-@erase ".\MIPSDbg\VNCviewerApp.obj"
	-@erase ".\MIPSDbg\VNCviewerApp32.obj"
	-@erase ".\MIPSDbg\vncwmips.exe"
	-@erase ".\MIPSDbg\vncwmips.ilk"
	-@erase ".\MIPSDbg\vncwmips.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /mips
# ADD MTL /nologo /D "_DEBUG" /mips
MTL_PROJ=/nologo /D "_DEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /c
CPP_PROJ=/nologo /MLd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "omnithread" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D\
 "_OMNITHREAD_DLL" /Fp"$(INTDIR)/vncwmips.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\MIPSDbg/
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
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /debug /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib winmm.lib /nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/vncwmips.pdb" /debug /machine:MIPS\
 /out:"$(OUTDIR)/vncwmips.exe" 
LINK32_OBJS= \
	".\MIPSDbg\AboutBox.obj" \
	".\MIPSDbg\AuthDialog.obj" \
	".\MIPSDbg\ClientConnection.obj" \
	".\MIPSDbg\ClientConnectionClipboard.obj" \
	".\MIPSDbg\ClientConnectionCopyRect.obj" \
	".\MIPSDbg\ClientConnectionCoRRE.obj" \
	".\MIPSDbg\ClientConnectionFile.obj" \
	".\MIPSDbg\ClientConnectionFullScreen.obj" \
	".\MIPSDbg\ClientConnectionHextile.obj" \
	".\MIPSDbg\ClientConnectionRaw.obj" \
	".\MIPSDbg\ClientConnectionRRE.obj" \
	".\MIPSDbg\d3des.obj" \
	".\MIPSDbg\Daemon.obj" \
	".\MIPSDbg\Exception.obj" \
	".\MIPSDbg\Flasher.obj" \
	".\MIPSDbg\KeyMap.obj" \
	".\MIPSDbg\Log.obj" \
	".\MIPSDbg\MRU.obj" \
	".\MIPSDbg\SessionDialog.obj" \
	".\MIPSDbg\stdhdrs.obj" \
	".\MIPSDbg\vncauth.obj" \
	".\MIPSDbg\VNCOptions.obj" \
	".\MIPSDbg\vncviewer.obj" \
	".\MIPSDbg\vncviewer.res" \
	".\MIPSDbg\VNCviewerApp.obj" \
	".\MIPSDbg\VNCviewerApp32.obj" \
	".\othdmips\MIPSDbg\othdmips.lib"

".\MIPSDbg\vncwmips.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vncwmips.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "othdmips - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "othdmips\MIPSRel"
# PROP BASE Intermediate_Dir "othdmips\MIPSRel"
# PROP BASE Target_Dir "othdmips"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "othdmips\MIPSRel"
# PROP Intermediate_Dir "othdmips\MIPSRel"
# PROP Target_Dir "othdmips"
OUTDIR=.\othdmips\MIPSRel
INTDIR=.\othdmips\MIPSRel

ALL : ".\othdmips\MIPSRel\othdmips.dll"

CLEAN : 
	-@erase ".\othdmips\MIPSRel\nt.obj"
	-@erase ".\othdmips\MIPSRel\othdmips.dll"
	-@erase ".\othdmips\MIPSRel\othdmips.exp"
	-@erase ".\othdmips\MIPSRel\othdmips.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /mips
# ADD MTL /nologo /D "NDEBUG" /mips
MTL_PROJ=/nologo /D "NDEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /c
CPP_PROJ=/nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "omnithread" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D\
 "_OMNITHREAD_DLL" /Fp"$(INTDIR)/othdmips.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\othdmips\MIPSRel/
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
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/othdmips.pdb" /machine:MIPS /out:"$(OUTDIR)/othdmips.dll"\
 /implib:"$(OUTDIR)/othdmips.lib" 
LINK32_OBJS= \
	".\othdmips\MIPSRel\nt.obj"

".\othdmips\MIPSRel\othdmips.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/othdmips.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "othdmips - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "othdmips\MIPSDbg"
# PROP BASE Intermediate_Dir "othdmips\MIPSDbg"
# PROP BASE Target_Dir "othdmips"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "othdmips\MIPSDbg"
# PROP Intermediate_Dir "othdmips\MIPSDbg"
# PROP Target_Dir "othdmips"
OUTDIR=.\othdmips\MIPSDbg
INTDIR=.\othdmips\MIPSDbg

ALL : ".\othdmips\MIPSDbg\othdmips.dll"

CLEAN : 
	-@erase ".\othdmips\MIPSDbg\nt.obj"
	-@erase ".\othdmips\MIPSDbg\othdmips.dll"
	-@erase ".\othdmips\MIPSDbg\othdmips.exp"
	-@erase ".\othdmips\MIPSDbg\othdmips.ilk"
	-@erase ".\othdmips\MIPSDbg\othdmips.lib"
	-@erase ".\othdmips\MIPSDbg\othdmips.pdb"
	-@erase ".\othdmips\MIPSDbg\vc40.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /mips
# ADD MTL /nologo /D "_DEBUG" /mips
MTL_PROJ=/nologo /D "_DEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D "_OMNITHREAD_DLL" /YX /c
CPP_PROJ=/nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "omnithread" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__NT__" /D "__WIN32__" /D\
 "_OMNITHREAD_DLL" /Fp"$(INTDIR)/othdmips.pch" /YX /Fo"$(INTDIR)/"\
 /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\othdmips\MIPSDbg/
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
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/othdmips.pdb" /debug /machine:MIPS\
 /out:"$(OUTDIR)/othdmips.dll" /implib:"$(OUTDIR)/othdmips.lib" 
LINK32_OBJS= \
	".\othdmips\MIPSDbg\nt.obj"

".\othdmips\MIPSDbg\othdmips.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/othdmips.bsc" 
BSC32_SBRS= \
	

!ENDIF 

################################################################################
# Begin Target

# Name "vncwmips - Win32 Release"
# Name "vncwmips - Win32 Debug"

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

################################################################################
# Begin Project Dependency

# Project_Dep_Name "othdmips"

!IF  "$(CFG)" == "vncwmips - Win32 Debug"

"othdmips - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\vncwmips.mak" CFG="othdmips - Win32 Debug" 

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Release"

"othdmips - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\vncwmips.mak" CFG="othdmips - Win32 Release" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Source File

SOURCE=.\YVALS.H

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AboutBox.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AuthDialog.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_AUTHD=\
	".\omnithreadce.h"\
	

".\MIPSRel\AuthDialog.obj" : $(SOURCE) $(DEP_CPP_AUTHD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_AUTHD=\
	".\omnithreadce.h"\
	

".\MIPSDbg\AuthDialog.obj" : $(SOURCE) $(DEP_CPP_AUTHD) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AuthDialog.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnection.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\vncauth.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIEN=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnection.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\vncauth.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIEN=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnection.obj" : $(SOURCE) $(DEP_CPP_CLIEN) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnection.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionClipboard.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENT=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionClipboard.obj" : $(SOURCE) $(DEP_CPP_CLIENT)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENT=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionClipboard.obj" : $(SOURCE) $(DEP_CPP_CLIENT)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionCopyRect.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENTC=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionCopyRect.obj" : $(SOURCE) $(DEP_CPP_CLIENTC)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTC=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionCopyRect.obj" : $(SOURCE) $(DEP_CPP_CLIENTC)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionCoRRE.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENTCO=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionCoRRE.obj" : $(SOURCE) $(DEP_CPP_CLIENTCO)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCO=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionCoRRE.obj" : $(SOURCE) $(DEP_CPP_CLIENTCO)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionFile.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\vncauth.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENTCON=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionFile.obj" : $(SOURCE) $(DEP_CPP_CLIENTCON)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\vncauth.h"\
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCON=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionFile.obj" : $(SOURCE) $(DEP_CPP_CLIENTCON)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionFullScreen.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENTCONN=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionFullScreen.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONN)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONN=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionFullScreen.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONN)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionHextile.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENTCONNE=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionHextile.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNE)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONNE=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionHextile.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNE)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionRaw.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENTCONNEC=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionRaw.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNEC)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONNEC=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionRaw.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNEC)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ClientConnectionRRE.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_CLIENTCONNECT=\
	".\omnithreadce.h"\
	

".\MIPSRel\ClientConnectionRRE.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNECT)\
 "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_CLIENTCONNECT=\
	".\omnithreadce.h"\
	

".\MIPSDbg\ClientConnectionRRE.obj" : $(SOURCE) $(DEP_CPP_CLIENTCONNECT)\
 "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\d3des.c

!IF  "$(CFG)" == "vncwmips - Win32 Release"

DEP_CPP_D3DES=\
	".\d3des.h"\
	

".\MIPSRel\d3des.obj" : $(SOURCE) $(DEP_CPP_D3DES) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

DEP_CPP_D3DES=\
	".\d3des.h"\
	

".\MIPSDbg\d3des.obj" : $(SOURCE) $(DEP_CPP_D3DES) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\d3des.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Daemon.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_DAEMO=\
	".\omnithreadce.h"\
	

".\MIPSRel\Daemon.obj" : $(SOURCE) $(DEP_CPP_DAEMO) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_DAEMO=\
	".\omnithreadce.h"\
	

".\MIPSDbg\Daemon.obj" : $(SOURCE) $(DEP_CPP_DAEMO) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Daemon.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Exception.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

DEP_CPP_EXCEP=\
	".\Exception.h"\
	".\stdhdrs.h"\
	".\yvals.h"\
	

".\MIPSRel\Exception.obj" : $(SOURCE) $(DEP_CPP_EXCEP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

DEP_CPP_EXCEP=\
	".\Exception.h"\
	".\stdhdrs.h"\
	

".\MIPSDbg\Exception.obj" : $(SOURCE) $(DEP_CPP_EXCEP) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Exception.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Flasher.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_FLASH=\
	".\omnithreadce.h"\
	

".\MIPSRel\Flasher.obj" : $(SOURCE) $(DEP_CPP_FLASH) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_FLASH=\
	".\omnithreadce.h"\
	

".\MIPSDbg\Flasher.obj" : $(SOURCE) $(DEP_CPP_FLASH) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Flasher.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\KeyMap.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_KEYMA=\
	".\omnithreadce.h"\
	

".\MIPSRel\KeyMap.obj" : $(SOURCE) $(DEP_CPP_KEYMA) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_KEYMA=\
	".\omnithreadce.h"\
	

".\MIPSDbg\KeyMap.obj" : $(SOURCE) $(DEP_CPP_KEYMA) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\KeyMap.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\keysymdef.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

DEP_CPP_LOG_C=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\yvals.h"\
	

".\MIPSRel\Log.obj" : $(SOURCE) $(DEP_CPP_LOG_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

DEP_CPP_LOG_C=\
	".\Log.h"\
	".\stdhdrs.h"\
	

".\MIPSDbg\Log.obj" : $(SOURCE) $(DEP_CPP_LOG_C) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MRU.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

DEP_CPP_MRU_C=\
	".\MRU.h"\
	

".\MIPSRel\MRU.obj" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

DEP_CPP_MRU_C=\
	".\MRU.h"\
	

".\MIPSDbg\MRU.obj" : $(SOURCE) $(DEP_CPP_MRU_C) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MRU.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfb.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfbproto.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SessionDialog.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_SESSI=\
	".\omnithreadce.h"\
	

".\MIPSRel\SessionDialog.obj" : $(SOURCE) $(DEP_CPP_SESSI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_SESSI=\
	".\omnithreadce.h"\
	

".\MIPSDbg\SessionDialog.obj" : $(SOURCE) $(DEP_CPP_SESSI) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SessionDialog.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

DEP_CPP_STDHD=\
	".\stdhdrs.h"\
	".\yvals.h"\
	

".\MIPSRel\stdhdrs.obj" : $(SOURCE) $(DEP_CPP_STDHD) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

DEP_CPP_STDHD=\
	".\stdhdrs.h"\
	

".\MIPSDbg\stdhdrs.obj" : $(SOURCE) $(DEP_CPP_STDHD) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.c

!IF  "$(CFG)" == "vncwmips - Win32 Release"

DEP_CPP_VNCAU=\
	".\d3des.h"\
	".\stdhdrs.h"\
	".\vncauth.h"\
	".\yvals.h"\
	

".\MIPSRel\vncauth.obj" : $(SOURCE) $(DEP_CPP_VNCAU) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

DEP_CPP_VNCAU=\
	".\d3des.h"\
	".\stdhdrs.h"\
	".\vncauth.h"\
	

".\MIPSDbg\vncauth.obj" : $(SOURCE) $(DEP_CPP_VNCAU) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCOptions.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_VNCOP=\
	".\omnithreadce.h"\
	

".\MIPSRel\VNCOptions.obj" : $(SOURCE) $(DEP_CPP_VNCOP) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_VNCOP=\
	".\omnithreadce.h"\
	

".\MIPSDbg\VNCOptions.obj" : $(SOURCE) $(DEP_CPP_VNCOP) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCOptions.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncviewer.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\VNCviewerApp32.h"\
	".\yvals.h"\
	
NODEP_CPP_VNCVI=\
	".\omnithread.h"\
	".\omnithreadce.h"\
	

".\MIPSRel\vncviewer.obj" : $(SOURCE) $(DEP_CPP_VNCVI) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\VNCviewerApp32.h"\
	
NODEP_CPP_VNCVI=\
	".\omnithread.h"\
	".\omnithreadce.h"\
	

".\MIPSDbg\vncviewer.obj" : $(SOURCE) $(DEP_CPP_VNCVI) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncviewer.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_VNCVIE=\
	".\omnithreadce.h"\
	

".\MIPSRel\VNCviewerApp.obj" : $(SOURCE) $(DEP_CPP_VNCVIE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_VNCVIE=\
	".\omnithreadce.h"\
	

".\MIPSDbg\VNCviewerApp.obj" : $(SOURCE) $(DEP_CPP_VNCVIE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp32.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\VNCviewerApp32.h"\
	".\yvals.h"\
	
NODEP_CPP_VNCVIEW=\
	".\omnithreadce.h"\
	

".\MIPSRel\VNCviewerApp32.obj" : $(SOURCE) $(DEP_CPP_VNCVIEW) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\VNCviewerApp32.h"\
	
NODEP_CPP_VNCVIEW=\
	".\omnithreadce.h"\
	

".\MIPSDbg\VNCviewerApp32.obj" : $(SOURCE) $(DEP_CPP_VNCVIEW) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCviewerApp32.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AboutBox.cpp

!IF  "$(CFG)" == "vncwmips - Win32 Release"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	".\yvals.h"\
	
NODEP_CPP_ABOUT=\
	".\omnithreadce.h"\
	

".\MIPSRel\AboutBox.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

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
	".\VNCOptions.h"\
	".\vncviewer.h"\
	".\VNCviewerApp.h"\
	
NODEP_CPP_ABOUT=\
	".\omnithreadce.h"\
	

".\MIPSDbg\AboutBox.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\res\resource.h

!IF  "$(CFG)" == "vncwmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\res\vncviewer.rc

!IF  "$(CFG)" == "vncwmips - Win32 Release"

DEP_RSC_VNCVIEWE=\
	".\res\cursor1.cur"\
	".\res\idr_tray.ico"\
	".\res\nocursor.cur"\
	".\res\vnc.bmp"\
	".\res\vnc32.BMP"\
	".\res\vncviewer.ico"\
	

".\MIPSRel\vncviewer.res" : $(SOURCE) $(DEP_RSC_VNCVIEWE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/vncviewer.res" /i "res" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "vncwmips - Win32 Debug"

DEP_RSC_VNCVIEWE=\
	".\res\cursor1.cur"\
	".\res\idr_tray.ico"\
	".\res\nocursor.cur"\
	".\res\vnc.bmp"\
	".\res\vnc32.BMP"\
	".\res\vncviewer.ico"\
	

".\MIPSDbg\vncviewer.res" : $(SOURCE) $(DEP_RSC_VNCVIEWE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/vncviewer.res" /i "res" /d "_DEBUG" $(SOURCE)


!ENDIF 

# End Source File
# End Target
################################################################################
# Begin Target

# Name "othdmips - Win32 Release"
# Name "othdmips - Win32 Debug"

!IF  "$(CFG)" == "othdmips - Win32 Release"

!ELSEIF  "$(CFG)" == "othdmips - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread.h

!IF  "$(CFG)" == "othdmips - Win32 Release"

!ELSEIF  "$(CFG)" == "othdmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread\nt.cpp

!IF  "$(CFG)" == "othdmips - Win32 Release"


".\othdmips\MIPSRel\nt.obj" : $(SOURCE) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "othdmips - Win32 Debug"


".\othdmips\MIPSDbg\nt.obj" : $(SOURCE) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread\nt.h

!IF  "$(CFG)" == "othdmips - Win32 Release"

!ELSEIF  "$(CFG)" == "othdmips - Win32 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
