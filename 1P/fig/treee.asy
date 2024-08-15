unitsize(0.4cm);
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
	string l = "1";
	if (s[1]!=0){
	string k1 = format("$\frac{%d}", s[0], "");
    string k2 = format("{%d}$", s[1], "");
    l = k1+k2;
    }
	draw(F[0]+dx--F[1]+dx, L=Label(l, position=Relative(0.5), align=a));
}

void mkball(pair A=(0,0),string l="", pen p=white, bool end=false, string l2=""){
	filldraw(shift(A.x+dx,A.y)*unitcircle,p+opacity(0.6));
	label(l, (A.x+dx,A.y));
	if (end){ label(l2, (A.x+dx,A.y-1.8)); }
}

int N = 10;
int nl = 3;
int nc = 5;
int nr = 2;

pen lc = green;
pen cc = blue;
pen rc = red;
string l= "G";
string c= "B";
string r= "R";

real y = -4;
real x = -3;
pair B = (x,y);
pair C = (0,y);
pair D = (-x,y);


// topp og side
pair[] F2(pair B){
	pair A = (10,4);
	pair C = A-B;
	pair D = (C.x, C.y)/abs(C);
	pair[] T = {A, B+D};
	return T;
}

int [] s1={nl,N};
int [] s2={nc,N};
int [] s3={nr,N};
real h = 10;
mkline(F2((0,0)), s=s1, a=NW);
mkline(F2((1*h,0)), s=s2, a=W);
mkline(F2((2*h,0)), s=s3, a=NE);


// venstre
string o= l;
N = N-1;
pair A = (0,0);
mkball(A, l, p=lc);

mkball(B, l, p=lc, end=true, l2=o+l);
mkball(C, c, p=cc, end=true, l2=o+c);
mkball(D, r, p=rc, end=true, l2=o+r);
mkline(F(A,B), s=new int[] {nl-1,N}, NW);
mkline(F(A,C), s=new int[] {nc,N});
mkline(F(A,D), s=new int[] {nr,N}, NE);

// senter
o = c;
dx = h;
mkball(A, c, p=cc);

mkball(B, l, p=lc, end=true, l2=o+l);
mkball(C, c, p=cc, end=true, l2=o+c);
mkball(D, r, p=rc, end=true, l2=o+r);
mkline(F(A,B), s=new int[] {nl,N}, NW);
mkline(F(A,C), s=new int[] {nc-1,N});
mkline(F(A,D), s=new int[] {nr,N}, NE);

// hoyre
o = r;
dx = 2*dx;
mkball(A, r, p=rc);

mkball(B, l, p=lc, end=true, l2=o+l);
mkball(C, c, p=cc, end=true, l2=o+c);
mkball(D, r, p=rc, end=true, l2=o+r);
mkline(F(A,B), s=new int[] {nl,N}, NW);
mkline(F(A,C), s=new int[] {nc,N});
mkline(F(A,D), s=new int[] {nr-1,N}, NE);


