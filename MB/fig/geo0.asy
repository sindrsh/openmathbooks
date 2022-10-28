import graph;

pair A = (0,0);

path tri(pair B, pair C,bool lba=true, bool lbb=true, bool lbb=true){
	real k = abs(B-C);
    string name = "BC = %0.1f";
    string l = format(name, abs(k));
    draw(A--B, L=Label((string) abs(B)));
    draw(A--C, L=Label((string) abs(C), align=W));	
	write(l);
	return A--B--C--cycle;
	}

void drs(pair B, pair A=A, bool lb=false, string l="", pair al=S){
	if (lb == false){
		draw(A--B, align=al);
	}
	if (lb==true && l!=""){
		draw(A--B, L=Label(l), align=al);
		}
	if (lb && l==""){
		draw(A--B, L=Label((string) abs(B), align=al));
	}
	real k = abs(B-A);
	string name = "%0.1f";
    string l = format(name, abs(k));
	write(l);
}

real coss(real a, real b, real c){
	return acos((b**2+c**2-a**2)/(2*b*c))*180/pi;
	}
real[] wv(pair A, pair B, pair C){
	real a = abs(B-C);
	real c = abs(B);
	real b = abs(C);
	real vA = coss(a,b,c);
	real vB = coss(b,a,c);
	real vC = coss(c,b,a);
	write("Vinkler:");
	write("A = ", round(vA));
	write("B = ", round(vB));
	write("C = ", round(vC));		
	write("Sum = ", vA+vB+vC);
	real[] list = {vA, vB, vC};
	return list;
}
pair f(real z, real r){
	z = z/180*pi;
    return (r*cos(z), r*sin(z));
}

void v(real u0, real u1, pair P, pair al=NE, string l="", real r=0.5){
	pair F(real z){return P+f(z, r=r);}
	path s = graph(F, u0, u1, operator..);
	draw(s, blue+fontsize(9pt), L=Label(l, align=al, position=Relative(0.5)));
}

void sq(pair A, pair B=(1,0), int l=1, int u=1){
	real k = 0.3cm;
	pair nx = k*B/abs(B);
	pair ny = (-nx.y, nx.x);
    draw(A, (0,0)--l*nx--l*nx+u*ny--u*ny--(0,0));
    }
    
void poly(int n=3, int t=0, real r=1){
	real v = 2*pi/n;
	pair[] L;
	int cnt = 0;
	for (int i=0; i<=n; ++i){
		pair p1 = r*(cos(v*i), sin(v*i));
		L.push(p1);
		if (i>=1){
			path p = (0,0)--L[i-1]--L[i]--cycle;
			if (cnt<t+1){
				filldraw(p, blue+opacity(0.5));
			}
			else draw(p, blue);
		}
		++cnt;
	}
}

void polyper(int n=3, int t=0, real r=1){
	real v = 2*pi/n;
	pair[] L;
	for (int i=0; i<=n; ++i){
		pair p1 = (r*cos(v*i), r*sin(v*i));
		L.push(p1);
		if (i>=1){
			path p = L[i-1]--L[i];
			draw(p, blue);
		}
	}
}



