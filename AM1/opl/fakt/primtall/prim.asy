settings.outformat="pdf";
defaultpen(fontsize(16 pt));

unitsize(1.4 cm);

path b = box((0,0),(1,1));

for (int i=0; i<150;++i){
	int j = i # 10;
	int k = i % 10;
	string s = (string) (i+1);
	draw(shift(k,j)*b);
	label(s,(0.5,0.5)+(k,j));
}
