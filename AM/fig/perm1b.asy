unitsize(0.25cm);
defaultpen(fontsize(11pt));
settings.outformat="pdf";

pair f(real r,real v){
	return (r*sin(v), r*cos(v));
}
pair[] F(pair A, pair B){
	pair C = A-B;
	pair D = (C.x, C.y)/abs(C);
	pair[] T = {A-D, B+D};
	return T;
}

real dx = 0;
void mkline(pair[] F, int[] s={0,0}, align a=W){
	string l = "";
	if (s[1]!=0){
	string k1 = format("$\frac{%d}", s[0], "");
    string k2 = format("{%d}$", s[1], "");
    l = k1+k2;
    }
	draw(F[0]+dx--F[1]+dx, L=Label(l, position=Relative(0.5), align=a));
}

void mkball(pair A=(0,0),string l="", pen p=white, bool end=false, string l2=""){
	filldraw(shift(A.x+dx,A.y)*unitcircle,p+opacity(0.5));
	label(l, (A.x+dx,A.y));
	if (end){ label(l2, (A.x+dx,A.y-1.8)); }
}

pen lc =white;
pen cc = white;
pen rc = white;
string l= "1";
string c= "2";
string c1= "3";
string r= "4";
real y = -4;
real x = 5;
pair B = (-x,y);
pair C = (0,y);
pair D = (x,y);

// topp og side
int n = 4;
real h = 15;
pair[] F2(pair B){
	pair A = ((n-1)*h/2,4);
	pair C = A-B;
	pair D = (C.x, C.y)/abs(C);
	pair[] T = {A, B+D};
	return T;
}

mkline(F2((0,0)), a=NW);
mkline(F2((1*h,0)),  a=W);
mkline(F2((2*h,0)), a=NE);
mkline(F2((3*h,0)), a=NE);

label("2. trkn.",((n-1)*h+0.8*h,y));
label("1. trkn.",((n-1)*h+0.8*h,0));


// venstre1
pair A = (0,0);
mkball(A, l, p=lc);

mkball(B, c, p=lc);
mkball(C, c1, p=cc);
mkball(D, r, p=rc);
mkline(F(A,B), a=NW);
mkline(F(A,C));
mkline(F(A,D),a=NE);

// senter1
dx = h;
mkball(A, c, p=cc);

mkball(B, l, p=lc);
mkball(C, c1, p=cc);
mkball(D, r, p=rc);
mkline(F(A,B), a=NW);
mkline(F(A,C));
mkline(F(A,D),a=NE);

// senter2
dx = 2*h;
mkball(A, c1, p=cc);

mkball(B, l, p=lc);
mkball(C, c, p=cc);
mkball(D, r, p=rc);
mkline(F(A,B), a=NW);
mkline(F(A,C));
mkline(F(A,D),a=NE);

// hoyre
dx = 3*h;
mkball(A, r, p=cc);

mkball(B, l, p=lc);
mkball(C, c, p=cc);
mkball(D, c1, p=rc);
mkline(F(A,B), a=NW);
mkline(F(A,C));
mkline(F(A,D),a=NE);

draw((0,0)--(-7.2,0), white);



