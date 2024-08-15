import desinh;
import "../figs" as fig;
unitsize(0.5 cm);

real dx = 0.5;

real y = 15;

ddb(1,1,sh=(1+2dx,y),l=true);
db(1,1,sh=(0,y),l=true);
ten(1,sh= (-1-2dx,y),l=true);
hundred(1,sh=(-11-4dx,y),l=true);

ten(4,sh=(-8,0));

db(1,7, sh=(-3.5,0), l=false);

ddb(5,2, n=1,m=3, sh=(-2,0), l=false);

line_sep(-14,5,12);


