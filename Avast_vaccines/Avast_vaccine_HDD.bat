@echo off
chcp 65001
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
title 为此电脑制作Avast疫苗 -made by hyhcrh
if exist C:\ProgramData\AvastSvcpCP\AvastSvc.exe (
echo 检测到此电脑存在Avast病毒，请先杀毒后再次运行此文件!
echo .
echo 5秒后自动关闭此窗口...
timeout /t 5
exit
)
if exist C:\ProgramData\AvastSvcpCP exit
echo This is an Avast virus vaccine for Hard Disks.>C:\ProgramData\AvastSvcpCP
icacls C:\ProgramData\AvastSvcpCP /deny Everyone:F
icacls C:\ProgramData\AvastSvcpCP /deny Administrator:F
icacls C:\ProgramData\AvastSvcpCP /deny Administrators:F
icacls C:\ProgramData\AvastSvcpCP /deny SYSTEM:F
