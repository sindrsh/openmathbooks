unitsize(2.1cm);
defaultpen(fontsize(11pt));
settings.outformat="pdf";

real o = 0.3;
real sc = 2;

filldraw(unitcircle,green+opacity(o));
filldraw(shift(1,0)*unitcircle,blue+opacity(o));
filldraw(shift(0.5,1)*unitcircle,red+opacity(o));

string A = "$F$";
string B = "$H$";
string C = "$V$"; 
string c = "$\cap$";
real dy = 0.25;

real nAB = 5; 
real nAC = 3;
real nBC = 2;
real nABC =1;
real nA = 16;
real nB = 12;
real nC = 9;
nA = nA-nAB-nAC-nABC;
nB = nB-nAB-nBC-nABC;
nC = nC-nBC-nAC-nABC;
 
label(A, (0.5,1.5));
label((string) nA, (0.5,1.5-dy));

label(B, (-0.5,0));
label((string) nB, (-0.5,0-dy));

label(C, (1.5,0));
label((string) nC, (1.5,-dy));

label(A+c+B+c+C, (0.5, 0.25));
label((string) nABC, (0.5, 0.25+dy));

label(B+c+C, (0.5,-0.25));
label((string) nBC, (0.5,-0.25-dy));

label(A+c+B, (-0.1, 0.7));
label((string) nAB, (-0.1, 0.7-dy));

label(A+c+C, (1.1,0.7));
label((string) nAC, (1.1,0.7-dy));



