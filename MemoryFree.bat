@echo off
cls
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
del /s /q C:\Windows\Prefetch
ipconfig /flushdns
del /s /q %temp%
wmic nteventlog where filename='system' cleareventlog
echo. 