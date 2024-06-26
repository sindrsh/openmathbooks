import graph;

pair O = (0,0);

pair f(real v){
	return (cos(v),sin(v));
}

void mksq2(pair A=(0,0), pair B=(1,0), real sc=1, real u=sc, pen p=black, real rot=0, bool h=true){
	real k = 0.3cm;
	pair nx = k*(B-A)/abs(B-A);
	pair ny = (nx.y, -nx.x);
	path sq;
    if (h){sq=sc*nx--sc*nx+u*ny--u*ny;}
    else sq=(0,0)--sc*nx--sc*nx+u*ny--u*ny--cycle;
    draw(A,rotate(rot)*sq, p);
}

void dv(pair A, pair B, pair C, string l="$u$", pair al=E,real sc=0.5, pen p = blue, pair D=(0,0)){
	pair AC = A-C;
	pair BC = B-C;
	real v1 = atan2(AC.y, AC.x);
	real v2 = atan2(BC.y, BC.x);
	write((v1-v2)*180/pi);
	path s;
	s = graph(f, D.x+v1, D.y+v2, operator..);
	draw(shift(C)*scale(sc)*s,p, L=l, align=al);
}

struct Tri{
	pair A =(0,0);
	pair B;
	pair C;
	real a;
	real b;
	real c;
	real vA;
	real vB;
	real vC;
	real Ar;
	real s;
	pair AB;
	pair AC;
	pair BC;
	pair Dt;
	pair Et;
	pair Ft;
	real r;
	real R;
	pair rs;
	pair Rs;

	void tri(real a, real b, real c, real sc=1){
		if(c >= a+b){write("Trekanten kan ikke konstrueres"); exit();}
		if (c-a <-b){write("Trekanten kan ikke konstrueres"); exit();}
		a = sc*a; b = sc*b; c = sc*c;
		this.a = a; this.b = b;	this.c = c;
		this.s = 1/2*(a+b+c);
		this.Ar = sqrt((s-a)*(s-b)*(s-c)*s);
		this.r = 2*Ar/(a+b+c);
		this.R = a*b*c/(4*Ar);
		real x = (c^2-a^2+b^2)/(2*c);
		real h = sqrt(b^2-x^2);
		this.B = (c, 0);
		this.C = (x, h);
		write(abs(this.C-this.B), abs(this.C),abs(this.B));
		//draw(A--B--C--cycle);
	}
	void mkv(){
		real coss(real a, real b, real c){
			return acos((b**2+c**2-a**2)/(2*b*c))*180/pi;
		}
		this.vA = coss(a,b,c);
		this.vB = coss(b,a,c);
		this.vC = coss(c,b,a);
	}
	void mkvec(){
		this.A = A; this.B = B; this.C=C;
		this.AC = (C-A)/abs(C-A);
		this.BC = (C-B)/abs(C-B);
		this.AB = (B-A)/abs(B-A); 
	}
	
	void mkR(){
		real D = 2*(B.x*C.y-B.y*C.x);
		real Ux = 1/D*(C.y*(B.x**2+B.y**2)-B.y*(C.x**2+C.y**2));
		real Uy = 1/D*(B.x*(C.x**2+C.y**2)-C.x*(B.x**2+B.y**2));
		this.Rs = (Ux,Uy);
	}
	
	void mkt(){
	 mkvec();
	 this.Dt = this.A+(s-a)*this.AB;
	 this.Et = this.B+(s-b)*this.BC;
	 this.Ft = this.A+(s-a)*this.AC;
	 this.rs = A+Dt+(-AB.y, AB.x)*r;
	}
	
	void v(int S = 1, pair al=NE, string l="", real r=0.2, pen p=blue){
		pair P = this.A;
		real v0 = 0;
		real v1 = this.vA;
		if (S==2){
			P = this.B;
			v0 = 180;
			v1 = 180-this.vB;
		}
		if (S==3){
			P = this.C;
			v0 = -vB;
			v1 = -180+this.vA;
		}		
		path s = arc(P, r, v0, v1);
		draw(s, p, L=Label(l, align=al, 
									position=Relative(0.5)));
	}

real ar(){
		return sqrt((s-a)*(s-b)*(s-c)*s);	
		}	
	
	void drs(string s="a", bool lb=false, string l="", pair al=S, pen p=black){
		pair A = this.B;
		pair B = this.C;
		real k = this.a;
		if (s=="b"){
			A = this.A;
			B = this.C;
			k = this.b;
		}
		if (s=="c"){
			A = this.A;
			B = this.B;
			k = this.c;
		}		
		if (lb == false){
			draw(A--B, p);
		}
		if (l!=""){
			draw(A--B, p, L=Label(l), align=al);
			}
		if (lb){
			draw(A--B, p, L=Label((string) k, align=al));
		}
		string name = "%0.1f";
		string l = format(name, abs(k));
	}
	void rors(real rot=0, pair sh=(0,0)){
		this.A=shift(sh)*rotate(rot)*this.A;	
		this.B=shift(sh)*rotate(rot)*this.B;
		this.C=shift(sh)*rotate(rot)*this.C;	
	}						 
}

Tri mktri(real a=0, real b=0, real c=0, real vA=0, real vC=0,real sc=1){
	Tri t;
	t.tri(a, b, c, sc);
	return t;
}

