import tideltallin;

unitsize(10cm);

xaks(0,1, tc=0.025, bex=0, aex=0,ar=None);
mktcb(0,"0");
mktcb(1,"1");
mktc(0.025,"a",p=red,pos=BeginPoint);


real y = -0.1;
xaks(0,1, tc=0.05, bex=0, aex=0,ar=None, y=y);
mktcb(0,"0", y=y);
mktcb(1,"1",y=y);
mktc(0.05,"b",p=red,y=y);

y = 2.2y;
xaks(0,1, tc=0.01, bex=0, aex=0,ar=None, y=y);
mktcb(0,"0", y=y);
mktcb(1,"1",y=y);
mktc(0.01,"c",p=red,y=y, pos=BeginPoint);

