beløp = 2000
vekstfaktor = 1.02
innskudd = 20000
år = 0

while beløp < 500000:
	beløp = beløp + innskudd
	beløp = beløp * vekstfaktor
	år = år + 1
	
print(år)
print(beløp)
