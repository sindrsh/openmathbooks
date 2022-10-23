settings.outformat="pdf";
defaultpen(fontsize(14 pt));
unitsize(3 cm);
usepackage("icomma");

path b = box((0,0), (1,1));
transform sh;
pair M = (0.5,0.5);

void f0(){ label("$2\cdot3$", sh*M); }
void f1(){ label("$2\cdot5$", sh*M); }
void f2(){ label("$2\cdot7$", sh*M); }
void f3(){ label("$2\cdot3\cdot5$", sh*M); }
void f4(){ label("$2\cdot3\cdot7$", sh*M); }
void f5(){ label("$2\cdot3\cdot5\cdot7$", sh*M); }
void f6(){ label("$2\cdot2\cdot5$", sh*M); }
void f7(){ label("$2\cdot2\cdot7$", sh*M); }
void f8(){ label("$2\cdot2\cdot5\cdot7$", sh*M); }
void f9(){ label("$2\cdot2\cdot5\cdot5$", sh*M); }
void f10(){ label("$2\cdot2\cdot7\cdot7$", sh*M); }
void f11(){ label("$2\cdot2$", sh*M); }
void f12(){ label("$3\cdot3$", sh*M); }
void f13(){ label("$3\cdot3\cdot2$", sh*M); }
void f14(){ label("$3\cdot3\cdot3$", sh*M); }
void f15(){ label("$3\cdot3\cdot2\cdot2$", sh*M); }
void f16(){ label("$3\cdot3\cdot5\cdot7$", sh*M); }
void f17(){ label("$3\cdot3\cdot7\cdot7$", sh*M); }
void f18(){ label("$3\cdot3\cdot11$", sh*M); }
void f19(){ label("$2\cdot2\cdot11$", sh*M); }
void f20(){ label("$2\cdot5\cdot11$", sh*M); }
void f21(){ label("$5\cdot5$", sh*M); }
void f22(){ label("$7\cdot7$", sh*M); }
void f23(){ label("$5\cdot7$", sh*M); }
void f24(){ label("$3\cdot11$", sh*M); }
void f25(){ label("$5\cdot11$", sh*M); }
void f26(){ label("$7\cdot11$", sh*M); }
void f27(){ label("$11\cdot11$", sh*M); }
void f28(){ label("$2\cdot11$", sh*M); }
void f29(){ label("$2\cdot2\cdot2\cdot2\cdot2$", sh*M); }
void f30(){ label("$3\cdot3\cdot3\cdot3$", sh*M); }
void f31(){ label("$5\cdot5\cdot5$", sh*M); }
void f32(){ label("$5\cdot5\cdot7$", sh*M); }




