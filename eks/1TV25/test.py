def f(x):
    return x **2 + 2 * x - 15
    
x = -5
verdi = f(x)

while x <= 5:
    if f(x) < verdi:
        verdi = f(x)
        
    x = x + 1

print(verdi)
