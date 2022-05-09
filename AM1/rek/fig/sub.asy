import inh;

unitsize(0.5 cm);
real dx = 0.4;
real dy = -0.9;
real dyy = 0.6;

path c = (-1.5dx,-1/3*dy)--(-0.5*dx,1/3*dy);

void su(int k, int m){
	real h1 = 0.8;
	real h2 = -2.5;
	string s = (string) k;
	string[] s = array(s);
	string s2 = (string) m;
	string[] s2 = array(s2);
	int q = k - m;

	string s3 = (string) q;
	string[] s3 = array(s3);
	write(q);

	real lmarg = (-2*s.length-2-2*s2.length)*dx;

	
	for (int i = 0; i < s.length; ++i){
		label(s[s.length-1-i],-((2*i+1)*dx,0),black);
	}

	for (int i = 0; i < s2.length; ++i){
		label(s2[s2.length-1-i],-((2*i+1)*dx,-dy),red);
	}
	
	
	
	for (int i = 0; i < s3.length; ++i){
		label(s3[s3.length-1-i],-((2*i+1)*dx,-2dy),black);
	}
	
	int[] L = {s.length,s2.length,s3.length};
	L = sort(L);
	int L = L[2];
	
	
	for (int i = 0; i < L; ++i){
		path b = shift(-2*dx*i-2*dx,0)*box((0,h1),(2*dx,h2));
		pen p = p1;
		if (i==1){p=p10;}
		if (i==2){p=p100;}
		if (i==3){p=yellow+opacity(0.5);}
		filldraw(b, p+opacity(0.1),drawpen=grey+opacity(0.1));	
	}
	
	draw(((-2*(L)-2)*dx,1.5dy)--(0,1.5dy));
	label("$-$",-((2*(L)+1)*dx,-dy));
	label("$=$",-((2*(L)+1)*dx,-2dy));
}



