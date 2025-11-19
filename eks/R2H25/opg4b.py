start = 0
slutt = 2
n = 100
dx = (slutt-start)/n

def f(x):
    return 3**2*(2*x)

def bedre_metode():
    areal = 0
    for i in range(n):
        x_0 = start + i*dx
        x_1 = x_0+dx
        areal += f(x_0) + f(x_1)
    return dx/2*areal

print(bedre_metode())
