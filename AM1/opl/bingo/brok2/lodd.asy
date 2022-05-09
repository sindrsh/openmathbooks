settings.outformat="pdf";
unitsize(3.25 cm);
import math;

path b = box((0,0), (1,1));
pair M = (0.5,0.5);
transform sh;

void f0(){ label("$\displaystyle \frac{1}{2}+\frac{5}{2}$", sh*M); }

void f1(){ label("$\displaystyle \frac{2}{3}+\frac{6}{3}$", sh*M); }

void f2(){ label("$\displaystyle \frac{10}{4}+\frac{7}{4}$", sh*M); }

void f3(){ label("$\displaystyle \frac{2}{5}+\frac{9}{5}$", sh*M); }

void f4(){ label("$\displaystyle \frac{11}{6}+\frac{9}{6}$", sh*M); }

void f5(){ label("$\displaystyle \frac{11}{6}-\frac{9}{6}$", sh*M); }

void f6(){ label("$\displaystyle \frac{10}{4}-\frac{7}{4}$", sh*M); }

void f7(){ label("$\displaystyle \frac{6}{3}-\frac{5}{3}$", sh*M); }

void f8(){ label("$\displaystyle \frac{5}{3}$", sh*(0.5,0.75));
label("utvida med 4", sh*(0.5,0.25));
}

void f9(){
	label("$\displaystyle \frac{6}{9}$", sh*(0.5,0.75));
	label("utvida med 7", sh*(0.5,0.25));
}

void f10(){
	label("$\displaystyle \frac{1}{8}$", sh*(0.5,0.75));
	label("utvida med 10", sh*(0.5,0.25));
}

void f11(){
	label("$\displaystyle \frac{3}{4}$", sh*(0.5,0.75));
	label("utvida med 5", sh*(0.5,0.25));
}


void f12(){
	label("$\displaystyle \frac{10}{8}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
	label("med 2", sh*(0.5,0.25));
}


void f13(){
	label("$\displaystyle \frac{15}{9}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
	label("med 3", sh*(0.5,0.25));

}

void f14(){
	label("$\displaystyle \frac{42}{54}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
	label("med 6", sh*(0.5,0.25));

}

void f15(){
	label("$\displaystyle \frac{40}{30}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
	label("med 10", sh*(0.5,0.25));
}

void f16(){
	label("$\displaystyle \frac{2}{3}-\frac{1}{2}$", sh*M);
}

void f17(){
	label("$\displaystyle \frac{5}{6}-\frac{2}{9}$", sh*M);
}

void f18(){
	label("$\displaystyle \frac{3}{7}+\frac{5}{8}$", sh*M);
}

void f19(){ label("$\displaystyle \frac{3}{5}+\frac{7}{6}$", sh*M); }

void f20(){ label("$\displaystyle \frac{3}{2}\cdot 8$", sh*M);  }

void f21(){ label("$\displaystyle \frac{4}{5}\cdot 20$", sh*M);  }

void f22(){ label("$\displaystyle \frac{11}{9}\cdot 18$", sh*M);  }

void f23(){ label("$\displaystyle \frac{1}{4}$", sh*M);  }

void f24(){ label("$\displaystyle \frac{1}{5}$", sh*M);  }

void f25(){ label("$\displaystyle \frac{2}{5}$", sh*M);  }

void f26(){ label("$\displaystyle \frac{3}{4}$", sh*M);  }

void f27(){ label("$\displaystyle \frac{1}{2}$", sh*M);  }

void f28(){ label("$\displaystyle \frac{3}{5}$", sh*M);  }

void f29(){ label("$\displaystyle \frac{4}{5}$", sh*M);  }

void f30(){ label("$\displaystyle 12\cdot\frac{10}{6}$", sh*M);  }

void f31(){ label("$\displaystyle 24\cdot\frac{7}{8}$", sh*M);  }

void f32(){ label("$\displaystyle 12\cdot\frac{5}{4}$", sh*M);  }


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

