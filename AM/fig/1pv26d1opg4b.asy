import p1v26d1opg4;

string[] xs = {"2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019"};
real[] ys = {210,180,217,233,231,269,313,320,399,386,337};

real y = 500;
mkgrid((0, 12), (0, y), dy=100);
mklinegraph(xs, ys, y, tcy=100);

label((6, y), "Midtre Gauldal", al);
label(rotate(90)*Label("Antall"), (0, y/2), 10W);
