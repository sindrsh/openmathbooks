settings.outformat="pdf";
size(16cm);
defaultpen(fontsize(16pt));


import deling2;

draw((0,0)--(76,0));
mktc(0,"0");
mktc(40,"40");
mktc(76,"76");

jmp(40,y=4, lb2= "$4\cdot \color{blue}10$");
jmp(36,xs=40,y=4,lb2= "$4\cdot \color{blue}9$");

label("$\color{blue}10+9=19$", (76/2,-8));
label("$\color{blue}76:4=19$", (76/2,10));
