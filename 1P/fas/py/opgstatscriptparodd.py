
def stat(data):
	data.sort()
	n = len(data)
	if n % 2 == 1:
		median = data[n // 2]
	else: 
		median = (data[n//2-1] + data[n//2])/2
	
	gjennomsnitt = sum(data)/n
	
	maks_antall = 2
	typetall = []
	
	for element in data:
		antall = data.count(element)
		if antall > maks_antall:
			maks_antall = antall
			typetall = [element]
		if antall == maks_antall:
			if element not in typetall:
				typetall.append(element)
	
	print("typetall: ", typetall)
	print("median: ", median)
	print("gjennomsnitt: ", gjennomsnitt)

data = [3.2, 2.9, 1.8, 4.2, 20915.3]
stat(data)
