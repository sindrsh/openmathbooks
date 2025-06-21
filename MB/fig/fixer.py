import os

def fix(name):
    f = open(name, "r")
    content = f.read()
    content = content.replace("import inh;", 'import "../../inh" as inh;')
    content = content.replace("import geo;", 'import "../../geo" as geo;')

    file = open(name, "w")
    file.write(content)
    file.close()

for name in os.listdir():
    if ".asy" in name:
        fix(name)
    


