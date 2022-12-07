import tensinh;

string[] Labels = {"ti", "tjue", "tretti", "førti", "femti", "seksti", "sytti", "åtti", "nitti"};

for(int i=1; i<10; ++i){
	string number = (string) (i*10);
	drwnum(i);
	shipout(number+'a');
	erase();	
}

for(int i=1; i<10; ++i){
	string number = (string) (i*10);
	drwlab(l=Labels[i-1],i=i);
	drwboxes(i);
	shipout(number+'b');
	erase();	
}





