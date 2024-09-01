folgere1 = 24008 #april
folgere2 = 24008 #april

# runder av følgere til nærmeste heltall
# printer følgere bare som en sjekk
for i in range(1, 5):
    folgere1 = round(folgere1*1.35)
    folgere2 = round(folgere2*(1.35+0.05*i))
    print(folgere1, folgere2)
print(' ')    
print(folgere2/folgere1)
    

