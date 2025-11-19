import numpy as np

a = np.array([2, -7])
b = np.array([1, 5])
c = np.array([2, -7, 1])
d = np.array([1, 5, 0])

print(a.dot(b)) # skalarprodukt av a og b
print(np.cross(c, d)) # kryssproduktet av c og d

ab = np.array([a, b])
print(np.linalg.det(ab)) # det(a,b)

