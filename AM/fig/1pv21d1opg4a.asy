import p1v26d1opg4;

string[] xs = {"2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019"};
real[] ys = {3,5,3,3,1,1,4,3,4,2,2};

real y = 6;
mkgrid((0, 12), (0, y), dy=2);
mklinegraph(xs, ys, y, tcy=2);

label((6, y), "Strand", al);
label(rotate(90)*Label("Antall"), (0, y/2), 7W);
