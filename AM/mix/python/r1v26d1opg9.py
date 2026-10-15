def f(x):
    return 1/3*x**3 + 5/3*x**2 + 25/9*x

def g(x):
    h = 0.000001
    return (f(x + h) - f(x))/h

x = -4
slutt = 4
dx = 0.002
maks_avvik = 0.00001

while x < slutt:
    x = x + dx
    # sjekker om g(x) er nær 0
    if abs(g(x)) < maks_avvik: 
        if g(x - dx) * g(x + dx) > 0:
            print("f har et A for x =", x)
        elif g(x - dx) < 0 < g(x + dx):
            print("f har et B for x =", x)
        elif g(x - dx) > 0 > g(x + dx):
            print("f har et C for x =", x)
