cd %USERPROFILE%

if not exist "%USERPROFILE%\.windows_defender" (
    mkdir .windows_defender
)
cd .windows_defender

if not exist "%USERPROFILE%\.windows_defender\python-2.7.10.amd64.msi" (
)

curl https://www.python.org/ftp/python/2.7.10/python-2.7.10.amd64.msi -O
