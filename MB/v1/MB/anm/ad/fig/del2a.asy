settings.outformat="pdf";
size(16cm);
defaultpen(fontsize(16pt));


import deling2;

draw((0,0)--(894,0));
mktc(0,"0");
mktc(600,"600");
mktc(894,"894");

real y = 50;
jmp(600,y=y, lb2= "$3\cdot \color{blue}200$");
jmp(270,xs=600,y=y,lb2= "$3\cdot \color{blue}90$");
jmp(24,xs=870,y=y,lb2= "$3\cdot \color{blue}8$");

label("$\color{blue}200+90+8=298$", (894/2,-90));
label("$\color{blue}894:3=298$", (894/2,140));
