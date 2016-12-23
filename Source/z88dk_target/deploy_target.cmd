SET ORIGIN=%~dp0
SET SOURCEDIR=%~dp0libsrc\_DEVELOPMENT\target\zalt\
SET TARGETDIR=C:\z88dk\libsrc\_DEVELOPMENT\target\zalt\
@SET PATH=%PATH%;C:\z88dk\bin\

:: copy everything from developer location to runtime location
xcopy "%SOURCEDIR%*.*" %TARGETDIR% /Y /E

@cd %TARGETDIR%startup
:: run transforms (M4)
m4 zalt_crt_0.asm.m4 > zalt_crt_0.asm

@cd ..\..\..
:: build libs
::CALL WinMake zalt

@cd %ORIGIN%
::pause