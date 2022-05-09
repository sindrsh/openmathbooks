settings.outformat="pdf";
defaultpen(fontsize(12 pt));

import figs;
unitsize(0.35 cm);

real st = 3.1;
for (int i=1; i <= 1; ++i){
	tiar(1, sh=(i*st,0));
	tiar(1, sh=(i*st,2));
	tiar(1, sh=(i*st,4));
	hundre(1, sh=(i*st,6));
	hundre(1, sh=(i*st,8));	
}

sym("=230", 4.5,3.7);
sym("23 \cdot 10=", -2.9,3.7);
