def O(x):
    return -0.1*x**2 + 2000*x - 50000

x = 0

while O(x + 1) > O(x):
    x = x + 1

print(x)
