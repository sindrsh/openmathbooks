import inh;
import figs;
unitsize(0.5 cm);

mkgrid(8,7);

pair A = (0,0);
pair B = (3,0);
pair C = (3,4);
pair D = (6,4);
pair Ep = (6,5);
pair F = (7,5);
pair G = (1,5);
pair H = (1,4);
pair Ip = (2,4);
pair Jp = (2,3);
pair K = (0,3);

path p = A--B--C--D--Ep--G--H--Ip--Jp--K--cycle;
filldraw(shift(1,-6)*p,arpeno);
