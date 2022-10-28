import three;

triple nvec(triple x){
    return x/abs(x);
}

void mksq3(triple x, triple y, triple s, real l = 0.2, real k=l){
    triple xn = nvec(x-s);
    triple yn = nvec(y-s);
    draw(s -- -l*xn+s ^^ -l*xn+s -- -l*xn+s+k*yn ^^ 
        -l*xn+s+k*yn -- s+k*yn ^^ s+k*yn--s );
}
