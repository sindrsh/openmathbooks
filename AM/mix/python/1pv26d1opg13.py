x = 0  # x er antall år etter 2026

def f(x):
    return 20000 - 300 * x

def g(x):
    return 20000 * 0.984 ** x

while f(x) >= g(x):
    x = x + 1

print("Resultat:")
print(x)
print(f(x))
print(g(x))
