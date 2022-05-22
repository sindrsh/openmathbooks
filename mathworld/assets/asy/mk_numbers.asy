import inh;

string[] intlist = {"one", "two", "three", "four", "five", "six","seven", "eight", "nine"};


for(int i=0; i < intlist.length; ++i){

	db(i+1);
	string s = (string) (i+1);
	shipout(intlist[i]+"_0");	
	erase();
	
	db(i+1,red);
	s = (string) (i+1);
	shipout(intlist[i]+"_1");	
	erase();
	
	db(i+1,yellow);
	s = (string) (i+1);
	shipout(intlist[i]+"_2");	
	erase();
	
	db(i+1,mediumgreen);
	s = (string) (i+1);
	shipout(intlist[i]+"_3");	
	erase();
}


