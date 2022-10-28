import "/home/sindre/G/fig/figs.asy" as figs;
settings.outformat="pdf";
defaultpen(fontsize(12 pt));
settings.render=5;
unitsize(1cm);

real ys = 2.5;

void tcks(real tc){
for (int i=0; i*tc<= tc*10; ++i){
	real x = i*tc; 
	mktc(x, format(x), y=-tc*ys);
    	}
    	}

void jmps(real n, real m){
for (int i=0; i< m; ++i){
	real x = i*n; 
	jmp(n, 0.4*((n-1)/10+1), xs=i*n, ys=-n*ys);
    	}
    	}

for (int j=1; j<= 10; ++j){

	transform sh = shift(0,-j*ys);
	draw(sh*((0,0) -- (10*j+0.75,0)), arrow=Arrow(TeXHead));
	tcks(j);    
	jmps(j,10);
}


draw(box((-1,0),(102,-27)));
