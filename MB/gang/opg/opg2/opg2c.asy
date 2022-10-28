import "/home/sindre/G/fig/figs.asy" as figs;
settings.outformat="pdf";
defaultpen(fontsize(12 pt));
settings.render=5;
size(19cm,0cm);

real j = 7;
real b = 10*j;

draw((0,0) -- (b+0.75,0));

void tcks(real tc){
for (int i=0; i*tc<= b; ++i){
	real x = i*tc; 
	mktc(x, format(x));
    	}
    	}

tcks(j);    


