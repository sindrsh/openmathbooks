import inh;

unitsize(0.5 cm);
real dx = 0.4;
real dy = -0.9;

real[] g(int k, int m, real y=-3){
	string s = (string) k;
	string[] s = array(s);
	string s2 = (string) m;
	string[] s2 = array(s2);
	int q = k*m;
	
	string s3 = (string) q;
	string[] s3 = array(s3);


	real lmarg = (-2*s.length-2-2*s2.length)*dx;

	label("$=$",(dx,-0.05),blue);
	
	real[] margs ={};
	for (int i = 0; i < s.length; ++i){
		label(s[i],lmarg+((2*i+1)*dx,0),blue);
		margs.push(lmarg+(2*i+1)*dx);
	}

	real margc = lmarg+(2*s.length+1)*dx;
	label("$\cdot$",(margc,0),blue);

	for (int i = 0; i < s2.length; ++i){
		label(s2[i],margc+dx+((2*i+1)*dx,0),blue);
	}
	
	for (int i = 0; i < s3.length; ++i){
		label(s3[i],2dx+((2*i+1)*dx,0),blue);
	}

	int n = s.length+s2.length+2+s3.length;
	for (int i = 0; i < n+1; ++i){
		draw((lmarg+2*dx*i,0.75)--(lmarg+2*dx*i,y),black+opacity(0.2));
	}
	return margs;
}

real d(int n,real m, real y=0){
	real dy2 = dy-0.5;
	string s = (string) n;
	label(s,(m,y+dy),red);
	draw((m-dx,y+dy2)--(m+dx,y+dy2));
	return y+dy2;
}

real d2(int n,real m, real y=0, pen p=black){
	real dy2 = y-0.5;
	string s = (string) n;
	label(s,(m,dy2),p);
	return dy2;
}


