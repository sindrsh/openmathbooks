# a er en funksjon som ikke tar noen argumenter. 
# Legg merke til 'def' først og ':' til slutt. 
# Kodelinjene som hører til funksjonen må stå med innrykk
def a(): 
	print("Hei, noen kalte visst på funksjon a?") 


# b er en funksjon som tar argumentet 'test'
def b(tekst): 
	print("Hei. Noen kalte på funksjon b. Argumentet som ble gitt var: ", tekst)
	
# c er er funksjon som tar argmunentene a og b
# c returnerer et objekt	
def c(a, b):
	return a+b
	
b("Hello!") # vi kaller på b med argumentet "hello"

d = c(2,3) # Vi kaller på a med	argumentene 2 og 3

print(d)

# merk at teksten gitt i a ikke blir printet, fordi vi ikke har kalt på a.




	
	

