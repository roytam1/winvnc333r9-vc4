# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win64 (AMD64) Application" 0x0101
# TARGTYPE "Win64 (AMD64) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=winvnc - Win64 Release
!MESSAGE No configuration specified.  Defaulting to winvnc - Win64 Release.
!ENDIF 

!IF "$(CFG)" != "winvnc - Win64 Release" && "$(CFG)" != "winvnc - Win64 Debug"\
 && "$(CFG)" != "omnithread - Win64 Release" && "$(CFG)" !=\
 "omnithread - Win64 Debug" && "$(CFG)" != "vnchooks - Win64 Release" &&\
 "$(CFG)" != "vnchooks - Win64 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "winvnc-amd64.mak" CFG="vnchooks - Win64 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "winvnc - Win64 Release" (based on "Win64 (AMD64) Application")
!MESSAGE "winvnc - Win64 Debug" (based on "Win64 (AMD64) Application")
!MESSAGE "omnithread - Win64 Release" (based on\
 "Win64 (AMD64) Dynamic-Link Library")
!MESSAGE "omnithread - Win64 Debug" (based on\
 "Win64 (AMD64) Dynamic-Link Library")
!MESSAGE "vnchooks - Win64 Release" (based on\
 "Win64 (AMD64) Dynamic-Link Library")
!MESSAGE "vnchooks - Win64 Debug" (based on "Win64 (AMD64) Dynamic-Link Library")
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
# PROP Target_Last_Scanned "vnchooks - Win64 Debug"

!IF  "$(CFG)" == "winvnc - Win64 Release"

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

ALL : "vnchooks - Win64 Release" "omnithread - Win64 Release"\
 "$(OUTDIR)\winvnc.exe"

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
	-@erase "$(OUTDIR)\winvnc.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Ox /I "Release/" /c /nologo
# ADD F90 /Ox /I "Release/" /c /nologo
F90_PROJ=/Ox /I "Release/" /c /nologo /Fo"Release/" 
F90_OBJS=.\Release/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /GX /O2 /I "omnithread" /I "vnchooks" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /D "_OMNITHREAD_DLL" /D "__WIN32__" /D "NOMINMAX" /YX /c
CPP_PROJ=/nologo /ML /W3 /GX /O2 /I "omnithread" /I "vnchooks" /I\
 "." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /D "_OMNITHREAD_DLL" /D\
 "__WIN32__" /D "NOMINMAX" /Fp"$(INTDIR)/winvnc.pch" /YX /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/WinVNC.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/winvnc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:AMD64
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /machine:AMD64
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib /nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/winvnc.pdb" /machine:AMD64 /out:"$(OUTDIR)/winvnc.exe" 
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
	".\omnithread\Release\omnithread.lib" \
	".\vnchooks\Release\vnchooks.lib"

"$(OUTDIR)\winvnc.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

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

ALL : "vnchooks - Win64 Debug" "omnithread - Win64 Debug"\
 "$(OUTDIR)\winvnc.exe"

CLEAN : 
	-@erase "$(INTDIR)\d3des.obj"
	-@erase "$(INTDIR)\Log.obj"
	-@erase "$(INTDIR)\MinMax.obj"
	-@erase "$(INTDIR)\RectList.obj"
	-@erase "$(INTDIR)\stdhdrs.obj"
	-@erase "$(INTDIR)\translate.obj"
	-@erase "$(INTDIR)\vc40.idb"
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
	-@erase "$(OUTDIR)\winvnc.exe"
	-@erase "$(OUTDIR)\winvnc.ilk"
	-@erase "$(OUTDIR)\winvnc.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Zi /I "Debug/" /c /nologo
# ADD F90 /Zi /I "Debug/" /c /nologo
F90_PROJ=/Zi /I "Debug/" /c /nologo /Fo"Debug/" /Fd"Debug/winvnc.pdb" 
F90_OBJS=.\Debug/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /I "omnithread" /I "vnchooks" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /D "_OMNITHREAD_DLL" /D "__WIN32__" /D "NOMINMAX" /YX /c
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /I "omnithread" /I\
 "vnchooks" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /D\
 "_OMNITHREAD_DLL" /D "__WIN32__" /D "NOMINMAX" /Fp"$(INTDIR)/winvnc.pch" /YX\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/WinVNC.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/winvnc.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:AMD64
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib wsock32.lib /nologo /subsystem:windows /debug /machine:AMD64
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib wsock32.lib /nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/winvnc.pdb" /debug /machine:AMD64 /out:"$(OUTDIR)/winvnc.exe" 
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
	".\omnithread\Debug\omnithread.lib" \
	".\vnchooks\Debug\vnchooks.lib"

"$(OUTDIR)\winvnc.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "omnithread - Win64 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "omnithread\Release"
# PROP BASE Intermediate_Dir "omnithread\Release"
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
# ADD BASE F90 /Ox /I "omnithread\Release/" /c /nologo /MT
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
# ADD CPP /nologo /MT /W3 /GX /O2 /I "omnithread" /I "vnchooks" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__" /YX /c
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "omnithread" /I "vnchooks" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__"\
 /Fp"$(INTDIR)/omnithread.pch" /YX /Fo"$(INTDIR)/" /c 
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:AMD64
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:AMD64
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/omnithread.pdb" /machine:AMD64 /out:"$(OUTDIR)/omnithread.dll"\
 /implib:"$(OUTDIR)/omnithread.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\omnithread.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "omnithread - Win64 Debug"

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
 /Fd"omnithread\Debug/winvnc.pdb" 
F90_OBJS=.\omnithread\Debug/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "omnithread" /I "vnchooks" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__" /YX /c
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "omnithread" /I "vnchooks"\
 /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_OMNITHREAD_DLL" /D "__WIN32__"\
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
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:AMD64
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:AMD64
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/omnithread.pdb" /debug /machine:AMD64\
 /out:"$(OUTDIR)/omnithread.dll" /implib:"$(OUTDIR)/omnithread.lib" 
LINK32_OBJS= \
	"$(INTDIR)\nt.obj"

"$(OUTDIR)\omnithread.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "vnchooks - Win64 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "vnchooks\Release"
# PROP BASE Intermediate_Dir "vnchooks\Release"
# PROP BASE Target_Dir "vnchooks"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "vnchooks\Release"
# PROP Intermediate_Dir "vnchooks\Release"
# PROP Target_Dir "vnchooks"
OUTDIR=.\vnchooks\Release
INTDIR=.\vnchooks\Release

ALL : "$(OUTDIR)\vnchooks.dll"

CLEAN : 
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\vnchooks.dll"
	-@erase "$(OUTDIR)\vnchooks.exp"
	-@erase "$(OUTDIR)\vnchooks.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Ox /I "vnchooks\Release/" /c /nologo /MT
# ADD F90 /Ox /I "vnchooks\Release/" /c /nologo /MT
F90_PROJ=/Ox /I "vnchooks\Release/" /c /nologo /MT /Fo"vnchooks\Release/" 
F90_OBJS=.\vnchooks\Release/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "omnithread" /I "vnchooks" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "omnithread" /I "vnchooks" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/vnchooks.pch" /YX\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\vnchooks\Release/
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/VNCHooks.res" /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vnchooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:AMD64
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:AMD64
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/vnchooks.pdb" /machine:AMD64 /def:".\VNCHooks\VNCHooks.def"\
 /out:"$(OUTDIR)/vnchooks.dll" /implib:"$(OUTDIR)/vnchooks.lib" 
DEF_FILE= \
	".\VNCHooks\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\vnchooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "vnchooks - Win64 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "vnchooks\Debug"
# PROP BASE Intermediate_Dir "vnchooks\Debug"
# PROP BASE Target_Dir "vnchooks"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "vnchooks\Debug"
# PROP Intermediate_Dir "vnchooks\Debug"
# PROP Target_Dir "vnchooks"
OUTDIR=.\vnchooks\Debug
INTDIR=.\vnchooks\Debug

ALL : "$(OUTDIR)\vnchooks.dll"

CLEAN : 
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\vnchooks.dll"
	-@erase "$(OUTDIR)\vnchooks.exp"
	-@erase "$(OUTDIR)\vnchooks.ilk"
	-@erase "$(OUTDIR)\vnchooks.lib"
	-@erase "$(OUTDIR)\vnchooks.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

F90=fl32.exe
# ADD BASE F90 /Zi /I "vnchooks\Debug/" /c /nologo /MT
# ADD F90 /Zi /I "vnchooks\Debug/" /c /nologo /MT
F90_PROJ=/Zi /I "vnchooks\Debug/" /c /nologo /MT /Fo"vnchooks\Debug/"\
 /Fd"vnchooks\Debug/winvnc.pdb" 
F90_OBJS=.\vnchooks\Debug/

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

CPP=cl.exe
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "omnithread" /I "vnchooks" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /YX /c
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /Zi /Od /I "omnithread" /I "vnchooks"\
 /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "NCORBA" /Fp"$(INTDIR)/vnchooks.pch"\
 /YX /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\vnchooks\Debug/
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
RSC_PROJ=/l 0x411 /fo"$(INTDIR)/VNCHooks.res" /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/vnchooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:AMD64
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:AMD64
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/vnchooks.pdb" /debug /machine:AMD64\
 /def:".\VNCHooks\VNCHooks.def" /out:"$(OUTDIR)/vnchooks.dll"\
 /implib:"$(OUTDIR)/vnchooks.lib" 
DEF_FILE= \
	".\VNCHooks\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\vnchooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

################################################################################
# Begin Target

# Name "winvnc - Win64 Release"
# Name "winvnc - Win64 Debug"

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

################################################################################
# Begin Project Dependency

# Project_Dep_Name "omnithread"

!IF  "$(CFG)" == "winvnc - Win64 Release"

"omnithread - Win64 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\winvnc-amd64.mak" CFG="omnithread - Win64 Release" 

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

"omnithread - Win64 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\winvnc-amd64.mak" CFG="omnithread - Win64 Debug" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Project Dependency

# Project_Dep_Name "vnchooks"

!IF  "$(CFG)" == "winvnc - Win64 Release"

"vnchooks - Win64 Release" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\winvnc-amd64.mak" CFG="vnchooks - Win64 Release" 

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

"vnchooks - Win64 Debug" : 
   $(MAKE) /$(MAKEFLAGS) /F ".\winvnc-amd64.mak" CFG="vnchooks - Win64 Debug" 

!ENDIF 

# End Project Dependency
################################################################################
# Begin Source File

SOURCE=.\WinVNC.cpp
DEP_CPP_WINVN=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\Log.cpp
DEP_CPP_LOG_C=\
	".\Log.h"\
	".\stdhdrs.h"\
	

"$(INTDIR)\Log.obj" : $(SOURCE) $(DEP_CPP_LOG_C) "$(INTDIR)"


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

SOURCE=.\RectList.cpp
DEP_CPP_RECTL=\
	"..\stl\list"\
	".\Log.h"\
	".\RectList.h"\
	".\stdhdrs.h"\
	

"$(INTDIR)\RectList.obj" : $(SOURCE) $(DEP_CPP_RECTL) "$(INTDIR)"


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

SOURCE=.\vncBuffer.cpp
DEP_CPP_VNCBU=\
	"..\stl\list"\
	".\Log.h"\
	".\MinMax.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncClient.cpp
DEP_CPP_VNCCL=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncConnDialog.cpp
DEP_CPP_VNCCO=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncDesktop.cpp
DEP_CPP_VNCDE=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncEncodeCoRRE.cpp
DEP_CPP_VNCEN=\
	"..\stl\list"\
	".\Log.h"\
	".\MinMax.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncEncodeHexT.cpp
DEP_CPP_VNCENC=\
	"..\stl\list"\
	".\Log.h"\
	".\MinMax.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncEncoder.cpp
DEP_CPP_VNCENCO=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncEncodeRRE.cpp
DEP_CPP_VNCENCOD=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncHTTPConnect.cpp
DEP_CPP_VNCHT=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncInstHandler.cpp
DEP_CPP_VNCIN=\
	".\Log.h"\
	".\stdhdrs.h"\
	".\vncInstHandler.h"\
	

"$(INTDIR)\vncInstHandler.obj" : $(SOURCE) $(DEP_CPP_VNCIN) "$(INTDIR)"


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

SOURCE=.\vncMenu.cpp
DEP_CPP_VNCME=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncProperties.cpp

!IF  "$(CFG)" == "winvnc - Win64 Release"

DEP_CPP_VNCPR=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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


!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

DEP_CPP_VNCPR=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncRegion.cpp
DEP_CPP_VNCRE=\
	"..\stl\list"\
	".\Log.h"\
	".\RectList.h"\
	".\stdhdrs.h"\
	".\vncRegion.h"\
	

"$(INTDIR)\vncRegion.obj" : $(SOURCE) $(DEP_CPP_VNCRE) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncServer.cpp
DEP_CPP_VNCSE=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncService.cpp

!IF  "$(CFG)" == "winvnc - Win64 Release"

DEP_CPP_VNCSER=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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
	".\vnc.hh"\
	

"$(INTDIR)\vncService.obj" : $(SOURCE) $(DEP_CPP_VNCSER) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

DEP_CPP_VNCSER=\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\stdhdrs.h"\
	".\vncMenu.h"\
	".\vncProperties.h"\
	".\vncServer.h"\
	".\vncService.h"\
	".\vncTimedMsgBox.h"\
	".\WinVNC.h"\
	

"$(INTDIR)\vncService.obj" : $(SOURCE) $(DEP_CPP_VNCSER) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncSockConnect.cpp
DEP_CPP_VNCSO=\
	"..\stl\list"\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
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

SOURCE=.\vncTimedMsgBox.cpp
DEP_CPP_VNCTI=\
	".\Log.h"\
	".\omnithread\omnithread.h"\
	".\omnithread\omnithread/nt.h"\
	".\stdhdrs.h"\
	".\vncTimedMsgBox.h"\
	

"$(INTDIR)\vncTimedMsgBox.obj" : $(SOURCE) $(DEP_CPP_VNCTI) "$(INTDIR)"


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

SOURCE=.\d3des.c
DEP_CPP_D3DES=\
	".\d3des.h"\
	

"$(INTDIR)\d3des.obj" : $(SOURCE) $(DEP_CPP_D3DES) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\WinVNC.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\keysymdef.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Log.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MinMax.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RectList.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\resource.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfb.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\rfbproto.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\stdhdrs.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\translate.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAbout.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncAcceptDialog.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncauth.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncBuffer.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncClient.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncConnDialog.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncCorbaConnect.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncDesktop.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeCoRRE.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeHexT.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncoder.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncEncodeRRE.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncHTTPConnect.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncInstHandler.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncKeymap.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncMenu.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncPasswd.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncProperties.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncRegion.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncServer.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncService.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncSockConnect.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\vncTimedMsgBox.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VSocket.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VTypes.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\d3des.h

!IF  "$(CFG)" == "winvnc - Win64 Release"

!ELSEIF  "$(CFG)" == "winvnc - Win64 Debug"

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
# End Target
################################################################################
# Begin Target

# Name "omnithread - Win64 Release"
# Name "omnithread - Win64 Debug"

!IF  "$(CFG)" == "omnithread - Win64 Release"

!ELSEIF  "$(CFG)" == "omnithread - Win64 Debug"

!ENDIF 

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

SOURCE=.\omnithread\omnithread.h

!IF  "$(CFG)" == "omnithread - Win64 Release"

!ELSEIF  "$(CFG)" == "omnithread - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\omnithread\omnithread\nt.h

!IF  "$(CFG)" == "omnithread - Win64 Release"

!ELSEIF  "$(CFG)" == "omnithread - Win64 Debug"

!ENDIF 

# End Source File
# End Target
################################################################################
# Begin Target

# Name "vnchooks - Win64 Release"
# Name "vnchooks - Win64 Debug"

!IF  "$(CFG)" == "vnchooks - Win64 Release"

!ELSEIF  "$(CFG)" == "vnchooks - Win64 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.rc

!IF  "$(CFG)" == "vnchooks - Win64 Release"


"$(INTDIR)\VNCHooks.res" : $(SOURCE) "$(INTDIR)"
   $(RSC) /l 0x411 /fo"$(INTDIR)/VNCHooks.res" /i "VNCHooks" /d "NDEBUG"\
 $(SOURCE)


!ELSEIF  "$(CFG)" == "vnchooks - Win64 Debug"


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

!IF  "$(CFG)" == "vnchooks - Win64 Release"

!ELSEIF  "$(CFG)" == "vnchooks - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\resource.h

!IF  "$(CFG)" == "vnchooks - Win64 Release"

!ELSEIF  "$(CFG)" == "vnchooks - Win64 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VNCHooks\VNCHooks.def

!IF  "$(CFG)" == "vnchooks - Win64 Release"

!ELSEIF  "$(CFG)" == "vnchooks - Win64 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
