@echo off
set yyyy=%date:~6,4%
set mm=%date:~3,2%
set dd=%date:~0,2%
set timestamp=%yyyy%_%mm%_%dd%
wmic nteventlog where filename='appevent' backupeventlog C:\LOGS\%timestamp%_App.evt
wmic nteventlog where filename='sysevent' backupeventlog C:\LOGS\%timestamp%_Sys.evt
wmic nteventlog where filename='secevent' backupeventlog C:\LOGS\%timestamp%_Sec.evt
wmic nteventlog where filename='appevent' cleareventlog
wmic nteventlog where filename='sysevent' cleareventlog
wmic nteventlog where filename='secevent' cleareventlog
