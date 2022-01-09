chcp 65001
@echo off
setlocal enabledelayedexpansion
title 为U盘制作Avast疫苗 -made by hyhcrh
:begin
set "input=E"
set /p "input=请输入U盘盘符 (默认: E ) :"
set var=%input%:\
cls
cd /d %var%
cd /d " "
set EEE=%ERRORLEVEL%
if %EEE%==0 (
echo 检测到此U盘存在Avast病毒，请先杀毒后再次运行此文件!
echo .
echo 3秒后自动关闭此窗口...
timeout /t 3
exit
)
type " "
set EEE=%ERRORLEVEL%
cls
if %EEE%==0 (
echo 检测到此U盘存在可能已失效的疫苗, 需要重新制作吗?
echo 如果您的U盘文件系统非NTFS, 可以忽略这条消息.
echo 如果您不知道这是什么，建议按 "r" 继续.
echo 输入 "\"中止制作.
echo .
set /p input=请输入...
if "%input%"=="\" exit
)
cls
echo 正在为 %var% 制作Avast疫苗......

echo This is an Avast virus vaccine for Removable Disks.>" "
attrib " " +h +s /s /d
icacls " " /deny Everyone:F
icacls " " /deny Administrator:F
icacls " " /deny Administrators:F
icacls " " /deny SYSTEM:F

echo This is an Avast virus vaccine for Removable Disks.>"RECYCLER.BIN"
attrib "RECYCLER.BIN" +h +s /s /d
icacls "RECYCLER.BIN" /deny Everyone:F
icacls "RECYCLER.BIN" /deny Administrator:F
icacls "RECYCLER.BIN" /deny Administrators:F
icacls "RECYCLER.BIN" /deny SYSTEM:F

cls
echo 恭喜, U盘疫苗已制作完毕!
echo 如需继续制作, 请按任意键继续.
pause>RECYCLER.BIN
del null /s /q
cls
goto :begin