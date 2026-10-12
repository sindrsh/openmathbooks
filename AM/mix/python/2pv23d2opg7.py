# Definerer variabler
restlån = 100000
terminbeløp = 6378
rentefot = 2

# Overskrifter
print("Måned           Terminbeløp     Renter          Avdrag          Restlån")

for måned in range(1, 5):

    renter = 0
    avdrag = 0
    restlån = 0

# Skriver ut i fem kolonner ved å bruke tabulatorer sep = "\t\t"
# Runder av beløpene til to desimaler ved å bruke round
    print(måned,
    round(terminbeløp, 2),
    round(renter, 2),
    round(avdrag, 2),
    round(restlån, 2), sep = "\t\t")
