import inh;
import figs;
size(11cm,6.5cm,keepAspect=false);


mkgrid((0,6),(0,2500),dx=10,dy=500);
xaks(0,6,tck=false);
yaks(0,2800,tck=true,tckl=true,tc=500);



pen p2 = blue;
pen p3 = red;

pair A = (1,2365);
pair B = (2,2500);
pair C = (3,2250);
pair D = (4,2200);
pair Ep = (5,2400);
pair F = (6,2100);

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

pair A = (1,1665);
pair B = (2,1250);
pair C = (3,790);
pair D = (4,300);
pair Ep = (5,240);
pair F = (6,147);

draw(A--B--C--D--Ep--F,p2);


dott(A,p2);
dott(C,p2);
dott(D,p2);
dott(Ep,p2);
dott(F,p2);

pair A = (1,700);
pair B = (2,1250);
pair C = (3,1460);
pair D = (4,1900);
pair Ep = (5,2160);
pair F = (6,1953);

dott(A,p3);
dott(C,p3);
dott(D,p3);
dott(Ep,p3);
dott(F,p3);
draw(A--B--C--D--Ep--F,p3);

dott(B);


pair L1 = (6.1,1500);
pair L2 = (6.5,1500);

draw(L1--L2, black+1bp);
label("totalt",L2,E);
pair dY = (0,-200);
draw(L1+dY--L2+dY, red+1bp);
label("m. sm.f.",L2+dY,E);
dY = 2*dY;
draw(L1+dY--L2+dY, blue+1bp);
label("u. sm.f.",L2+dY,E);

label(rotate(90)*Label("antall mobiltelefoner solgt"), (-1.2,1300));
label("år",(3.5,-400));

label("Mobiltelefonsalg i Norge 2009-2015",(3.5,3000));
