# Microsoft Developer Studio Project File - Name="test01" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=test01 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "test01.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "test01.mak" CFG="test01 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "test01 - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "test01 - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "test01 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 /nologo /subsystem:console /machine:I386

!ELSEIF  "$(CFG)" == "test01 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ  /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ  /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "test01 - Win32 Release"
# Name "test01 - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\address.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\clock.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\ctx.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\dealer.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\decoder.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\devpoll.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\dist.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\encoder.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\epoll.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\err.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\fq.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\io_object.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\io_thread.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\ip.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\ipc_address.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\ipc_connecter.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\ipc_listener.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\kqueue.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\lb.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\mailbox.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\msg.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\mtrie.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\object.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\options.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\own.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\pair.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\pgm_receiver.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\pgm_sender.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\pgm_socket.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\pipe.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\poll.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\poller_base.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\precompiled.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\proxy.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\pub.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\pull.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\push.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\random.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\reaper.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\rep.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\req.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\router.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\select.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\session_base.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\signaler.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\socket_base.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\stream_engine.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\sub.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\tcp.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\tcp_address.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\tcp_connecter.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\tcp_listener.cpp"
# End Source File
# Begin Source File

SOURCE=..\..\..\SOURCES\test01.cpp
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\thread.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\trie.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\v1_decoder.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\v1_encoder.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\xpub.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\xsub.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\zmq.cpp"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\SRC\zmq_utils.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\INCLUDE\zmq.h"
# End Source File
# Begin Source File

SOURCE="..\..\..\ZEROMQ-3.2.3\INCLUDE\zmq_utils.h"
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
