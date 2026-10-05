konto = 120000
sparebeløp = 24000
vekstfaktor = 1.058
år = 0

while konto < 1000000:
    konto = konto + sparebeløp
    konto = konto * vekstfaktor
    år = år + 1

print(år)
print(konto)
