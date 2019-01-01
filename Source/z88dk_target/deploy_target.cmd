@SET SOURCEDIR=%~dp0libsrc\_DEVELOPMENT\target\zalt\
@SET TARGETDIR=C:\z88dk\libsrc\_DEVELOPMENT\target\zalt\
@SET PATH=%PATH%;C:\z88dk\bin\

:: copy config
xcopy %~dp0lib\config\*.cfg C:\z88dk\lib\config /Y /E /Q

:: copy everything from developer location to runtime location
xcopy "%SOURCEDIR%*.*" %TARGETDIR% /Y /E /Q

cd %TARGETDIR%
:: run transforms (M4)
m4 -dpeaqfl zalt_crt.asm.m4 > zalt_crt.asm

cd ../../

:: build libs
CALL target\zalt\BuildZaltLibs DEBUG

@cd %~dp0
::pause