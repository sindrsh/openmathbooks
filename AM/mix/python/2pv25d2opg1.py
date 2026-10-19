def U(x):
    return 5000 * 0.95 ** x + 1000

print("x", "U(x)")
x = 0

while U(x) > 3000:
    print(x, U(x))
    x = x + 1
