settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(1.2 cm);
usepackage("icomma");


void mktc(real x, string nm="", pen p=black, real y=0, position pos=EndPoint){
    draw((x,y), (0,0.15cm) -- (0,-0.15cm), p+0.75bp, L=Label(nm, position=pos));
    } 
    
draw((0,0)--(10,0));

real dx = 1;
for(int i = 1; i<10; ++i){
	mktc(i*dx,nm="0,"+string(i));
}
mktc(0,nm="0");
mktc(10,nm="1");

void barr(real x, real y=0, real l=0.1,string nm="", pen p=black){
	draw((x,y)--(x+l,y),dotted,L=Label(nm), align=N);
   // draw((x,y), (0,0.15cm) -- (0,-0.15cm), p+0.75bp);
   // draw((x+l,y), (0,0.15cm) -- (0,-0.15cm), p+0.75bp);
    }
    
barr(1,0.5,4,nm="lite truleg");
barr(5,0.5,4,nm="truleg");
//barr(0,0.5,2,nm="skjer helst ikkje");     
draw((5,0)--(5,1),dotted);
label("skjer i halvparten",(5,1.5));
label("av tilfella",(5,1.2));

draw((1,0)--(1,1),dotted);
label("nesten",(1,1.8));
label("sikkert",(1,1.5));
label("ikkje",(1,1.2));
    
draw((0,0)--(0,0.5),dotted);
label("skjer",(0,1));
label("ikkje",(0,0.7));   


draw((9,0)--(9,1),dotted);
label("nesten",(9,1.5));
label("sikkert",(9,1.2)); 

draw((10,0)--(10,0.5),dotted);
label("skjer",(10,0.7));   

