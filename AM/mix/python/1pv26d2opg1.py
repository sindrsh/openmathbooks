def U(x):
    return 5400/x + 0.0074 * x ** 2 + 50

x = 30
while x <= 120:
    print(x, U(x))
    x = x + 10
