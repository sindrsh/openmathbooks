settings.outformat="pdf";
import figs;
unitsize(0.2 cm);

real st = 4.2;
for (int i=1; i <= 10; ++i){
	einar(1, sh=(i*st,0));
	einar(1, sh=(i*st,2));
	einar(1, sh=(i*st,4));
	tiar(1, sh=(i*st,6));
	tiar(1, sh=(i*st,8));	
	if (i<10){ sym("+", i*st+st/2, 3.5);}
}

sym("23 \cdot 10=", -2.8,3.5);
