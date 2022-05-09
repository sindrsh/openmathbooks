unitsize(0.25cm);



void mkgrid(int a=0,int b=0){
	pen p = grey+opacity(0.5);
	path p1 = (0,0)--(a,0);
	path p2 = (0,0)--(0,-b);
	for(int i=0; i<=b;++i){
		draw(shift(0,-i)*p1,p);
	}
	for(int i=0; i<=a;++i){
		draw(shift(i,0)*p2,p);
	}
}
