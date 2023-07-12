settings.outformat="pdf";
defaultpen(fontsize(14 pt));
unitsize(3.2 cm);
usepackage("icomma");

path b = box((0,0), (1,1));

transform sh;
pair M = (0.5,0.5);


void f0(){ label("$1284+978$", sh*M);  }

void f1(){ label("$973+207$", sh*M);  }

void f2(){ label("$323+856$", sh*M);  }

void f3(){ label("$453-48$", sh*M);  }

void f4(){ label("$431-259$", sh*M);  }

void f5(){ label("$875-654$", sh*M);  }

void f6(){ label("$7652-7465$", sh*M);  }

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

void f14(){
	label("$42\cdot 49$", sh*M);
	label("(overslag)", sh*(0.5, 0.25));
	}

void f15(){ label("$893-45$", sh*M);  }

void f16(){ label("$134- 62$", sh*M);  }

void f17(){ label("$362\cdot 7$", sh*M);  }

void f18(){ label("$201:3$", sh*M);  }

void f19(){ label("$300:4$", sh*M);  }

void f20(){ label("$815:5$", sh*M);  }

void f21(){ label("$174:6$", sh*M);  }

void f22(){ label("$1043-167$", sh*M);  }

void f23(){ label("$1712:8$", sh*M);  }

void f24(){
	label("$36\cdot98$", sh*M);
	label("(overslag)", sh*(0.5, 0.25));
}

void f25(){ label("$70:2$", sh*M);  }

void f26(){ label("$192:3$", sh*M);  }

void f27(){ label("$288:4$", sh*M);  }

void f28(){ label("$915:5$", sh*M);  }

void f29(){ label("$468:6$", sh*M);  }

void f30(){ label("$344-85$", sh*M);  }
