@echo off
title Folder Creator
color b
setlocal enabledelayedexpansion
echo Enter the folder name, you can use these codes:
echo /t - Time (eg. 16:29)
echo /d - Date (eg. 17-02-19)
echo /a - Day (eg. 17)
echo /m - Month (eg. 02)
echo /y - Year (eg. 19)
echo /f - Full Year (eg. 2019)
echo.
set /p foldername=Folder Name:
set foldername=%foldername:/t=!time:~0,5!%
set foldername=%foldername:/d=!date:~0,2!-!date:~3,2!-!date:~8,2!%
set foldername=%foldername:/a=!date:~0,2!%
set foldername=%foldername:/m=!date:~3,2!%
set foldername=%foldername:/y=!date:~8,2!%
set foldername=%foldername:/f=!date:~6,4!%
md %foldername%
PAUSE