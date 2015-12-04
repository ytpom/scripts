@echo
schtasks /create /ru SYSTEM /SC WEEKLY /MO 1 /D THU /ST 01:00 /F /TN ArchiveWindowsLogs /TR "C:\script\archive_logs.cmd"
pause
