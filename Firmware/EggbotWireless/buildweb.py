import shutil
import os
import gzip

os.chdir("../../App")
os.system("npm run build")
os.chdir("../Firmware/EggbotWireless")

try:
    shutil.rmtree("./data/")
except FileNotFoundError:
    pass

shutil.copytree("../../App/prodbuild", "data")

for file in os.listdir("./data/"):
    file = "./data/" + file
    inf = open(file, "rb")
    infs = inf.read()
    inf.close()
    os.remove(file)

    out = gzip.GzipFile(file + ".gz", "wb")
    out.write(infs)
    out.close()
