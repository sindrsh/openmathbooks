import "../anm.asy" as figs;
usepackage("asycolors");
import x11colors;


transform sh = shift(-1,0.5);
label((-2.8,1.8),"\textit{Eksempel 1}",blue+fontsize(8pt));

label(sh*(0,0),"$835,72$");

/*label(sh*(0,0),"${\color{heavyblue}8}{\color{deepgreen}3}{\color{orange}5},{\color{cyan}7}{\color{mediumred}2}$");
*/

/*

real ly=0.2;
Label l = Label("hundrar",heavyblue+fontsize(6pt),align=N);
label(sh*rotate(45)*l, (-0.6,ly));
Label l = Label("tiar",deepgreen+fontsize(6pt),align=N);
label(sh*rotate(45)*l, (-0.3,ly));
Label l = Label("einar",orange+fontsize(6pt),align=N);
label(sh*rotate(45)*l, (0,ly));
Label l = Label("tidel",royalblue+fontsize(6pt),align=N);
label(sh*rotate(45)*l, (0.3,ly));
Label l = Label("hundredel",mediumred+fontsize(6pt),align=N);
label(sh*rotate(45)*l, (0.6,ly));

*/
/*
real dy = 0.25;
sh = shift(sh*(4,0.5));
label(sh*(0,dy),"$\color{heavyblue}800\phantom{,72}$",W);
label(sh*(0,-dy),"$\color{deepgreen}30\phantom{,72}$",W);
label(sh*(0,-3dy),"$\color{orange}5\phantom{,72}$",W);
label(sh*(0,-5dy),"$\color{royalblue}0,7\phantom{2}$",W);
label(sh*(0,-7dy),"$\color{mediumred}0,02$",W);
*/
