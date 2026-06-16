# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (ALPHA) Dynamic-Link Library" 0x0602
# TARGTYPE "Win32 (ALPHA) Application" 0x0601

!IF "$(CFG)" == ""
CFG=vnchaxp - Win32 Release
!MESSAGE No configuration specified.  Defaulting to vnchaxp - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "wvncaxp - Win32 Release" && "$(CFG)" !=\
 "wvncaxp - Win32 Debug" && "$(CFG)" != "othdaxp - Win32 Release" && "$(CFG)"\
 != "othdaxp - Win32 Debug" && "$(CFG)" != "vnchaxp - Win32 Release" &&\
 "$(CFG)" != "vnchaxp - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "wvncaxp.mak" CFG="vnchaxp - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "wvncaxp - Win32 Release" (based on "Win32 (ALPHA) Application")
!MESSAGE "wvncaxp - Win32 Debug" (based on "Win32 (ALPHA) Application")
!MESSAGE "othdaxp - Win32 Release" (based on\
 "Win32 (ALPHA) Dynamic-Link Library")
!MESSAGE "othdaxp - Win32 Debug" (based on\
 "Win32 (ALPHA) Dynamic-Link Library")
!MESSAGE "vnchaxp - Win32 Release" (based on\
 "Win32 (ALPHA) Dynamic-Link Library")
!MESSAGE "vnchaxp - Win32 Debug" (based on\
 "Win32 (ALPHA) Dynamic-Link Library")
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
# PROP Target_Last_Scanned "vnchaxp - Win32 Debug"

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "AXPRel"
# PROP BASE Intermediate_Dir "AXPRel"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "AXPRel"
# PROP Intermediate_Dir "AXPRel"
# PROP Target_Dir ""
OUTDIR=.\AXPRel
INTDIR=.\AXPRel

ALL : "vnchaxp - Win32 Release" "othdaxp - Win32 Release"\
 "$(OUTDIR)\wvncaxp.exe"

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
	-@erase "$(OUTDIR)\wvncaxp.exe"
	-@erase "$(OUTDIR)\wvncaxp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /ALPHA
# ADD MTL /nologo /D "NDEBUG" /ALPHA
MTL_PROJ=/nologo /D "NDEBUG" /ALPHA 
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /GX /Zi /O2 /I "..\STL" /I "omnithread" /I "vnchooks" /I "." /D "NDEBUG" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /ML /W3 /GX /Zi /O2 /I "..\STL" /I "omnithread"\
 /I "vnchooks" /I "." /D "NDEBUG" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D\
 "__NT__" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/wvncaxp.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\AXPRel/
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /debug /machine:ALPHA
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib /nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/wvncaxp.pdb" /debug /machine:ALPHA\
 /out:"$(OUTDIR)/wvncaxp.exe" 
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
	".\othdaxp\AXPRel\othdaxp.lib" \
	".\vnchaxp\AXPRel\vnchaxp.lib"

"$(OUTDIR)\wvncaxp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wvncaxp.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "AXPDbg"
# PROP BASE Intermediate_Dir "AXPDbg"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "AXPDbg"
# PROP Intermediate_Dir "AXPDbg"
# PROP Target_Dir ""
OUTDIR=.\AXPDbg
INTDIR=.\AXPDbg

ALL : "vnchaxp - Win32 Debug" "othdaxp - Win32 Debug"\
 "$(OUTDIR)\wvncaxp.exe"

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
	-@erase "$(OUTDIR)\wvncaxp.exe"
	-@erase "$(OUTDIR)\wvncaxp.ilk"
	-@erase "$(OUTDIR)\wvncaxp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /ALPHA
# ADD MTL /nologo /D "_DEBUG" /ALPHA
MTL_PROJ=/nologo /D "_DEBUG" /ALPHA 
CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /GX /Zi /Od /I "..\STL" /I "omnithread" /I "vnchooks" /I "." /D "_DEBUG" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MLd /W3 /GX /Zi /Od /I "..\STL" /I\
 "omnithread" /I "vnchooks" /I "." /D "_DEBUG" /D "__WIN32__" /D\
 "_OMNITHREAD_DLL" /D "__NT__" /D "WIN32" /D "_WINDOWS" /D "NCORBA"\
 /Fp"$(INTDIR)/wvncaxp.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\AXPDbg/
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /debug /machine:ALPHA
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib /nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/wvncppc.pdb" /debug /machine:ALPHA\
 /out:"$(OUTDIR)/wvncaxp.exe" 
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
	".\othdaxp\AXPDbg\othdaxp.lib" \
	".\vnchaxp\AXPDbg\vnchaxp.lib"

"$(OUTDIR)\wvncaxp.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/wvncaxp.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "othdaxp - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "othdaxp\AXPRel"
# PROP BASE Intermediate_Dir "othdaxp\AXPRel"
# PROP BASE Target_Dir "othdaxp"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "othdaxp\AXPRel"
# PROP Intermediate_Dir "othdaxp\AXPRel"
# PROP Target_Dir "othdaxp"
OUTDIR=.\othdaxp\AXPRel
INTDIR=.\othdaxp\AXPRel

ALL : "$(OUTDIR)\othdaxp.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\othdaxp.dll"
	-@erase "$(OUTDIR)\othdaxp.exp"
	-@erase "$(OUTDIR)\othdaxp.lib"
	-@erase "$(OUTDIR)\othdaxp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /ALPHA
# ADD MTL /nologo /D "NDEBUG" /ALPHA
MTL_PROJ=/nologo /D "NDEBUG" /ALPHA 
CPP=cl.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /W3 /GX /Zi /O2 /I "." /I "omnithread" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /YX /c
CPP_PROJ=/nologo /MT /W3 /GX /Zi /O2 /I "." /I "omnithread" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D\
 "__NT__" /Fp"$(INTDIR)/othdaxp.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\othdaxp\AXPRel/
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:ALPHA
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/othdaxp.pdb" /debug /machine:ALPHA\
 /out:"$(OUTDIR)/othdaxp.dll" /implib:"$(OUTDIR)/othdaxp.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\othdaxp.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/othdaxp.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "othdaxp - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "othdaxp\AXPDbg"
# PROP BASE Intermediate_Dir "othdaxp\AXPDbg"
# PROP BASE Target_Dir "othdaxp"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "othdaxp\AXPDbg"
# PROP Intermediate_Dir "othdaxp\AXPDbg"
# PROP Target_Dir "othdaxp"
OUTDIR=.\othdaxp\AXPDbg
INTDIR=.\othdaxp\AXPDbg

ALL : "$(OUTDIR)\othdaxp.dll"

CLEAN : 
	-@erase "$(INTDIR)\nt.obj"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\othdaxp.dll"
	-@erase "$(OUTDIR)\othdaxp.exp"
	-@erase "$(OUTDIR)\othdaxp.ilk"
	-@erase "$(OUTDIR)\othdaxp.lib"
	-@erase "$(OUTDIR)\othdaxp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /ALPHA
# ADD MTL /nologo /D "_DEBUG" /ALPHA
MTL_PROJ=/nologo /D "_DEBUG" /ALPHA 
CPP=cl.exe
# ADD BASE CPP /nologo /MTd /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /W3 /GX /Zi /Od /I "." /I "omnithread" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D "__NT__" /YX /c
CPP_PROJ=/nologo /MTd /W3 /GX /Zi /Od /I "." /I "omnithread" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__WIN32__" /D "_OMNITHREAD_DLL" /D\
 "__NT__" /Fp"$(INTDIR)/othdaxp.pch" /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\othdaxp\AXPDbg/
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:ALPHA
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/othdaxp.pdb" /debug /machine:ALPHA\
 /out:"$(OUTDIR)/othdaxp.dll" /implib:"$(OUTDIR)/othdaxp.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\othdaxp.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/othdaxp.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "vnchaxp - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "vnchaxp\AXPRel"
# PROP BASE Intermediate_Dir "vnchaxp\AXPRel"
# PROP BASE Target_Dir "vnchaxp"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "vnchaxp\AXPRel"
# PROP Intermediate_Dir "vnchaxp\AXPRel"
# PROP Target_Dir "vnchaxp"
OUTDIR=.\vnchaxp\AXPRel
INTDIR=.\vnchaxp\AXPRel

ALL : "$(OUTDIR)\vnchaxp.dll"

CLEAN : 
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\vnchaxp.dll"
	-@erase "$(OUTDIR)\vnchaxp.exp"
	-@erase "$(OUTDIR)\vnchaxp.lib"
	-@erase "$(OUTDIR)\vnchaxp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "NDEBUG" /ALPHA
# ADD MTL /nologo /D "NDEBUG" /ALPHA
MTL_PROJ=/nologo /D "NDEBUG" /ALPHA 
CPP=cl.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /W3 /GX /Zi /O2 /I "." /I "vnchooks" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MT /W3 /GX /Zi /O2 /I "." /I "vnchooks" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/vnchaxp.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\vnchaxp\AXPRel/
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:ALPHA
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/vnchaxp.pdb" /debug /machine:ALPHA\
 /out:"$(OUTDIR)/vnchaxp.dll" /implib:"$(OUTDIR)/vnchaxp.lib" 
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\vnchaxp.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vnchaxp.bsc" 
BSC32_SBRS= \
	

!ELSEIF  "$(CFG)" == "vnchaxp - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "vnchaxp\AXPDbg"
# PROP BASE Intermediate_Dir "vnchaxp\AXPDbg"
# PROP BASE Target_Dir "vnchaxp"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "vnchaxp\AXPDbg"
# PROP Intermediate_Dir "vnchaxp\AXPDbg"
# PROP Target_Dir "vnchaxp"
OUTDIR=.\vnchaxp\AXPDbg
INTDIR=.\vnchaxp\AXPDbg

ALL : "$(OUTDIR)\vnchaxp.dll"

CLEAN : 
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\vnchaxp.dll"
	-@erase "$(OUTDIR)\vnchaxp.exp"
	-@erase "$(OUTDIR)\vnchaxp.ilk"
	-@erase "$(OUTDIR)\vnchaxp.lib"
	-@erase "$(OUTDIR)\vnchaxp.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

MTL=mktyplib.exe
# ADD BASE MTL /nologo /D "_DEBUG" /ALPHA
# ADD MTL /nologo /D "_DEBUG" /ALPHA
MTL_PROJ=/nologo /D "_DEBUG" /ALPHA 
CPP=cl.exe
# ADD BASE CPP /nologo /MTd /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /W3 /GX /Zi /Od /I "." /I "vnchooks" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MTd /W3 /GX /Zi /Od /I "." /I "vnchooks" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/vnchaxp.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\vnchaxp\AXPDbg/
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:ALPHA
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:ALPHA
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/vnchaxp.pdb" /debug /machine:ALPHA\
 /out:"$(OUTDIR)/vnchaxp.dll" /implib:"$(OUTDIR)/vnchaxp.lib" 
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\vnchaxp.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vnchaxp.bsc" 
BSC32_SBRS= \
	

!ENDIF 

################################################################################
# Begin Target

# Name "wvncaxp - Win32 Release"
# Name "wvncaxp - Win32 Debug"

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

################################################################################
# Begin Project Dependency

# Project_Dep_Name "othdaxp"

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

"othdaxp - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncaxp.mak" CFG="othdaxp - Win32 Release" 

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

"othdaxp - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncaxp.mak" CFG="othdaxp - Win32 Debug" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Project Dependency

# Project_Dep_Name "vnchaxp"

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

"vnchaxp - Win32 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncaxp.mak" CFG="vnchaxp - Win32 Release" 

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

"vnchaxp - Win32 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\wvncaxp.mak" CFG="vnchaxp - Win32 Debug" 

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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\keysymdef.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RectList.cpp
DEP_CPP_RECTL=\
	"..\STL\list"\
	".\Log.h"\
	".\RectList.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	

"$(INTDIR)\RectList.obj" : $(SOURCE) $(DEP_CPP_RECTL) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\RectList.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\resource.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfb.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfbproto.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.cpp
DEP_CPP_STDHD=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	

"$(INTDIR)\stdhdrs.obj" : $(SOURCE) $(DEP_CPP_STDHD) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

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
	".\vc4yvals.h"\
	

"$(INTDIR)\translate.obj" : $(SOURCE) $(DEP_CPP_TRANS) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\translate.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAbout.cpp
DEP_CPP_VNCAB=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncAbout.h"\
	".\WinVNC.h"\
	

"$(INTDIR)\vncAbout.obj" : $(SOURCE) $(DEP_CPP_VNCAB) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAbout.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAcceptDialog.cpp
DEP_CPP_VNCAC=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncAcceptDialog.h"\
	".\vncService.h"\
	".\WinVNC.h"\
	

"$(INTDIR)\vncAcceptDialog.obj" : $(SOURCE) $(DEP_CPP_VNCAC) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAcceptDialog.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncBuffer.cpp
DEP_CPP_VNCBU=\
	"..\STL\list"\
	".\Log.h"\
	".\MinMax.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncClient.cpp
DEP_CPP_VNCCL=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncConnDialog.cpp
DEP_CPP_VNCCO=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncCorbaConnect.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncDesktop.cpp
DEP_CPP_VNCDE=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeCoRRE.cpp
DEP_CPP_VNCEN=\
	"..\STL\list"\
	".\Log.h"\
	".\MinMax.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeHexT.cpp
DEP_CPP_VNCENC=\
	"..\STL\list"\
	".\Log.h"\
	".\MinMax.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncoder.cpp
DEP_CPP_VNCENCO=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeRRE.cpp
DEP_CPP_VNCENCOD=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncHTTPConnect.cpp
DEP_CPP_VNCHT=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncInstHandler.cpp
DEP_CPP_VNCIN=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncInstHandler.h"\
	

"$(INTDIR)\vncInstHandler.obj" : $(SOURCE) $(DEP_CPP_VNCIN) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncInstHandler.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

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
	".\vc4yvals.h"\
	".\vncKeymap.h"\
	".\vncService.h"\
	

"$(INTDIR)\vncKeymap.obj" : $(SOURCE) $(DEP_CPP_VNCKE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncKeymap.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncMenu.cpp
DEP_CPP_VNCME=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncPasswd.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncProperties.cpp
DEP_CPP_VNCPR=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncRegion.cpp
DEP_CPP_VNCRE=\
	"..\STL\list"\
	".\Log.h"\
	".\RectList.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncRegion.h"\
	

"$(INTDIR)\vncRegion.obj" : $(SOURCE) $(DEP_CPP_VNCRE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncRegion.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncServer.cpp
DEP_CPP_VNCSE=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncService.cpp
DEP_CPP_VNCSER=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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
	".\vnc.hh"\
	

"$(INTDIR)\vncService.obj" : $(SOURCE) $(DEP_CPP_VNCSER) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncService.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncSockConnect.cpp
DEP_CPP_VNCSO=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncTimedMsgBox.cpp
DEP_CPP_VNCTI=\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\vncTimedMsgBox.h"\
	

"$(INTDIR)\vncTimedMsgBox.obj" : $(SOURCE) $(DEP_CPP_VNCTI) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncTimedMsgBox.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VSocket.cpp
DEP_CPP_VSOCK=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vc4yvals.h"\
	".\VSocket.h"\
	".\VTypes.h"\
	{$(INCLUDE)}"\sys\types.h"\
	

"$(INTDIR)\VSocket.obj" : $(SOURCE) $(DEP_CPP_VSOCK) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VSocket.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VTypes.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\WinVNC.cpp
DEP_CPP_WINVN=\
	"..\STL\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\RectList.h"\
	".\rfb.h"\
	".\rfbproto.h"\
	".\stdhdrs.h"\
	".\translate.h"\
	".\vc4yvals.h"\
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

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

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

SOURCE=.\yvals.h

!IF  "$(CFG)" == "wvncaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "wvncaxp - Win32 Debug"

!ENDIF 

# End Source File
# End Target
################################################################################
# Begin Target

# Name "othdaxp - Win32 Release"
# Name "othdaxp - Win32 Debug"

!IF  "$(CFG)" == "othdaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "othdaxp - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread.h

!IF  "$(CFG)" == "othdaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "othdaxp - Win32 Debug"

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

!IF  "$(CFG)" == "othdaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "othdaxp - Win32 Debug"

!ENDIF 

# End Source File
# End Target
################################################################################
# Begin Target

# Name "vnchaxp - Win32 Release"
# Name "vnchaxp - Win32 Debug"

!IF  "$(CFG)" == "vnchaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "vnchaxp - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.rc

!IF  "$(CFG)" == "vnchaxp - Win32 Release"


"$(INTDIR)\VNCHooks.res" : $(SOURCE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/VNCHooks.res" /i "VNCHooks" /d "NDEBUG"\
 $(SOURCE)


!ELSEIF  "$(CFG)" == "vnchaxp - Win32 Debug"


"$(INTDIR)\VNCHooks.res" : $(SOURCE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/VNCHooks.res" /i "VNCHooks" /d "_DEBUG"\
 $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.cpp
DEP_CPP_VNCHO=\
	".\VNCHooks\VNCHooks.h"\
	

"$(INTDIR)\VNCHooks.obj" : $(SOURCE) $(DEP_CPP_VNCHO) "$(INTDIR)"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.h

!IF  "$(CFG)" == "vnchaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "vnchaxp - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\resource.h

!IF  "$(CFG)" == "vnchaxp - Win32 Release"

!ELSEIF  "$(CFG)" == "vnchaxp - Win32 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
