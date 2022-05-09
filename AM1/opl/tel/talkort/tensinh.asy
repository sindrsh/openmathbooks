import talkortfigs;

real w = 2a+d; // width

void drwnum(int n=1){
	for(int i=0; i<2; ++i){
		transform dx = shift(i*(d+a),0);
		fill(dx*numb, p10);
		if (i==0) {label(scale(10)*Label((string) n,dx*(a/2,b/2),black));}
		else label(scale(10)*Label("0",dx*(a/2,b/2),black));
	}
}

void drwlab(string l="ti", int i =0){
	label(scale(5)*Label(l,(w/2,5b/6),black));
	fill(box((0,0),(w,b)),p10);
}

void drwboxes(int i=0){
	for(int n; n<i;++n){
		pair sh = ((w-i*sc-(i-1)*y)/2, 0); 
		db(I=1, J=10, sh=sh+(sc+y)*n,p=p10fill,opac=0.2);		
	}
}









