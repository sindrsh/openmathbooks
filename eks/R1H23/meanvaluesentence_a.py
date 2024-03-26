
def f(x):
	return x**2 + 3*x + 1

def c(a, b):
	return 1/2.0*(( f(b)-f(a) ) / (b-a) - 3)

print(c(1, 3))
print(c(2, 7))
print(c(10, 100))
