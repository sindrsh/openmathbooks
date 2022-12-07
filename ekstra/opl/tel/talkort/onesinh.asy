import talkortfigs;

real opac = 0.2;
real w = a; // width

void drwnum(int n=1){
	fill(numb, p1);
	label(scale(10)*Label((string) n,(a/2,b/2),black));
}

void drwlab(string l=" "){
	label(scale(5)*Label(l,(w/2,5b/6),black));
	fill(box((0,0),(w,b)),p1);
}




