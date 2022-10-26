import "../../inh" as inh;
import "../../geo" as geo;
unitsize(2cm);

pair[] kant6 = {};
kant6.push((1 ,0));

path p; 

for(int i = 1; i<6; ++i){
	kant6.push(rotate(60)*kant6[i-1]);
	if (i == 1) {
		p = kant6[0] -- kant6[1];
		}
	else {
		p = p--kant6[i];
	}
}

draw(p--kant6[0],deepgreen);
draw(unitcircle,blue);
