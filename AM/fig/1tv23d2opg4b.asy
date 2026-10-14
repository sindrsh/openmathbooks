import t1v23d2opg4;

int n = 6;
real dx = 6/n;

for(int i=0; i<n; ++i){
	filldraw(shift(i,0)*scale(dx, f(i*dx))*unitsquare, arpeng);
}
draw(graph(f, -1, 7));
