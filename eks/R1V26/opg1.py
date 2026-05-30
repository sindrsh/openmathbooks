import numpy as np
from math import log
from scipy.optimize import curve_fit, root
from sympy import symbols, exp, diff

t = [1, 5, 10, 20, 50, 100, 150]
y = [7.3, 9.2 , 10.7, 25.6, 61.3, 183.0, 218.2]

def f(x, C, a, k):
    return C/(1+a*np.exp(-k*x))

params, _ = curve_fit(f, t, y)
C, a, k = params

print("Svar oppgave a:")
print(f"V(t) = {C:.4f} / (1 + {a:.4f}*exp(-{k:.4f} *t)")
print("")

def V(x):
    return C/(1 + a*np.exp(-k*x))

def V100(x):
    return V(x)-100
 
print("Svar oppgave b:")
print("x = ", root(V100, 80)["x"])
print("Svar oppgave c:")

d = log(a)/k
print(f"d={d:.2f}, V(d)={V(d):.2f}")

t = symbols("t")

f = C/(1+a*exp(-k*t))

df = diff(f, t)
print(df)


