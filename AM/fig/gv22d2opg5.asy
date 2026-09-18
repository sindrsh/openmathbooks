import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
size(11cm,6.5cm,keepAspect=false);

pair O = (0, 0);
mkgrid((0,7),(0,4.5),dx=10,dy=0.5);
xaks(0,7,tck=false);
yaks(0,4.5,tck=false, bex=1.1);
mktcy(0.5, "51\,000");
mktcy(1, "51\,500");
mktcy(1.5, "52\,000");
mktcy(2, "52\,500");
mktcy(2.5, "53\,000");
mktcy(3, "53\,500");
mktcy(3.5, "54\,000");
mktcy(4, "54\,500");
mktcy(4.5, "55\,000");

pen p2 = blue;
pen p3 = red;

real a = 50.5;
//korrekte tall fra SSB;
pair A = (1,53.118-a);
pair B = (2,53.334-a);
pair C = (3,53.740-a);
pair D = (4,54.282-a);
pair Ep = (5,53.412-a);
pair F = (6,52.676-a);
pair G = (7,52.839-a);


pair A = (1,54.6-a);
pair B = (2,54-a);
pair C = (3,54-a);
pair D = (4,54.282-a);
pair Ep = (5,53.412-a);
pair F = (6,52.676-a);
pair G = (7,52.1-a);


dott(A);
dott(B);
dott(C);
dott(D);
dott(Ep);
dott(F);
dott(G);

draw(A--B--C--D--Ep--F--G);

mktc(1,"2012");
mktc(2,"2013");
mktc(3,"2014");
mktc(4,"2015");
mktc(5,"2016");
mktc(6,"2017");
mktc(7,"2018");

label(rotate(90)*Label("antall millioner tonn CO2-ekvivalenter"), (-1.5,2));
label("årstall",(3.5,-0.5));

//label("Klimagassutslipp i Norge 2012-2018",(4, 5));

