from math import log  # log(x) er kode for ln(x)

a = 0.1
b = 3
maks_avvik = 0.0001

def f(x):  # definerer funksjonen
    return 4*x**2*log(x)

m = (a + b)/2

# abs() finner absoluttverdien
while abs(f(m)) >= maks_avvik: 

    if f(a)*f(m) < 0:
        b = m
    else:
        a = m
        
    m = (a + b)/2

print(m)
