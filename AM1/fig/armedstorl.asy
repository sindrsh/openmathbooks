import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1cm);

int a = 7;
int b = 2;
pair A = (0, 0);
pair B = (a, 0);
pair C = (a, b);
pair D = (0, b);

filldraw(A--B--C--D--cycle,arpen);
label("7\,cm",(a/2,-0.5));
label("2\,cm",(a+0.5,b/2));
