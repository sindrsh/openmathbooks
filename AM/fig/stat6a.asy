import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(10cm, 5.5cm, keepAspect=false);

arpeng = Green;
arpen = Cyan;

mkgrid((0, 7000), (0, 2500), dx=7000, dy=500);

pair A1 = (1,1665);
pair B1 = (2,1250);
pair C1 = (3,790);

pair A2 = (1,700);
pair B2 = (2,1250);
pair C2 = (3,1460);

pair[] Ps1 = {A1, B1, C1};
pair[] Ps2 = {A2, B2, C2};
string[] ys = {"2009", "2010", "2011"};

for (int i=0; i<3; ++i) {
  filldraw(shift(i*2000+1000, 0)*scale(1000, Ps1[i].y)*unitsquare, arpen);
  pair p1 = 1/2*(shift(i*2000+2000, 0)*(1000, Ps1[i].y));
  label(rotate(90)*Label((string) Ps1[i].y), p1+(i*1000, 0));
  filldraw(shift(i*2000+1000, Ps1[i].y)*scale(1000, Ps2[i].y)*unitsquare, arpeng);
  pair p2 = (i*1000+1000, Ps1[i].y)+1/2*(1000, Ps2[i].y);
  label(rotate(90)*Label((string) Ps2[i].y), p2+(i*1000, 0));
  label(ys[i], (1000+500+2000*i, 0), S);
}

pair s1 = (7500, 2000);
filldraw(shift(s1)*scale(100)*unitsquare, arpeng);
label("Med smarfunksjon", s1+(0,50), 2E);

pair s2 = (7500, 1750);
filldraw(shift(s2)*scale(100)*unitsquare, arpen);
label("Uten smarfunksjon", s2+(0,50), 2E);

draw((0,0)--(0, 2500));

mktcy(0, "0");
mktcy(500, "500");
mktcy(1000, "1000");
mktcy(1500, "1500");
mktcy(2000, "2000");
mktcy(2500, "2500");

label(rotate(90)*Label("antall tusen mobilelefoner solgt"), (0, 1250), 9W);
label("\aa r", (3500, 0), 5S);
