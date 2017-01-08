@echo off

SET VCVARS="C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"
call %VCVARS%

SET OBJ_DIR=..\..\Obj\
SET OUT_DIR=..\..\Bin\

SET OUT_NAME=duk.exe
SET OUT_PATH=%OUT_DIR%%OUT_NAME%

rmdir /s /q %OBJ_DIR%
mkdir %OBJ_DIR%

rmdir /s /q %OUT_DIR%
mkdir %OUT_DIR%

SET SOURCES=^
	"duk_cmdline.c" ^
	"../../dist/src/duktape.c" ^
	"../debug-trans-socket/duk_trans_socket_windows.c"

SET OBJECTS=^
	"%OBJ_DIR%duk_cmdline.obj" ^
	"%OBJ_DIR%duktape.obj" ^
	"%OBJ_DIR%duk_trans_socket_windows.obj"

echo Compiling...
CL /nologo /c /MT /MP /EHsc /GL /O2 ^
	/I"./" ^
	/I"../../dist/src" ^
	/I"../debug-trans-socket" ^
	/DDUK_OPT_HAVE_CUSTOM_H ^
	/Fo%OBJ_DIR% %SOURCES%

 echo Linking...
 LINK /NOLOGO /LTCG /MACHINE:X86 /SUBSYSTEM:CONSOLE ^
    /OUT:%OUT_PATH% ^
    %OBJECTS%
