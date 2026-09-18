import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
size(11cm,6.5cm,keepAspect=false);

pair O = (0, 0);
mkgrid((0,6),(200,700),dx=10,dy=100);
xaks(0,6,tck=false);
yaks(200,750,tck=false, bex=1.1);
mktcy(200, "2000");
mktcy(700, "2500");

pen p2 = blue;
pen p3 = red;

real a = 1800;
pair A = (1,2365-a);
pair B = (2,2500-a);
pair C = (3,2250-a);
pair D = (4,2200-a);
pair Ep = (5,2400-a);
pair F = (6,2100-a);

pair P1 = (0.125, 200/3);
pair P2 = (-0.125, 400/3);
pair P3 = (0, 200);

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


pair L1 = (6.1,1500);
pair L2 = (6.5,1500);

//label(rotate(90)*Label("antall 1000 mobiltelefoner solgt"), (-1.2,1300));
label("år",(3.5,-150));

label("Totalt mobiltelefonsalg i Norge 2009-2015",(3.5,800));

draw(O--P1--P2--P3);
