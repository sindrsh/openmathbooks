import inh;

unitsize(0.5 cm);

real dx = 0.4;
real dy = -0.9;
real dyy = 0.6;

void ad(int k, int m, int n=0, int p=0){
	real h1 = 0.8;
	real h2 = -2.5;
	string s = (string) k;
	string[] s = array(s);
	string s2 = (string) m;
	string[] s2 = array(s2);
	int q = k + m;

	string s3 = (string) q;
	string[] s3 = array(s3);
	write(q);

	real lmarg = (-2*s.length-2-2*s2.length)*dx;

	
	for (int i = 0; i < s.length; ++i){
		label(s[s.length-1-i],-((2*i+1)*dx,0),black);
	}

	for (int i = 0; i < s2.length; ++i){
		label(s2[s2.length-1-i],-((2*i+1)*dx,-dy),black);
	}
	
	
	for (int i = 0; i < s3.length; ++i){
		label(s3[s3.length-1-i],-((2*i+1)*dx,-2dy),black);
	path b = shift(-2*dx*i-2*dx,0)*box((0,h1),(2*dx,h2));
	pen p = p1;
	if (i==1){p=p10;}
	if (i==2){p=p100;}
	filldraw(b, p+opacity(0.1),drawpen=grey+opacity(0.1));	
	}

	draw(((-2*(s3.length)-2)*dx,1.5dy)--(0,1.5dy));
	label("$+$",-((2*(s3.length)+1)*dx,-dy));
	label("$=$",-((2*(s3.length)+1)*dx,-2dy));
	
	if (n != 0 || p != 0){
		label((string) n,(dx,0));	
		label((string) p,(dx,dy));
		int np = n+p;
		if (np>=10){np=np-10;}
		label((string) np,(dx,2dy));
		path b = shift(0,0)*box((0,h1),(2*dx,h2));
		filldraw(b, pd,drawpen=grey+opacity(0.1));	
		draw((0,1.5dy)--(2dx,1.5dy));
		label("$,$",(0,0.3dy));
		label("$,$",(0,1.3dy));
		label("$,$",(0,2.3dy));
	}
		
}



