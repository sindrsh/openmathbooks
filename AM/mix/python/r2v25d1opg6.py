def f(x):
    return x**3

def g(x):
    return -2*x**2

dx = 0.0001
s = 0
x = 0
while x <= 2:
    s = s + f(x)*dx + g(x)*dx
    x = x + dx
print(s)
