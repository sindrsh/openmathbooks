startverdi = 2000
verdi = startverdi
vekstfaktor = 1.05
år = 0

while verdi < startverdi*2:
	verdi = verdi*vekstfaktor
	år = år + 1
	
print(verdi)
print(år)
