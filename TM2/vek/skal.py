from numpy import*
from numpy.linalg import norm

a = range(-4,0)+range(0,5)
b = a[:]
c = a[:]

A = []
for i in a:
    for j in b:
        for k in c:
            A.append(asarray([i, j, k]))


def skalvekt(A):
    cosv = -1./2
    for x in A:
        for y in A:
            if dot(x,y)/(norm(x)*norm(y)) == cosv: print x, y

def vinklr(A):
    for x in A:
        for y in A:
            if dot(x,y) == 0: print x, y    

skalvekt(A)
    

    
        
            
