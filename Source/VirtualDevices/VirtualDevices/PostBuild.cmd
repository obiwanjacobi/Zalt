::%1 is target build directory

set qt=C:\Qt\5.12.0\msvc2015_64\bin

copy %qt%\Qt5Core.dll %1
copy %qt%\Qt5Gui.dll %1
copy %qt%\Qt5Widgets.dll %1

copy ..\libusb\libusb-1.0.dll %1