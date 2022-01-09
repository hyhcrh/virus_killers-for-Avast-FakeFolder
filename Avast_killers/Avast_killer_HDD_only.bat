chcp 65001
@echo off
setlocal enabledelayedexpansion
title Avast killer -made by hyhcrh
set var="%~dp0"
set PTH=%~d0\
set v=%1
if "%1"=="-r" (goto aaa)
echo 请手动关闭"C:\ProgramData\AvastSvcpCP"文件夹窗口.
echo 如果没有，可以忽略这条消息.
echo .
echo 程序将在5秒后运行，如需中止操作可直接关闭窗口.
timeout /t 5
taskkill /im "AvastSvc.exe" /f
cls
echo 请等待3秒...
timeout /NOBREAK /T 3
rmdir C:\ProgramData\AvastSvcpCP /s /q