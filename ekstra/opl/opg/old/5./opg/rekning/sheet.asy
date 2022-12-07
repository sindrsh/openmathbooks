settings.outformat="pdf";
defaultpen(fontsize(12 pt));

unitsize(1cm);

path b = box((0,0),(0.5,1));
real cnt = 0;
real y;
for(int i=0; i<28; ++i){
	for(int j=0; j<26; ++j){
		draw(shift(i*0.5,j)*b);
	}
}



