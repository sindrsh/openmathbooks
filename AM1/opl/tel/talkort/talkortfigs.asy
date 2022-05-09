import graph;
settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(1cm);

usepackage("icomma");
usepackage("amsmath");
usepackage("amssymb");


real a = 4.3;
real b = a*((sqrt(5)+1)/2);
real sc = a/10;
real y = 0.2;
real bmarg = 0.4;


void db(int I=1, int J=1, int m=I, int n=J, pair sh=(0,0), pen p=white, pen p1=black, bool l=false, real ls=0.0, real opac=0.1, real y = 0){
	path b = box((0,0),sc*(1,1));
	int cnt = 0;
	for (int i = 1; i <= I; ++i){
		for (int j = 1; j <= J; ++j){
			if (i<=m || j<=n){
			filldraw(shift(sh+(0,bmarg)+(0,y*(j-1))+sc*(i-1,j-1))*b, p+opacity(opac), drawpen=p1); 
			++cnt;
			}
			} 
		}
		if (l == true){
			string name = "$%d$";
			string lb = format(name, cnt);
		 	label(lb,(I/2+sh.x,-ls+sh.y),S);
		 }
}
path numb = box((0,0),(a,b));

pen p1 = blue+opacity(0.1);
pen p10 = green+opacity(0.1);
pen p100 = orange+opacity(0.3);

pen p1fill = blue;
pen p10fill = deepgreen;
pen p100fill = orange;

real d = 0.2;



