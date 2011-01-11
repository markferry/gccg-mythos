@echo off
set HOME=C:
set USER=Windows
set CLIENT=.\ccg_client.exe
if exist .\home set HOME=.\home
if exist module_windows32\ccg_client.exe set CLIENT=module_windows32\ccg_client.exe
start %CLIENT% --user %USER% %1 %2 %3 %4 %5 %6 %7 %8 %9  cthulhu.xml
