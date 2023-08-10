def A(x):
	return x*(x**2-9)**4

t = 0
d = 0.01

while A(t) < A(t+d):
	t = t + d

print(t)
