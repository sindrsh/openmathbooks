def f(x):
	return -x**2 + 4

def areal(x):
	return x*f(x)

h = 0.0001

def der_areal(x):
	return (areal(x + h) - areal(x))/h

x = 0
dx = 0.01
while der_areal(x + dx) > 0:
	x = x + dx

print(areal(x))
