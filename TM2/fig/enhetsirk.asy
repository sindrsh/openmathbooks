import "../../inh" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(2cm);

draw(unitcircle);

pair f(real z){
    return (cos(z), sin(z));
}

draw((0,0)--(1,0),L="1",dotted);
