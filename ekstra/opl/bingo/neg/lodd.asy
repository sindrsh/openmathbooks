settings.outformat="pdf";
unitsize(3.25 cm);
import math;

path b = box((0,0), (1,1));
pair M = (0.5,0.5);
transform sh;

void f0(){ label("$7+(-2)$", sh*M); }

void f1(){ label("$9+(-5)$", sh*M); }

void f2(){ label("$3+(-6)$", sh*M); }

void f3(){ label("$2+(-9)$", sh*M); }

void f4(){ label("$-3+4$", sh*M); }

void f5(){ label("$-6+4$", sh*M); }

void f6(){ label("$-7+1$", sh*M); }

void f7(){ label("$\displaystyle \frac{4}{3}-\frac{2}{11}$", sh*M); }

void f8(){ label("$\displaystyle \frac{1}{3}-\frac{2}{11}$", sh*M);
}

void f9(){ label("$\displaystyle \frac{5}{7}-\frac{3}{10}$", sh*M); }

void f10(){ label("$\displaystyle \frac{6}{7}-\frac{3}{10}$", sh*M); }

void f11(){ label("$3-7$", sh*M); }


void f12(){
	label("$\displaystyle \frac{10}{8}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
}


void f13(){
	label("$\displaystyle \frac{15}{9}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
}

void f14(){
	label("$\displaystyle \frac{42}{54}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
}

void f15(){
	label("$\displaystyle \frac{40}{30}$", sh*(0.5,0.75));
	label("forkorta", sh*(0.5,0.4));
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

void f20(){ label("$-1-7$", sh*M);  }

void f21(){ label("$2-5$", sh*M);  }

void f22(){ label("$2-(-5)$", sh*M);  }

void f23(){ label("$\displaystyle \frac{1}{4}$", sh*M);  }

void f24(){ label("$\displaystyle \frac{1}{5}$", sh*M);  }

void f25(){ label("$\displaystyle \frac{2}{5}$", sh*M);  }

void f26(){ label("$\displaystyle \frac{3}{4}$", sh*M);  }

void f27(){ label("$\displaystyle \frac{1}{2}$", sh*M);  }

void f28(){ label("$\displaystyle \frac{3}{5}$", sh*M);  }

void f29(){ label("$\displaystyle \frac{4}{5}$", sh*M);  }

void f30(){ label("$4-(-6)$", sh*M);  }

void f31(){ label("$-2-(-2)$", sh*M);  }

void f32(){ label("$-7-(-6)$", sh*M);  }


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

