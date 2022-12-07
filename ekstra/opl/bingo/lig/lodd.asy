settings.outformat="pdf";
unitsize(3.6 cm);
import math;

path b = box((0,0), (1,1));
pair M = (0.5,0.5);
transform sh;

void f0(){ label("$x+8=40$", sh*M); }

void f1(){ label("$x+20=51$", sh*M); }

void f2(){ label("$39=x+9$", sh*M); }

void f3(){ label("$30=1+x$", sh*M); }

void f4(){ label("$6+x=34$", sh*M); }

void f5(){ label("$x-7=20$", sh*M); }

void f6(){ label("$x-5=21$", sh*M); }

void f7(){ label("$15=x-10$", sh*M); }

void f8(){ label("$10=x-14$", sh*M);
}

void f9(){ label("$ 6x-10=5x+13 $", sh*M); }

void f10(){ label("$ 2x-8=x+14 $", sh*M); }

void f11(){ label("$ 10x-11=9x+10 $", sh*M); }

void f12(){ label("$ 2x-15=x+5 $", sh*M); }

void f13(){ label("$ 6x+10=7x-9 $", sh*M); }

void f14(){ label("$ 7x+11=8x-7 $", sh*M); }

void f15(){ label("$ x+10=2x-7 $", sh*M); }

void f16(){ label("$ 3x+8=4x-8 $", sh*M); }

void f17(){ label("$ 6x - 10= 4x + 20 $", sh*M); }

void f18(){ label("$ 8x - 14= 6x + 14 $", sh*M); }

void f19(){ label("$ 5x = 3x + 26 $", sh*M); }

void f20(){ label("$ 9x = 7x + 24 $", sh*M); }

void f21(){ label("$ 10x = 8x + 22 $", sh*M); }

void f22(){ label("$ 4x - 10 = x + 20 $", sh*M); }

void f23(){ label("$ 9x - 15 = 4x + 30 $", sh*M); }

void f24(){ label("$ 8x - 21= x + 35 $", sh*M); }

void f25(){ label("$ 4x + 12= 8x - 16 $", sh*M); }

void f26(){ label("$ x + 32= 9x - 16 $", sh*M); }

void f27(){ label("$ x + 12 = 7x - 18 $", sh*M); }

void f28(){ label("$ x + 18= 10x - 18 $", sh*M); }

void f29(){ label("$ 2x + 7= 6x - 5 $", sh*M); }

void f30(){ label("$ 3x + 2 = 7x - 6 $", sh*M); }

void f31(){ label("$ 3x + 1= 8x - 4 $", sh*M); }

void f32(){ label("$ x + 12 = 2x - 21 $", sh*M); }


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

