@echo off
set yyyy=%date:~6,4%
set mm=%date:~3,2%
set dd=%date:~0,2%
set timestamp=%yyyy%_%mm%_%dd%
%SystemRoot%\system32\wevtutil.exe cl Application /bu:C:\LOGS\%timestamp%_App.evtx
%SystemRoot%\system32\wevtutil.exe cl System /bu:C:\LOGS\%timestamp%_Sys.evtx
%SystemRoot%\system32\wevtutil.exe cl Security /bu:C:\LOGS\%timestamp%_Sec.evtx
