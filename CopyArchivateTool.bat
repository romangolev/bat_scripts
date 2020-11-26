@ECHO OFF
@ECHO BRU30_COPY/ARCHIVATE TOOL
@PAUSE

:choice1
set /P a=Do you want to copy WIP files[y/n]?
set "wip=\\10.10.50.30\shared$\Proekty\_BA__PROJECTS\0809 BRUSNICA_30\05.EXE\201.MODEL RVT\01.WIP"
if /I "%a%" EQU "y" goto :copy
if /I "%a%" EQU "n" goto :choice2

:copy
cd "C:\Program Files\Autodesk\Revit 2019\RevitServerToolCommand"
RevitServerTool createLocalRVT "NB005 Brusnika 30/02_AR/0809_BA_EXE_AR_12_2019.rvt" -s "10.10.50.60" -d "%wip%\0809_BA_EXE_AR_12_2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/02_AR/0809_BA_EXE_AR_34_2019.rvt" -s "10.10.50.60" -d "%wip%\0809_BA_EXE_AR_34_2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/02_AR/0809_BA_EXE_AR_56_2019.rvt" -s "10.10.50.60" -d "%wip%\0809_BA_EXE_AR_56_2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/02_AR/0809_BA_EXE_AR_78_2019.rvt" -s "10.10.50.60" -d "%wip%\0809_BA_EXE_AR_78_2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/02_AR/0809_BA_EXE_AR_ALL_2019.rvt" -s "10.10.50.60" -d "%wip%\0809_BA_EXE_AR_ALL_2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/01_STR/NB005-CE-EXE-STR-12-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-STR-12-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/01_STR/NB005-CE-EXE-STR-34-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-STR-34-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/01_STR/NB005-CE-EXE-STR-56-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-STR-56-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/01_STR/NB005-CE-EXE-STR-78-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-STR-78-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/01_STR/NB005-CE-EXE-STR-ALL-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-STR-ALL-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/01_HVAC/NB005-CE-EXE-HVAC-HC-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-HVAC-HC-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/01_HVAC/NB005-CE-EXE-HVAC-V-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-HVAC-V-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/02_ELE/NB005-CE-EXE-ELE-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-ELE-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/02_ELE/NB005-CE-EXE-ELE-LPG-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-ELE-LPG-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/03_PH/NB005-CE-EXE-PH-SEW-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-PH-SEW-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/03_PH/NB005-CE-EXE-PH-WS-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-PH-WS-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/04_FF/NB005-CE-EXE-FF-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-FF-2019.rvt" -o
RevitServerTool createLocalRVT "NB005 Brusnika 30/03_MEP/05_LVS/NB005-CE-EXE-LVS-2019.rvt" -s "10.10.50.60" -d "%wip%\NB005-CE-EXE-LVS-2019.rvt" -o


:choice2
set /P c=Do you want to archivate WIP files[y/n]?
if /I "%c%" EQU "y" goto :archivate
if /I "%c%" EQU "n" goto :end
 
:archivate
for /f "skip=1" %%i in ('wmic os get localdatetime') do if not defined fulldate set fulldate=%%i
set year=%fulldate:~0,4%
set month=%fulldate:~4,2%
set day=%fulldate:~6,2%
set foldername=%year%-%month%-%day%
md "\\10.10.50.30\shared$\Proekty\_BA__PROJECTS\0809 BRUSNICA_30\05.EXE\201.MODEL RVT\04.ARCHIEVE\%foldername%"
xcopy "%wip%" "\\10.10.50.30\shared$\Proekty\_BA__PROJECTS\0809 BRUSNICA_30\05.EXE\201.MODEL RVT\04.ARCHIEVE\%foldername%"
@ECHO COPY/ARCHIVATION FINISHED
@PAUSE
exit

:end
@ECHO COPY FINISHED OR TERMINATED
@PAUSE
exit