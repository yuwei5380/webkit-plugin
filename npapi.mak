# Microsoft Developer Studio Generated NMAKE File, Based on npapi.dsp
!IF "$(CFG)" == ""
CFG=npapi - Win32 Debug
!MESSAGE No configuration specified. Defaulting to npapi - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "npapi - Win32 Release" && "$(CFG)" != "npapi - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "npapi.mak" CFG="npapi - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "npapi - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "npapi - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "npapi - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\npapi.dll"


CLEAN :
	-@erase "$(INTDIR)\np_entry.obj"
	-@erase "$(INTDIR)\npapi.obj"
	-@erase "$(INTDIR)\npapi.pch"
	-@erase "$(INTDIR)\npapi.res"
	-@erase "$(INTDIR)\npn_gate.obj"
	-@erase "$(INTDIR)\npp_gate.obj"
	-@erase "$(INTDIR)\plugin.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\npapi.dll"
	-@erase "$(OUTDIR)\npapi.exp"
	-@erase "$(OUTDIR)\npapi.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NPAPI_EXPORTS" /Fp"$(INTDIR)\npapi.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\npapi.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\npapi.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\npapi.pdb" /machine:I386 /def:".\npapi.def" /out:"$(OUTDIR)\npapi.dll" /implib:"$(OUTDIR)\npapi.lib" 
DEF_FILE= \
	".\npapi.def"
LINK32_OBJS= \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\npapi.obj" \
	"$(INTDIR)\np_entry.obj" \
	"$(INTDIR)\npn_gate.obj" \
	"$(INTDIR)\npp_gate.obj" \
	"$(INTDIR)\plugin.obj" \
	"$(INTDIR)\npapi.res"

"$(OUTDIR)\npapi.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "npapi - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\nptestapi.dll" "$(OUTDIR)\npapi.pch"


CLEAN :
	-@erase "$(INTDIR)\np_entry.obj"
	-@erase "$(INTDIR)\npapi.obj"
	-@erase "$(INTDIR)\npapi.pch"
	-@erase "$(INTDIR)\npapi.res"
	-@erase "$(INTDIR)\npn_gate.obj"
	-@erase "$(INTDIR)\npp_gate.obj"
	-@erase "$(INTDIR)\plugin.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\nptestapi.dll"
	-@erase "$(OUTDIR)\nptestapi.exp"
	-@erase "$(OUTDIR)\nptestapi.ilk"
	-@erase "$(OUTDIR)\nptestapi.lib"
	-@erase "$(OUTDIR)\nptestapi.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NPAPI_EXPORTS" /D "XP_WIN" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\npapi.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\npapi.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\npTestapi.pdb" /debug /machine:I386 /def:".\npapi.def" /out:"$(OUTDIR)\npTestapi.dll" /implib:"$(OUTDIR)\npTestapi.lib" /pdbtype:sept 
DEF_FILE= \
	".\npapi.def"
LINK32_OBJS= \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\npapi.obj" \
	"$(INTDIR)\np_entry.obj" \
	"$(INTDIR)\npn_gate.obj" \
	"$(INTDIR)\npp_gate.obj" \
	"$(INTDIR)\plugin.obj" \
	"$(INTDIR)\npapi.res"

"$(OUTDIR)\nptestapi.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("npapi.dep")
!INCLUDE "npapi.dep"
!ELSE 
!MESSAGE Warning: cannot find "npapi.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "npapi - Win32 Release" || "$(CFG)" == "npapi - Win32 Debug"
SOURCE=.\np_entry.cpp

"$(INTDIR)\np_entry.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\npapi.pch"


SOURCE=.\npapi.cpp

"$(INTDIR)\npapi.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\npapi.pch"


SOURCE=.\npapi.rc

"$(INTDIR)\npapi.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\npn_gate.cpp

"$(INTDIR)\npn_gate.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\npapi.pch"


SOURCE=.\npp_gate.cpp

"$(INTDIR)\npp_gate.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\npapi.pch"


SOURCE=.\plugin.cpp

"$(INTDIR)\plugin.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\npapi.pch"


SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "npapi - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NPAPI_EXPORTS" /Fp"$(INTDIR)\npapi.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\npapi.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "npapi - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "NPAPI_EXPORTS" /D "XP_WIN" /Fp"$(INTDIR)\npapi.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\npapi.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

