import "../../inhopg" as inh;

size(12cm);

real b1 = 6;
real b2 = 15;
real b3 = 20;
real k = 26988;

pen p0 = blue+opacity(0.2);
pen p1 = black+opacity(0.1);
pen p2 = white;

real h = 1;
real l = 20;

path p = shift(0, -0.5)*scale(l,1)*unitsquare;

string[] fylker= {"Viken", "Oslo", "Innlandet", "Vestfold og Telemark", "Agder", "Rogaland", "Vestland", "M\o re og Romsdal", "Tr\o ndelag", "Nordland", "Troms og Finmark"};
int[] antall = {26988, 3991, 14889, 10281, 9920, 8190, 20265, 8852, 15374, 7017, 8293};
real[] pro = {17.2, 5.8, 37.7, 21.2, 25.3, 12.7, 26.4, 28.2, 28.1, 26.3, 31.4};

filldraw(shift(0,1)*p, p0);
label("Fylker", (0,1), E);
label("Antall elever", (b1,1), E);
label("Andel i prosent", (b2,1), E);
//label("fylker", (0,1), E);
//label("Antall elever per fylke", (b1,1), E);
//label("Andel i \% per fylke", (b2,1), E);
for(int i=0; i<fylker.length; ++i){
  if (i % 2 == 0){
    filldraw(shift(0,-i)*p, p1);
  }
  else {
    filldraw(shift(0,-i)*p, p2);
  }
  filldraw(shift(b1+0.1,-0.4-i)*scale(antall[i]/k*6, 0.8)*unitsquare, Cyan, Cyan);
  label(fylker[i], (0, -i), E);
  label(string(antall[i]), (b2, -i), W);
  label(replace(string(pro[i]),".", ",")+"\%", (b3, -i), W);
}
draw((b1, 1.5)--(b1, -10.5));
draw((b2, 1.5)--(b2, -10.5));
draw((b3, 1.5)--(b3, -10.5));
