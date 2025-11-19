import tideltallin;

xaks(0,1, tc=0.1, bex=0, aex=0,ar=None);
mktcb(0,"0");
mktcb(1,"1");
mktc(0.1,"a",p=red);


real y = -0.5;
xaks(0,1, tc=0.25, bex=0, aex=0,ar=None, y=y);
mktcb(0,"0", y=y);
mktcb(1,"1",y=y);
mktc(0.25,"b",p=red,y=y);

y = 2y;
xaks(0,1, tc=0.5, bex=0, aex=0,ar=None, y=y);
mktcb(0,"0", y=y);
mktcb(1,"1",y=y);
mktc(0.5,"c",p=red,y=y);

