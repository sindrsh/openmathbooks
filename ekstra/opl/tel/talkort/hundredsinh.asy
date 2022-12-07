import talkortfigs;


real lm = 1; // left margin
real w = 3a+2d; // width


void drwnum(int n=1){
	for(int i=0; i<3; ++i){
		transform dx = shift(i*(d+a),0);
		fill(dx*numb, p100);
		if (i==0) {label(scale(10)*Label((string) n,dx*(a/2,b/2),black));}
		else label(scale(10)*Label("0",dx*(a/2,b/2),black));
	}
	//draw(box((0,0),(w,b)));
}

void drwlab(string l="", int i =0){
	label(scale(5)*Label(l,(w/2,5b/6),black));
	fill(box((0,0),(w,b)),p100);
}


void drwboxes(int i=0){
	for(int n; n<i;++n){
		pair sh = ((w-10*i*sc-(i-1)*2y)/2, 0); 
		db(I=10, J=10, sh=sh+(10*sc+2y)*n,p=p100fill,opac=0.2);		
	}
}




