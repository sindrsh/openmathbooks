import "../../inh" as inh;
import "../../drwgrph" as drwgrph;

pair[] ps = {};

guide curveBetween(pair A, pair B, real f(real), int n=200)
{
    real a = A.x, b = B.x;

    // Sample f densely over [A.x, B.x]
    guide fp = graph(f, a, b, n=n);

    pair p0 = point(fp, 0);          // (a, f(a))
    pair p1 = point(fp, length(fp)); // (b, f(b))

    // Affine map: send p0 -> A and p1 -> B
    real sx = (B.x - A.x) / (p1.x - p0.x);
    real m  = (p1.y - p0.y) / (p1.x - p0.x);   // chord slope of f
    real sy = (B.y - A.y) / (m * (p1.x - p0.x));

    transform t = shift(A) * scale(sx, sy) * shift(-p0);
    return t * fp;
}

pair[] mkplot(real[] xs, real ys[], real f(real x)) {
	
	for(int i=0; i<xs.length;++i) {
		pair p = (xs[i], ys[i]);
		ps.push(p);
		if(i>0){
			draw(curveBetween(ps[i], ps[i-1], f));
		}
		dott(p);
	}
	return ps;
	
}


