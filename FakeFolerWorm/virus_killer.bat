chcp 65001
@echo off
title Virus_killer -made by hyhcrh
for /f "delims=" %%i in ('dir /ah /s /b') do attrib "%%i" -s -h
for /r %%i in (*) do @(if %%~zi equ 680511 del "%%i" /f)
echo 杀毒完毕 ! 3秒后自动关闭窗口 !
timeout /t 3