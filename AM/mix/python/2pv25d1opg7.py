matsvinn = 160
mål = matsvinn / 2
vf = 0.87
år = 2025

while matsvinn > mål:
    matsvinn = matsvinn * vf
    år = år + 1

print(år)
print(matsvinn)
