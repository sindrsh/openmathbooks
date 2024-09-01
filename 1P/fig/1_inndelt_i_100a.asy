import des_ind_opg;

mkb(I=1);
label(scale(2)*Label("1"),(0.5,0.5));

int a = 10;
int b = 10;
mkb(I=a,J=b,sh=(1+dx,0),sc=(1./a,1./b),p=arpen);
label(Label("a)"),(0,dy+tdy));
filldraw(shift(tdx,dy)*box((0,0),(1./a,1./b)),arpen);

int a = 5;
int b = 9;
mkb(I=a,J=b,sh=(2+2dx,0),sc=(1./a,1./b),p=arpeno);
filldraw(shift(dx2+tdx,dy)*box((0,0),(1./a,1./b)),arpeno);
label(Label("b)"),(dx2,dy+tdy));

int a = 7;
int b = 7;
mkb(I=a,J=b,sh=(3+3dx,0),sc=(1./a,1./b),p=arpeng);
filldraw(shift(2dx2+tdx,dy)*box((0,0),(1./a,1./b)),arpeng);
label(Label("c)"),(2dx2,dy+tdy));


