import p1v26d1opg4;

string[] xs = {"2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019"};
real[] ys = {471,458,470,504,459,456,417,455,458,470,415};

real y = 600;
mkgrid((0, 12), (0, y), dy=100);
mklinegraph(xs, ys, y, tcy=100);

label((6, y), "Stjørdal", al);
label(rotate(90)*Label("Antall"), (0, y/2), 10W);
