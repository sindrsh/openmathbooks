import re

def extract_commands(file_path):
    # Les innholdet i .tex-filen
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()

    # Regex for å finne \op{s} eller \eksop{*}{s}
    oppgave_pattern = re.compile(r'\\(?:op|eksop)(?:\{[^}]*\})?\{([^}]*)\}')
    oppgave_matches = oppgave_pattern.findall(content)
    

    # Regex for å finne \grupop{s}, gruboprecc{s} \grubeksop{s}{*} eller \grubrecceksop{}{*}
    gruble_pattern = re.compile(r'\\(?:grubop|grubeksop|gruboprecc|grubeksoprecc)\{([^}]*)\}')
    gruble_matches = gruble_pattern.findall(content)

    # Resultater
    result = {
        "oppgaver": oppgave_matches,
        "grubler": gruble_matches,
    }

    return result
    
def extract_fasit(file_path):
    # Les innholdet i .tex-filen
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()

    # Sjekk om ordene fra oppgaver forekommer i \opr{s}
    opr_pattern = re.compile(r'\\(?:opr)\{([^}]*)\}')
    opr_matches = opr_pattern.findall(content)
    
    
    # Sjekk om ordene fra grubler forekommer i \grubr{s}
    grubr_pattern = re.compile(r'\\(?:grubr)\{([^}]*)\}')
    grubr_matches = grubr_pattern.findall(content)


    # Resultater
    result = {
        "oppgaver": opr_matches,
        "grubler": grubr_matches,
    }

    return result    
    

# Eksempel på bruk
for p in ["meng", "alg", "geo", "vek", "lim", "der", "inv"]:
    print(p)
    file_path = "/home/sindre/openmathbooks/TM1/"+p+"/"+p+"_opg_bm.tex"  # Erstatt med stien til din .tex-fil
    file_path2 = "/home/sindre/openmathbooks/TM1/"+p+"/"+p+"_fas.tex"
    result1 = extract_commands(file_path)
    result2 = extract_fasit(file_path2)
    
    
    for i in range(len(result1["oppgaver"])):
        if result1["oppgaver"][i] != result2["oppgaver"][i]:
            print("Not arranged: ", result1["oppgaver"][i], result2["oppgaver"][i])
            break
            
    for i in range(len(result1["grubler"])):
        if result1["grubler"][i] != result2["grubler"][i]:
            print("Not arranged: ", result1["grubler"][i], result2["grubler"][i])
            break
    
    
