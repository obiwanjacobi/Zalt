cd "%~dp0"
del TestRunner.exe
@CALL Build.cmd
TestRunner.exe
::pause