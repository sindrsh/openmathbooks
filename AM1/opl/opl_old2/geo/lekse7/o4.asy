import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

mkgrid(10,9);
transform s = shift(1,-9);

pair B=(4,1); 
pair C=(3,1); 
pair D=(3,2); 
pair Ep=(2,2); 
pair F=(2,3); 
pair G=(1,3); 
pair H=(1,4); 
pair Ip=(0,4); 
pair Jp=(0,7); 
pair K=(1,7); 
pair L=(1,8); 
pair M=(3,8); 
pair Np=(3,7); 
pair O=(4,7); 
pair P=(5,7); 
pair Q=(5,8); 
pair R=(7,8); 
pair Sp=(7,7); 
pair T=(8,7); 
pair U=(8,4); 
pair V=(7,4); 
pair Wp=(7,3); 
pair Xp=(6,3); 
pair Yp=(6,2); 
pair Zp=(5,2); 
pair A1=(5,1); 

path p = B--C--D--Ep--F--G--H--Ip--Jp--K--L--M--Np--O--P--Q--R--Sp--T--U--V--Wp--Xp--Yp--Zp--A1--cycle;
draw(s*p);

