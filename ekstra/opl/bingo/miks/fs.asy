settings.outformat="pdf";
defaultpen(fontsize(14 pt));
unitsize(3.2 cm);
usepackage("icomma");


real l = 2;
real h = 1;
path b = box((0,0), (l,h));

transform sh;
pair M = (0.5*l,0.5*h);


void f0(){ label("$1 , 2 , 5 , 1 , 3 , 4 , 2 , 4 , 4 , 4 , 6$", sh*M);  }

void f1(){ label("$3 , 4 , 4 , 1 , 5 , 2 , 5 , 2 , 3 , 1 , 1$", sh*M);  }

void f2(){ label("$2 , 5 , 4 , 9 , 1 , 8 , 3 , 0, 7 , 6 , 0$", sh*M);  }

void f3(){ label("$453-48$", sh*M);  }

void f4(){ label("$431-259$", sh*M);  }

void f5(){ label("$875-654$", sh*M);  }

void f6(){ label("$3 , 4 , 4 , 1 , 5 , 2 , 5 , 2 , 3 , 1 , 1$", sh*M);  }

void f7(){ label("$43 \cdot 9$", sh*M);  }

void f8(){ label("$97\cdot 5$", sh*M);  }

void f9(){ label("$31\cdot 8$", sh*M);  }

void f10(){ label("$84\cdot 7$", sh*M);  }

void f11(){ label("$15\cdot 6$", sh*M);  }

void f12(){ label("$87\cdot 3$", sh*M);  }

void f13(){
	label("$29\cdot 12$", sh*M);
	label("(overslag)", sh*(0.5, 0.25));
}

void f14(){ label("$14 , 6 , 0 , 7 , 3 , 0 , 4 , 9 , 1 , 6$", sh*M); 	}

void f15(){ label("$893-45$", sh*M);  }

void f16(){ label("$134- 62$", sh*M);  }

void f17(){ label("$362\cdot 7$", sh*M);  }

void f18(){ label("$201:3$", sh*M);  }

void f19(){ label("$300:4$", sh*M);  }

void f20(){ label("$815:5$", sh*M);  }

void f21(){ label("$174:6$", sh*M);  }

void f22(){ label("$8 , 7, 11 , 19 , 4 , 5 , 3 , 2 , 6 , 5$", sh*M);  }

void f23(){ label("$1712:8$", sh*M);  }

void f24(){ 	label("$12 , 11 , 19 , 3 , 6 , 8 , 7 , 14 , 6 , 4$", sh*M); }

void f25(){ label("$70:2$", sh*M);  }

void f26(){ label("$192:3$", sh*M);  }

void f27(){ label("$288:4$", sh*M);  }

void f28(){ label("$915:5$", sh*M);  }

void f29(){ label("$468:6$", sh*M);  }

void f30(){ label("$344-85$", sh*M);  }
