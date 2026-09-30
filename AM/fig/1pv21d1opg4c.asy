import p1v26d1opg4;

string[] xs = {"2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019"};
real[] ys = {100,100,79,89,94,104,105,100,108,115,132};

real y = 150;
mkgrid((0, 12), (0, y), dy=50);
mklinegraph(xs, ys, y, tcy=50);

label((6, y), "Skaun", al);
label(rotate(90)*Label("Antall"), (0, y/2), 7W);
