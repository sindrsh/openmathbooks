settings.outformat="pdf";
unitsize(3.25 cm);
import math;

path b = box((0,0), (1,1));
pair M = (0.5,0.5);
transform sh;


void f0(){ label((string)(2*3), sh*M); }
void f1(){ label((string)(2*5), sh*M); }
void f2(){ label((string)(2*7), sh*M); }
void f3(){ label((string)(2*3*5), sh*M); }
void f4(){ label((string)(2*3*7), sh*M); }
void f5(){ label((string)(2*3*5*7), sh*M); }
void f6(){ label((string)(2*2*5), sh*M); }
void f7(){ label((string)(2*2*7), sh*M); }
void f8(){ label((string)(2*2*5*7), sh*M); }
void f9(){ label((string)(2*2*5*5), sh*M); }
void f10(){ label((string)(2*2*7*7), sh*M); }
void f11(){ label((string)(2*2), sh*M); }
void f12(){ label((string)(3*3), sh*M); }
void f13(){ label((string)(3*3*2), sh*M); }
void f14(){ label((string)(3*3*3), sh*M); }
void f15(){ label((string)(3*3*2*2), sh*M); }
void f16(){ label((string)(3*3*5*7), sh*M); }
void f17(){ label((string)(3*3*7*7), sh*M); }
void f18(){ label((string)(3*3*11), sh*M); }
void f19(){ label((string)(2*2*11), sh*M); }
void f20(){ label((string)(2*5*11), sh*M); }
void f21(){ label((string)(5*5), sh*M); }
void f22(){ label((string)(7*7), sh*M); }
void f23(){ label((string)(5*7), sh*M); }
void f24(){ label((string)(3*11), sh*M); }
void f25(){ label((string)(5*11), sh*M); }
void f26(){ label((string)(7*11), sh*M); }
void f27(){ label((string)(11*11), sh*M); }
void f28(){ label((string)(2*11), sh*M); }
void f29(){ label((string)(2*2*2*2*2), sh*M); }
void f30(){ label((string)(3*3*3*3), sh*M); }
void f31(){ label((string)(5*5*5), sh*M); }
void f32(){ label((string)(5*5*7), sh*M); }


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

