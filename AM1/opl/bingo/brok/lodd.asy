settings.outformat="pdf";
unitsize(3.25 cm);
import math;

path b = box((0,0), (1,1));
real[] l= {2,3,4,5,6,7,8,9};

transform sh = shift(0,0);
draw(sh*b);
label("$\displaystyle \frac{1}{2}+\frac{5}{2}$", sh*(0.5,0.5));

sh = shift(1,0);
draw(sh*b);
label("$\displaystyle \frac{2}{3}+\frac{6}{3}$", sh*(0.5,0.5));

sh = shift(2,0);
draw(sh*b);
label("$\displaystyle \frac{10}{4}+\frac{7}{4}$", sh*(0.5,0.5));

sh = shift(3,0);
draw(sh*b);
label("$\displaystyle \frac{2}{5}+\frac{9}{5}$", sh*(0.5,0.5));

sh = shift(0,-1);
draw(sh*b);
label("$\displaystyle \frac{11}{6}+\frac{9}{6}$", sh*(0.5,0.5));

sh = shift(1,-1);
draw(sh*b);
label("$\displaystyle \frac{11}{6}-\frac{9}{6}$", sh*(0.5,0.5));

sh = shift(2,-1);
draw(sh*b);
label("$\displaystyle \frac{10}{4}-\frac{7}{4}$", sh*(0.5,0.5));

sh = shift(3,-1);
draw(sh*b);
label("$\displaystyle \frac{6}{3}-\frac{5}{3}$", sh*(0.5,0.5));

sh = shift(0,-2);
draw(sh*b);
label("$\displaystyle \frac{5}{3}$", sh*(0.5,0.75));
label("utvida med 4", sh*(0.5,0.25));

sh = shift(1,-2);
draw(sh*b);
label("$\displaystyle \frac{6}{9}$", sh*(0.5,0.75));
label("utvida med 7", sh*(0.5,0.25));

sh = shift(2,-2);
draw(sh*b);
label("$\displaystyle \frac{1}{8}$", sh*(0.5,0.75));
label("utvida med 10", sh*(0.5,0.25));

sh = shift(3,-2);
draw(sh*b);
label("$\displaystyle \frac{3}{4}$", sh*(0.5,0.75));
label("utvida med 5", sh*(0.5,0.25));


sh = shift(0,-3);
draw(sh*b);
label("$\displaystyle \frac{10}{8}$", sh*(0.5,0.75));
label("forkorta", sh*(0.5,0.4));
label("med 2", sh*(0.5,0.25));

sh = shift(1,-3);
draw(sh*b);
label("$\displaystyle \frac{15}{9}$", sh*(0.5,0.75));
label("forkorta", sh*(0.5,0.4));
label("med 3", sh*(0.5,0.25));

sh = shift(2,-3);
draw(sh*b);
label("$\displaystyle \frac{42}{54}$", sh*(0.5,0.75));
label("forkorta", sh*(0.5,0.4));
label("med 6", sh*(0.5,0.25));

sh = shift(3,-3);
draw(sh*b);
label("$\displaystyle \frac{40}{30}$", sh*(0.5,0.75));
label("forkorta", sh*(0.5,0.4));
label("med 10", sh*(0.5,0.25));

sh = shift(0,-4);
draw(sh*b);
label("$\displaystyle \frac{2}{3}-\frac{1}{2}$", sh*(0.5,0.5));

sh = shift(1,-4);
draw(sh*b);
label("$\displaystyle \frac{5}{6}-\frac{2}{9}$", sh*(0.5,0.5));

sh = shift(2,-4);
draw(sh*b);
label("$\displaystyle \frac{3}{7}+\frac{5}{8}$", sh*(0.5,0.5));

sh = shift(3,-4);
draw(sh*b);
label("$\displaystyle \frac{3}{2}+\frac{8}{6}$", sh*(0.5,0.5));


