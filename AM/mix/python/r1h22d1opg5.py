def f(x):
    return (6*x - 3)/(x - 1)    # Definerer funksjonen f(x) = (6x-3)/(x-1)

h = 0.00001

def Df(x):
    return (f(x + h) - f(x))/h

a = 1.5                        # En startverdi
while Df(a) < -3:
    a = a + 0.001

b = f(a) - Df(a)*a      # Regner ut konstantleddet

print("y = -3x +", b)
