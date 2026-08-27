import re

def extract_commands(file_path):
    # Les innholdet i .tex-filen
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()

    # Liste for oppgaver (punkt 1)
    oppgaver = set()

    # Liste for grubler (punkt 2)
    grubler = set()

    # Regex for å finne \op{s} eller \eksop{*}{s}
    oppgave_pattern = re.compile(r'\\(?:op|eksop)\{[^}]*\}{([^}]*)}')
    oppgave_matches = oppgave_pattern.findall(content)
    oppgaver.update(oppgave_matches)
    
    oppgave_pattern = re.compile(r'\\(?:op)\{([^}]*)\}')
    oppgave_matches = oppgave_pattern.findall(content)
    oppgaver.update(oppgave_matches)

    # Regex for å finne \grupop{s}, \grubeksop{s}{*} eller \grubrecceksop{}{*}
    gruble_pattern = re.compile(r'\\(?:grubop|grubeksop|grubeksoprecc)\{([^}]*)\}')
    gruble_matches = gruble_pattern.findall(content)
    grubler.update(gruble_matches)

    # Resultater
    result = {
        "oppgaver": oppgaver,
        "grubler": grubler,
    }

    return result
    
def extract_fasit(file_path):
    # Les innholdet i .tex-filen
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()
    # Liste for oppgaver (punkt 1)
    oppgaver = set()

    # Liste for grubler (punkt 2)
    grubler = set()

    # Sjekk om ordene fra oppgaver forekommer i \opr{s}
    opr_pattern = re.compile(r'\\(?:opr)\{([^}]*)\}')
    opr_matches = opr_pattern.findall(content)
    opr_set = set(opr_matches)
    
    # Sjekk om ordene fra grubler forekommer i \grubr{s}
    grubr_pattern = re.compile(r'\\(?:grubr)\{([^}]*)\}')
    grubr_matches = grubr_pattern.findall(content)
    grubr_set = set(grubr_matches)


    # Resultater
    result = {
        "oppgaver": opr_set,
        "grubler": grubr_set,
    }

    return result    
    

# Eksempel på bruk
for p in ["meng", "alg"]: # , "geo", "vek", "lim", "der", "inv"]:
    print(p)
    file_path = "/home/sindre/openmathbooks/TM1/"+p+"/"+p+"_opg_bm.tex"  # Erstatt med stien til din .tex-fil
    file_path2 = "/home/sindre/openmathbooks/TM1/"+p+"/"+p+"_fas.tex"
    result1 = extract_commands(file_path)
    result2 = extract_fasit(file_path2)
    
    op_number = True
    grub_number = True
    
    if result1["oppgaver"]-result2["oppgaver"]:
        op_number = False
    if result1["grubler"]-result2["grubler"]:
        grub_number = False
    
    if op_number:
        for i in range(len(result1["oppgaver"])):
            print(list(result1["oppgaver"])[i], list(result2["oppgaver"])[i])
            if list(result1["oppgaver"])[i] != list(result2["oppgaver"])[i]:
                print("Not arranged: ", list(result1["oppgaver"])[i], list(result2["oppgaver"])[i])
                break
                
    if grub_number:
        for i in range(len(result1["grubler"])):
            if list(result1["grubler"])[i] != list(result2["grubler"])[i]:
                print("Not arranged: ", list(result1["grubler"])[i], list(result2["grubler"])[i])
                break
    
    print("Manglende oppgaver")
    print(result1["oppgaver"]-result2["oppgaver"])
    print("Manglende grubler:")
    print(result1["grubler"]-result2["grubler"])
    
