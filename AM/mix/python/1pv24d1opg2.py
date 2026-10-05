def f(x):
    return 20000 * 1.0485 ** x

start = 0
slutt = 10
v = (f(slutt) - f(start))/(slutt - start)

print(v)
