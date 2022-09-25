import os 
for f in os.scandir("./python"): os.system(f"python {f.path}")
