import fs;

int cnt = 0;
	for (int i = 0; i < 5; ++i){
		for (int j = 0; j < 7; ++j){
			if (cnt == 33){ break; }
			sh = shift(i, j);
			draw(sh*b);
		    string f = format("f%d()", cnt);
			eval(f, true);
			++cnt;
			}
	}
