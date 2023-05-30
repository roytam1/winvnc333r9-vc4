# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (MIPS) Dynamic-Link Library" 0x0502
# TARGTYPE "Win32 (MIPS) Application" 0x0501

!IF "$(CFG)" == ""
CFG=vnchmips - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to vnchmips - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "wvncmips - Win32 Release" && "$(CFG)" !=\
 "wvncmips - Win32 Debug" && "$(CFG)" != "othdmips - Win32 Release" && "$(CFG)"\
 != "othdmips - Win32 Debug" && "$(CFG)" != "vnchmips - Win32 Release" &&\
 "$(CFG)" != "vnchmips - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "wvncmips.mak" CFG="vnchmips - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "wvncmips - Win32 Release" (based on "Win32 (MIPS) Application")
!MESSAGE "wvncmips - Win32 Debug" (based on "Win32 (MIPS) Application")
!MESSAGE "othdmips - Win32 Release" (based on\
 "Win32 (MIPS) Dynamic-Link Library")
!MESSAGE "othdmips - Win32 Debug" (based on\
 "Win32 (MIPS) Dynamic-Link Library")
!MESSAGE "vnchmips - Win32 Release" (based on\
 "Win32 (MIPS) Dynamic-Link Library")
!MESSAGE "vnchmips - Win32 Debug" (based on\
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

!IF  "$(CFG)" == "wvncmips - Win32 Release"

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

ALL : "vnchmips - Win32 Release" "othdmips - Win32 Release"\
 "$(OUTDIR)\wvncmips.exe"

CLEAN : 
	-@erase "$(INTDIR)\d3des.obj"
	-@erase "$(INTDIR)\Log.obj"
	-@erase "$(INTDIR)\MinMax.obj"
	-@erase "$(INTDIR)\RectList.obj"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\translate.obj"
	-@erase "$(INTDIR)\vncAbout.obj"
	-@erase "$(INTDIR)\vncAcceptDialog.obj"
	-@erase "$(INTDIR)\vncauth.obj"
	-@erase "$(INTDIR)\vncBuffer.obj"
	-@erase "$(INTDIR)\vncClient.obj"
	-@erase "$(INTDIR)\vncConnDialog.obj"
	-@erase "$(INTDIR)\vncDesktop.obj"
	-@erase "$(INTDIR)\vncEncodeCoRRE.obj"
	-@erase "$(INTDIR)\vncEncodeHexT.obj"
	-@erase "$(INTDIR)\vncEncoder.obj"
	-@erase "$(INTDIR)\vncEncodeRRE.obj"
	-@erase "$(INTDIR)\vncHTTPConnect.obj"
	-@erase "$(INTDIR)\vncInstHandler.obj"
	-@erase "$(INTDIR)\vncKeymap.obj"
	-@erase "$(INTDIR)\vncMenu.obj"
	-@erase "$(INTDIR)\vncProperties.obj"
	-@erase "$(INTDIR)\vncRegion.obj"
	-@erase "$(INTDIR)\vncServer.obj"
	-@erase "$(INTDIR)\vncService.obj"
	-@erase "$(INTDIR)\vncSockConnect.obj"
	-@erase "$(INTDIR)\vncTimedMsgBox.obj"
	-@erase "$(INTDIR)\VSocket.obj"
	-@erase "$(INTDIR)\WinVNC.obj"
	-@erase "$(INTDIR)\WinVNC.res"
	-@erase "$(OUTDIR)\wvncmips.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /mips
# ADD MTL /nologo /D "NDEBUG" /mips
MTL_PROJ=/nologo /D "NDEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\STL" /I "omnithread" /I "vnchooks" /I "." /D "NDEBUG" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /ML /Gt0 /QMOb2000 /W3 /GX /O2 /I "..\STL" /I "omnithread" /I\
 "vnchooks" /I "." /D "NDEBUG" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__"\
 /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/wvncmips.pch" /YX\
 /Fo"$(INTDIR)/" /c 
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/WinVNC.res" /d "NDEBUG" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib /nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/wvncmips.pdb" /machine:MIPS /out:"$(OUTDIR)/wvncmips.exe" 
LINK32_OBJS= \
	"$(INTDIR)\d3des.obj" \
	"$(INTDIR)\Log.obj" \
	"$(INTDIR)\MinMax.obj" \
	"$(INTDIR)\RectList.obj" \
	"$(INTDIR)\stdhdrs.obj" \
	"$(INTDIR)\translate.obj" \
	"$(INTDIR)\vncAbout.obj" \
	"$(INTDIR)\vncAcceptDialog.obj" \
	"$(INTDIR)\vncauth.obj" \
	"$(INTDIR)\vncBuffer.obj" \
	"$(INTDIR)\vncClient.obj" \
	"$(INTDIR)\vncConnDialog.obj" \
	"$(INTDIR)\vncDesktop.obj" \
	"$(INTDIR)\vncEncodeCoRRE.obj" \
	"$(INTDIR)\vncEncodeHexT.obj" \
	"$(INTDIR)\vncEncoder.obj" \
	"$(INTDIR)\vncEncodeRRE.obj" \
	"$(INTDIR)\vncHTTPConnect.obj" \
	"$(INTDIR)\vncInstHandler.obj" \
	"$(INTDIR)\vncKeymap.obj" \
	"$(INTDIR)\vncMenu.obj" \
	"$(INTDIR)\vncProperties.obj" \
	"$(INTDIR)\vncRegion.obj" \
	"$(INTDIR)\vncServer.obj" \
	"$(INTDIR)\vncService.obj" \
	"$(INTDIR)\vncSockConnect.obj" \
	"$(INTDIR)\vncTimedMsgBox.obj" \
	"$(INTDIR)\VSocket.obj" \
	"$(INTDIR)\WinVNC.obj" \
	"$(INTDIR)\WinVNC.res" \
	".\othdmips\MIPSRel\othdmips.lib" \
	".\vnchmips\MIPSRel\vnchmips.lib"

"$(OUTDIR)\wvncmips.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wvncmips.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

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

ALL : "vnchmips - Win32 Debug" "othdmips - Win32 Debug"\
 "$(OUTDIR)\wvncmips.exe"

CLEAN : 
	-@erase "$(INTDIR)\d3des.obj"
	-@erase "$(INTDIR)\Log.obj"
	-@erase "$(INTDIR)\MinMax.obj"
	-@erase "$(INTDIR)\RectList.obj"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\translate.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\vncAbout.obj"
	-@erase "$(INTDIR)\vncAcceptDialog.obj"
	-@erase "$(INTDIR)\vncauth.obj"
	-@erase "$(INTDIR)\vncBuffer.obj"
	-@erase "$(INTDIR)\vncClient.obj"
	-@erase "$(INTDIR)\vncConnDialog.obj"
	-@erase "$(INTDIR)\vncDesktop.obj"
	-@erase "$(INTDIR)\vncEncodeCoRRE.obj"
	-@erase "$(INTDIR)\vncEncodeHexT.obj"
	-@erase "$(INTDIR)\vncEncoder.obj"
	-@erase "$(INTDIR)\vncEncodeRRE.obj"
	-@erase "$(INTDIR)\vncHTTPConnect.obj"
	-@erase "$(INTDIR)\vncInstHandler.obj"
	-@erase "$(INTDIR)\vncKeymap.obj"
	-@erase "$(INTDIR)\vncMenu.obj"
	-@erase "$(INTDIR)\vncProperties.obj"
	-@erase "$(INTDIR)\vncRegion.obj"
	-@erase "$(INTDIR)\vncServer.obj"
	-@erase "$(INTDIR)\vncService.obj"
	-@erase "$(INTDIR)\vncSockConnect.obj"
	-@erase "$(INTDIR)\vncTimedMsgBox.obj"
	-@erase "$(INTDIR)\VSocket.obj"
	-@erase "$(INTDIR)\WinVNC.obj"
	-@erase "$(INTDIR)\WinVNC.res"
	-@erase "$(OUTDIR)\wvncmips.exe"
	-@erase "$(OUTDIR)\wvncmips.ilk"
	-@erase "$(OUTDIR)\wvncmips.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /mips
# ADD MTL /nologo /D "_DEBUG" /mips
MTL_PROJ=/nologo /D "_DEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "..\STL" /I "omnithread" /I "vnchooks" /I "." /D "_DEBUG" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MLd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "..\STL" /I\
 "omnithread" /I "vnchooks" /I "." /D "_DEBUG" /D "__WIN32__" /D\
 "_OMNITHREAD_DLL" /D "__NT__" /D "WIN32" /D "_WINDOWS" /D "NCORBA"\
 /Fp"$(INTDIR)/wvncmips.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/WinVNC.res" /d "_DEBUG" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /debug /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib /nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/wvncmips.pdb" /debug /machine:MIPS\
 /out:"$(OUTDIR)/wvncmips.exe" 
LINK32_OBJS= \
	"$(INTDIR)\d3des.obj" \
	"$(INTDIR)\Log.obj" \
	"$(INTDIR)\MinMax.obj" \
	"$(INTDIR)\RectList.obj" \
	"$(INTDIR)\stdhdrs.obj" \
	"$(INTDIR)\translate.obj" \
	"$(INTDIR)\vncAbout.obj" \
	"$(INTDIR)\vncAcceptDialog.obj" \
	"$(INTDIR)\vncauth.obj" \
	"$(INTDIR)\vncBuffer.obj" \
	"$(INTDIR)\vncClient.obj" \
	"$(INTDIR)\vncConnDialog.obj" \
	"$(INTDIR)\vncDesktop.obj" \
	"$(INTDIR)\vncEncodeCoRRE.obj" \
	"$(INTDIR)\vncEncodeHexT.obj" \
	"$(INTDIR)\vncEncoder.obj" \
	"$(INTDIR)\vncEncodeRRE.obj" \
	"$(INTDIR)\vncHTTPConnect.obj" \
	"$(INTDIR)\vncInstHandler.obj" \
	"$(INTDIR)\vncKeymap.obj" \
	"$(INTDIR)\vncMenu.obj" \
	"$(INTDIR)\vncProperties.obj" \
	"$(INTDIR)\vncRegion.obj" \
	"$(INTDIR)\vncServer.obj" \
	"$(INTDIR)\vncService.obj" \
	"$(INTDIR)\vncSockConnect.obj" \
	"$(INTDIR)\vncTimedMsgBox.obj" \
	"$(INTDIR)\VSocket.obj" \
	"$(INTDIR)\WinVNC.obj" \
	"$(INTDIR)\WinVNC.res" \
	".\othdmips\MIPSDbg\othdmips.lib" \
	".\vnchmips\MIPSDbg\vnchmips.lib"

"$(OUTDIR)\wvncmips.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wvncmips.bsc" 
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

ALL : "$(OUTDIR)\othdmips.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(OUTDIR)\othdmips.dll"
	-@erase "$(OUTDIR)\othdmips.exp"
	-@erase "$(OUTDIR)\othdmips.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /mips
# ADD MTL /nologo /D "NDEBUG" /mips
MTL_PROJ=/nologo /D "NDEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /YX /c
CPP_PROJ=/nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "omnithread" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D\
 "__NT__" /Fp"$(INTDIR)/othdmips.pch" /YX /Fo"$(INTDIR)/" /c 
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
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\othdmips.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

ALL : "$(OUTDIR)\othdmips.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\othdmips.dll"
	-@erase "$(OUTDIR)\othdmips.exp"
	-@erase "$(OUTDIR)\othdmips.ilk"
	-@erase "$(OUTDIR)\othdmips.lib"
	-@erase "$(OUTDIR)\othdmips.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /mips
# ADD MTL /nologo /D "_DEBUG" /mips
MTL_PROJ=/nologo /D "_DEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /YX /c
CPP_PROJ=/nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "omnithread" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D\
 "__NT__" /Fp"$(INTDIR)/othdmips.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
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
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\othdmips.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/othdmips.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "vnchmips - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "vnchmips\MIPSRel"
# PROP BASE Intermediate_Dir "vnchmips\MIPSRel"
# PROP BASE Target_Dir "vnchmips"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "vnchmips\MIPSRel"
# PROP Intermediate_Dir "vnchmips\MIPSRel"
# PROP Target_Dir "vnchmips"
OUTDIR=.\vnchmips\MIPSRel
INTDIR=.\vnchmips\MIPSRel

ALL : "$(OUTDIR)\vnchmips.dll"

CLEAN : 
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\vnchmips.dll"
	-@erase "$(OUTDIR)\vnchmips.exp"
	-@erase "$(OUTDIR)\vnchmips.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /mips
# ADD MTL /nologo /D "NDEBUG" /mips
MTL_PROJ=/nologo /D "NDEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "vnchooks" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MT /Gt0 /QMOb2000 /W3 /GX /O2 /I "." /I "vnchooks" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/vnchmips.pch" /YX\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\vnchmips\MIPSRel/
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/VNCHooks.res" /d "NDEBUG" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/vnchmips.pdb" /machine:MIPS /out:"$(OUTDIR)/vnchmips.dll"\
 /implib:"$(OUTDIR)/vnchmips.lib" 
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\vnchmips.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vnchmips.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "vnchmips - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "vnchmips\MIPSDbg"
# PROP BASE Intermediate_Dir "vnchmips\MIPSDbg"
# PROP BASE Target_Dir "vnchmips"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "vnchmips\MIPSDbg"
# PROP Intermediate_Dir "vnchmips\MIPSDbg"
# PROP Target_Dir "vnchmips"
OUTDIR=.\vnchmips\MIPSDbg
INTDIR=.\vnchmips\MIPSDbg

ALL : "$(OUTDIR)\vnchmips.dll"

CLEAN : 
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\vnchmips.dll"
	-@erase "$(OUTDIR)\vnchmips.exp"
	-@erase "$(OUTDIR)\vnchmips.ilk"
	-@erase "$(OUTDIR)\vnchmips.lib"
	-@erase "$(OUTDIR)\vnchmips.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /mips
# ADD MTL /nologo /D "_DEBUG" /mips
MTL_PROJ=/nologo /D "_DEBUG" /mips 
CPP=cl.exe
# ADD BASE CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "vnchooks" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MTd /Gt0 /QMOb2000 /W3 /GX /Zi /Od /I "." /I "vnchooks" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/vnchmips.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\vnchmips\MIPSDbg/
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/VNCHooks.res" /d "_DEBUG" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:MIPS
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:MIPS
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/vnchmips.pdb" /debug /machine:MIPS\
 /out:"$(OUTDIR)/vnchmips.dll" /implib:"$(OUTDIR)/vnchmips.lib" 
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\vnchmips.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vnchmips.bsc" 
BSC32_SBRS= \
	

!ENDIF 

################################################################################
# Begin Target

# Name "wvncmips - Win32 Release"
# Name "wvncmips - Win32 Debug"

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

################################################################################
# Begin Project Dependency

# Project_Dep_Name "othdmips"

!IF  "$(CFG)" == "wvncmips - Win32 Debug"

"othdmips - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncmips.mak" CFG="othdmips - Win32 Debug" 

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Release"

"othdmips - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncmips.mak" CFG="othdmips - Win32 Release" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Project Dependency

# Project_Dep_Name "vnchmips"

!IF  "$(CFG)" == "wvncmips - Win32 Debug"

"vnchmips - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncmips.mak" CFG="vnchmips - Win32 Debug" 

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Release"

"vnchmips - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncmips.mak" CFG="vnchmips - Win32 Release" 

!ENDIF 

# End Project Dependency
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

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\keysymdef.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.cpp
DEP_CPP_LOG_C=\
	".\Log.h"\
	".\stdhdrs.h"\
	

"$(INTDIR)\Log.obj" : $(SOURCE) $(DEP_CPP_LOG_C) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MinMax.cpp
DEP_CPP_MINMA=\
	".\MinMax.h"\
	

"$(INTDIR)\MinMax.obj" : $(SOURCE) $(DEP_CPP_MINMA) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\MinMax.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RectList.cpp
DEP_CPP_RECTL=\
	".\Log.h"\
	".\RectList.h"\
	".\stdhdrs.h"\
	

"$(INTDIR)\RectList.obj" : $(SOURCE) $(DEP_CPP_RECTL) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\RectList.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\resource.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfb.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfbproto.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.cpp
DEP_CPP_STDHD=\
	".\Log.h"\
	".\stdhdrs.h"\
	

"$(INTDIR)\stdhdrs.obj" : $(SOURCE) $(DEP_CPP_STDHD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\translate.cpp
DEP_CPP_TRANS=\
	".\Log.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\tableinitcmtemplate.cpp"\
	".\tableinittctemplate.cpp"\
	".\tabletranstemplate.cpp"\
	".\translate.h"\
	

"$(INTDIR)\translate.obj" : $(SOURCE) $(DEP_CPP_TRANS) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\translate.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAbout.cpp
DEP_CPP_VNCAB=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vncAbout.h"\
	".\WinVNC.h"\
	

"$(INTDIR)\vncAbout.obj" : $(SOURCE) $(DEP_CPP_VNCAB) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAbout.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAcceptDialog.cpp
DEP_CPP_VNCAC=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vncAcceptDialog.h"\
	".\vncService.h"\
	".\WinVNC.h"\
	

"$(INTDIR)\vncAcceptDialog.obj" : $(SOURCE) $(DEP_CPP_VNCAC) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAcceptDialog.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.c
DEP_CPP_VNCAU=\
	".\d3des.h"\
	".\vncauth.h"\
	{$(INCLUDE)}"\sys\stat.h"\
	{$(INCLUDE)}"\sys\types.h"\
	

"$(INTDIR)\vncauth.obj" : $(SOURCE) $(DEP_CPP_VNCAU) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncBuffer.cpp
DEP_CPP_VNCBU=\
	".\Log.h"\
	".\MinMax.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncodeCoRRE.h"\
	".\vncEncodeHexT.h"\
	".\vncEncoder.h"\
	".\vncEncodeRRE.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCBU=\
	".\vnc.hh"\
	

"$(INTDIR)\vncBuffer.obj" : $(SOURCE) $(DEP_CPP_VNCBU) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncBuffer.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncClient.cpp
DEP_CPP_VNCCL=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncAcceptDialog.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCCL=\
	".\vnc.hh"\
	

"$(INTDIR)\vncClient.obj" : $(SOURCE) $(DEP_CPP_VNCCL) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncClient.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncConnDialog.cpp
DEP_CPP_VNCCO=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncConnDialog.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	".\WinVNC.h"\
	
NODEP_CPP_VNCCO=\
	".\vnc.hh"\
	

"$(INTDIR)\vncConnDialog.obj" : $(SOURCE) $(DEP_CPP_VNCCO) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncConnDialog.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncCorbaConnect.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncDesktop.cpp
DEP_CPP_VNCDE=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\VNCHooks\VNCHooks.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	".\WinVNC.h"\
	
NODEP_CPP_VNCDE=\
	".\vnc.hh"\
	

"$(INTDIR)\vncDesktop.obj" : $(SOURCE) $(DEP_CPP_VNCDE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncDesktop.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeCoRRE.cpp
DEP_CPP_VNCEN=\
	".\Log.h"\
	".\MinMax.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncodeCoRRE.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCEN=\
	".\vnc.hh"\
	

"$(INTDIR)\vncEncodeCoRRE.obj" : $(SOURCE) $(DEP_CPP_VNCEN) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeCoRRE.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeHexT.cpp
DEP_CPP_VNCENC=\
	".\Log.h"\
	".\MinMax.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncodeHexT.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCENC=\
	".\vnc.hh"\
	

"$(INTDIR)\vncEncodeHexT.obj" : $(SOURCE) $(DEP_CPP_VNCENC) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeHexT.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncoder.cpp
DEP_CPP_VNCENCO=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCENCO=\
	".\vnc.hh"\
	

"$(INTDIR)\vncEncoder.obj" : $(SOURCE) $(DEP_CPP_VNCENCO) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncoder.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeRRE.cpp
DEP_CPP_VNCENCOD=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncEncodeRRE.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCENCOD=\
	".\vnc.hh"\
	

"$(INTDIR)\vncEncodeRRE.obj" : $(SOURCE) $(DEP_CPP_VNCENCOD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeRRE.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncHTTPConnect.cpp
DEP_CPP_VNCHT=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCHT=\
	".\vnc.hh"\
	

"$(INTDIR)\vncHTTPConnect.obj" : $(SOURCE) $(DEP_CPP_VNCHT) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncHTTPConnect.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncInstHandler.cpp
DEP_CPP_VNCIN=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vncInstHandler.h"\
	

"$(INTDIR)\vncInstHandler.obj" : $(SOURCE) $(DEP_CPP_VNCIN) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncInstHandler.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncKeymap.cpp
DEP_CPP_VNCKE=\
	".\keysymdef.h"\
	".\Log.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\vncKeymap.h"\
	".\vncService.h"\
	

"$(INTDIR)\vncKeymap.obj" : $(SOURCE) $(DEP_CPP_VNCKE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncKeymap.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncMenu.cpp
DEP_CPP_VNCME=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncAbout.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncConnDialog.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncMenu.h"\
	".\vncPasswd.h"\
	".\vncProperties.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	".\WinVNC.h"\
	
NODEP_CPP_VNCME=\
	".\vnc.hh"\
	

"$(INTDIR)\vncMenu.obj" : $(SOURCE) $(DEP_CPP_VNCME) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncMenu.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncPasswd.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncProperties.cpp
DEP_CPP_VNCPR=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncProperties.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	".\WinVNC.h"\
	
NODEP_CPP_VNCPR=\
	".\vnc.hh"\
	

"$(INTDIR)\vncProperties.obj" : $(SOURCE) $(DEP_CPP_VNCPR) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncProperties.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncRegion.cpp
DEP_CPP_VNCRE=\
	".\Log.h"\
	".\RectList.h"\
	".\stdhdrs.h"\
	".\vncRegion.h"\
	

"$(INTDIR)\vncRegion.obj" : $(SOURCE) $(DEP_CPP_VNCRE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncRegion.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncServer.cpp
DEP_CPP_VNCSE=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	".\WinVNC.h"\
	
NODEP_CPP_VNCSE=\
	".\vnc.hh"\
	

"$(INTDIR)\vncServer.obj" : $(SOURCE) $(DEP_CPP_VNCSE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncServer.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncService.cpp
DEP_CPP_VNCSER=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncAbout.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncMenu.h"\
	".\vncPasswd.h"\
	".\vncProperties.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncSockConnect.h"\
	".\vncTimedMsgBox.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	".\WinVNC.h"\
	
NODEP_CPP_VNCSER=\
	".\omnithread.h"\
	".\vnc.hh"\
	

"$(INTDIR)\vncService.obj" : $(SOURCE) $(DEP_CPP_VNCSER) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncService.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncSockConnect.cpp
DEP_CPP_VNCSO=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncKeymap.h"\
	".\vncPasswd.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	
NODEP_CPP_VNCSO=\
	".\vnc.hh"\
	

"$(INTDIR)\vncSockConnect.obj" : $(SOURCE) $(DEP_CPP_VNCSO) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncSockConnect.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncTimedMsgBox.cpp
DEP_CPP_VNCTI=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vncTimedMsgBox.h"\
	
NODEP_CPP_VNCTI=\
	".\omnithread.h"\
	

"$(INTDIR)\vncTimedMsgBox.obj" : $(SOURCE) $(DEP_CPP_VNCTI) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncTimedMsgBox.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VSocket.cpp
DEP_CPP_VSOCK=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	{$(INCLUDE)}"\sys\types.h"\
	

"$(INTDIR)\VSocket.obj" : $(SOURCE) $(DEP_CPP_VSOCK) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VSocket.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VTypes.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\WinVNC.cpp
DEP_CPP_WINVN=\
	".\Log.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vncAbout.h"\
	".\vncauth.h"\
	".\vncBuffer.h"\
	".\vncClient.h"\
	".\vncCorbaConnect.h"\
	".\vncDesktop.h"\
	".\vncEncoder.h"\
	".\vncHTTPConnect.h"\
	".\vncInstHandler.h"\
	".\vncKeymap.h"\
	".\vncMenu.h"\
	".\vncPasswd.h"\
	".\vncProperties.h"\
	".\vncRegion.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncSockConnect.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	".\WinVNC.h"\
	
NODEP_CPP_WINVN=\
	".\vnc.hh"\
	

"$(INTDIR)\WinVNC.obj" : $(SOURCE) $(DEP_CPP_WINVN) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\WinVNC.h

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\WinVNC.rc
DEP_RSC_WINVNC=\
	".\res\animatedMemoryImageSource.class"\
	".\res\authenticationPanel.class"\
	".\res\clipboardFrame.class"\
	".\res\DesCipher.class"\
	".\res\icon1.ico"\
	".\res\optionsFrame.class"\
	".\res\rfbProto.class"\
	".\res\vnc.bmp"\
	".\res\vncCanvas.class"\
	".\res\vncviewer.class"\
	".\res\vncviewer.jar"\
	".\res\WinVNC.ico"\
	

"$(INTDIR)\WinVNC.res" : $(SOURCE) $(DEP_RSC_WINVNC) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\YVALS.H

!IF  "$(CFG)" == "wvncmips - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncmips - Win32 Debug"

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


"$(INTDIR)\nt.obj" : $(SOURCE) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "othdmips - Win32 Debug"


"$(INTDIR)\nt.obj" : $(SOURCE) "$(INTDIR)"
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
################################################################################
# Begin Target

# Name "vnchmips - Win32 Release"
# Name "vnchmips - Win32 Debug"

!IF  "$(CFG)" == "vnchmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vnchmips - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.rc

!IF  "$(CFG)" == "vnchmips - Win32 Release"


"$(INTDIR)\VNCHooks.res" : $(SOURCE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/VNCHooks.res" /i "VNCHooks" /d "NDEBUG"\
 $(SOURCE)


!ELSEIF  "$(CFG)" == "vnchmips - Win32 Debug"


"$(INTDIR)\VNCHooks.res" : $(SOURCE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/VNCHooks.res" /i "VNCHooks" /d "_DEBUG"\
 $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.cpp

!IF  "$(CFG)" == "vnchmips - Win32 Release"

DEP_CPP_VNCHO=\
	".\VNCHooks\VNCHooks.h"\
	

"$(INTDIR)\VNCHooks.obj" : $(SOURCE) $(DEP_CPP_VNCHO) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "vnchmips - Win32 Debug"

DEP_CPP_VNCHO=\
	".\VNCHooks\VNCHooks.h"\
	

"$(INTDIR)\VNCHooks.obj" : $(SOURCE) $(DEP_CPP_VNCHO) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.h

!IF  "$(CFG)" == "vnchmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vnchmips - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\resource.h

!IF  "$(CFG)" == "vnchmips - Win32 Release"

!ELSEIF  "$(CFG)" == "vnchmips - Win32 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
