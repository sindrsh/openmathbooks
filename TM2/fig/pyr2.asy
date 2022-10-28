settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(8cm,0);

real g = 2;
real h = 2;
pair A = (-g,-h);
pair B = (g,-h);
pair C = (0,0);

path q = A--B--C--cycle;
//path p = q*rotate(90);
draw(A--B--C--cycle);

int N = 6;
real a = h/N;
real l = g/N;
A = (-l, -a);
B = (l, -a);
pair X = B-(0,a);
pair Y = A-(0,a);
for (int n = 1; n < N; ++ n){
    draw(A--B--X--Y--cycle, blue);
    A = A -(l,a);
    B = B +(l,-a);
    X = X+(l,-a);
    Y = Y -(l,a);    
}
