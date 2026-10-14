konto = 1500000
uttak = 120000
vf = 1.056
år = 0

while konto >= 120000:
    konto = konto * vf - uttak
    år = år + 1

print("Resultat:")
print(år)
print(konto)
