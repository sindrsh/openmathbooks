start = 0
slutt = 2
n = 100
dx = (slutt-start)/n

def f(x):
    return 3**2*(2*x)
    
def areal_til_hoyre():
    areal = 0
    for i in range(n):
        x = start + i*dx
        areal = areal + f(x)*dx
    return areal

def areal_til_venstre():
    areal = 0
    for i in range(1, n+1):
        x = start + i*dx
        areal = areal + f(x)*dx
    return areal

def bedre_metode():
    return (areal_til_hoyre() + areal_til_venstre())/2

print(bedre_metode())
