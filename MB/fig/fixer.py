import os

def fix(name):
    f = open(name, "r")
    content = f.read()
    """
    if not 'import "../../inh' in content and not 'import ../../inh_opg' in content and not 'import figs' in content:
        print(name)
    """
    
    
    content = content.replace("import inh;", 'import "../../inh" as inh;')
    content = content.replace("import geo;", 'import "../../geo" as geo;')

    content = content.replace('"/home/sindre/G/fig/tri"', 'import "../../geo" as geo;')
    content = content.replace('"/home/sindre/G/fig/figs" as figs;', 'import figs;')
    content = content.replace('"/home/sindre/G/fig/inh"', 'import "../../inh" as inh;') 

    file = open(name, "w")
    file.write(content)
    file.close()

for name in os.listdir():
    if ".asy" in name:
        fix(name)
    


