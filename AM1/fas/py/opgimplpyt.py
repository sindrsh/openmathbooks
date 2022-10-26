from math import sqrt

s_n = 1;
n = 6

while 2*n <= 768:
	s_2n = sqrt(2-sqrt(4-s_n**2))
	s_n = s_2n
	n = 2*n;

print(s_2n)
