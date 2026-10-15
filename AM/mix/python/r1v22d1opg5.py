def f(x):
    return x / (1 + x**2)  # Definerer funksjonen f(x) = x/(1+x^2)

x = 0
h = 0.001

while f(x) <= f(x + h):
    x = x + h

print(x)
