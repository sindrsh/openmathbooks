def antall_kvadrat(n):
    return n**2 + 2*n + 1

forrige_sum = 0
ny_sum = 0
n = 0
while ny_sum < 1000000:
    n += 1
    forrige_sum = ny_sum
    ny_sum = forrige_sum + antall_kvadrat(n)

print(1000000-forrige_sum) # kvadrat igjen
print(n-1)  # antall figurer

