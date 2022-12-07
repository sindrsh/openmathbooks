import hundredsinh;

string[] Labels = {"eit hundre", "to hundre", "tre hundre", "fire hundre", "fem hundre", "seks hundre", "sju hundre", "åtte hundre", "ni hundre"};

for(int i=1; i<10; ++i){
	string number = (string) (i*100);
	drwnum(i);
	shipout(number+'a');
	erase();	
}

for(int i=1; i<10; ++i){
	string number = (string) (i*100);
	drwlab(l=Labels[i-1],i=i);
	if (i<=2){ drwboxes(i);}
	shipout(number+'b');
	erase();	
}





