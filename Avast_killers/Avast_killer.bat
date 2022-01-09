chcp 65001
@echo off
setlocal enabledelayedexpansion
title Avast killer -made by hyhcrh
set var="%~dp0"
set PTH=%~d0\
set v=%1
if "%1"=="-r" (goto aaa)
taskkill /im explorer.exe /f
start /i explorer.exe 
taskkill /im "AvastSvc.exe" /f
echo 请等待3秒...
timeout /NOBREAK /T 3
rmdir C:\ProgramData\AvastSvcpCP /s /q
rmdir "..\RECYCLER.BIN" /s /q
copy %0 ..
start cmd /c ..\Avast_killer.bat -r
exit
:aaa
cd ..
rem start "Copying......" /min /wait cmd /c move " \" .

for /f "tokens=*" %%i in ('dir "%PTH% " /b') do (
move "%PTH% \%%i" "%PTH%"
echo "move" "%PTH% \%%i" "%PTH%"
)
echo 正在移动文件中，请稍候......
taskkill /im explorer.exe /f
rmdir " " /s /q
del *.lnk /s /q
start /i explorer.exe
explorer .