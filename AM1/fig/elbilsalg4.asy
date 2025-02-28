import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;
usepackage("inputenc");

unitsize(0.75cm);

real s = 50000;

real f(real x){
	return (38138.78x-72988.14)/s;
	
}

real g(real x){
	return (4760.61x^2-14227.92x+14289.7)/s;
}

mkgrid((0,11), (0,9));

pair A = (0,3347/s);
pair B = (1,5381/s);
pair C = (2,9565/s);
pair D = (3,19678/s);
pair Ep = (4,42356/s);
pair F = (5,73312/s);
pair G = (6,101126/s);
pair H = (7,138477/s);
pair Ip = (8,194900/s);
pair Jp = (9,260688/s);
pair K = (10,337201/s);
pair L = (11,455271/s);

dott(A);
dott(B);
dott(C);
dott(D);
dott(Ep);
dott(F);
dott(G);
dott(H);
dott(Ip);
dott(Jp);
dott(K);
dott(L,red);

for(int i=1; i<10; ++i){
	mktcy(i, (string) (i*s));
}

mktc(0,"0");

label("År etter 2010",(5,-1.5));
label(rotate(90)*Label("Antall elbiler"),(-2.5,4));

xaks(0,11,bex=1.05,tck=true);
yaks(-2,9,bex=1.05);

draw(graph(f,0,11), blue, L=Label("lineær regresjon",position=MidPoint,align=2NW));

draw(graph(g,0,11), deepgreen, L=Label("andregradsfunksjon",position=EndPoint,align=S+2W));
