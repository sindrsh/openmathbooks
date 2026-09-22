import inh;
import figs;
size(10cm,6cm,keepAspect=false);


mkgrid((0,6),(0,1),dx=10,dy=0.2);
xaks(0,6,tck=false);
yaks(0,1,tck=true,tckl=true,tc=0.2, bex=0.1);

pen p2 = blue;
pen p3 = red;

pair A = (1,2365/2500);
pair B = (2,2500/2500);
pair C = (3,2250/2500);
pair D = (4,2200/2500);
pair Ep = (5,2400/2500);
pair F = (6,2100/2500);

dott(A);
dott(B);
dott(C);
dott(D);
dott(Ep);
dott(F);

draw(A--B--C--D--Ep--F);

mktc(1,"2009");
mktc(2,"2010");
mktc(3,"2011");
mktc(4,"2012");
mktc(5,"2013");
mktc(6,"2014");


//label(rotate(90)*Label("antall 1000 mobiltelefoner solgt"), (-1.2,0));
label("år",(3.5,0), 5S);

label("Mobiltelefonsalg i Norge 2009-2015 skalert med 2\,500\,000",(3.5,1), 4N);
