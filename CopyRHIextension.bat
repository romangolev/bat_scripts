@ECHO OFF
@ECHO COPY pyRHI TOOL
@PAUSE

set "pyRHIlocal=C:\Users\rogolev\AppData\Roaming\pyRevit\Extensions\pyRHI.extension"
set "pyRHIserver=\\fs-hi\USERS\romangolev\pyRHI.extension"
:choice1
set /P a=Do you want to copy pyRHI to file server[y/n]?
if /I "%a%" EQU "y" goto :copy
if /I "%a%" EQU "n" goto :exit

:copy
cd "%pyRHIlocal%"
xcopy "%pyRHIlocal%" "%pyRHIserver%" /r /s
goto :exit

:end
@ECHO COPY FINISHED OR TERMINATED
@PAUSE
exit