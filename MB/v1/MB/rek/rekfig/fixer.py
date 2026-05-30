import os

def fix(name):
    f = open(name, "r")
    content = f.read()
    content = content.replace('import "../../../inh" as inh;', "import inh;")
    file = open(name, "w")
    file.write(content)
    file.close()

for name in os.listdir():
    if ".asy" in name:
        fix(name)
    


