@echo off
sc stop wuauserv
sc config wuauserv start= disabled
net stop bits
sc config bits start= disabled
echo Windows Update is now disabled.
pause
