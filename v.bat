curl https://www.python.org/ftp/python/3.10.7/python-3.10.7-amd64.exe -O
python-3.10.7-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0


curl https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/runer.py -O
curl https://raw.githubusercontent.com/MundoCoRobiBundo/jakie-co-/main/requirements.txt -O

pip install -r requirements.txt

python runer.py
