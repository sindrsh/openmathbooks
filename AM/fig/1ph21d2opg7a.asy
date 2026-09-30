import "../../inhopg.asy" as inhopg;
size(6cm);
// Dimensjoner
real r = 0.5;   // radius
real h = 0.8;   // høyde på hver sylinder
real dx = 1.1;  // horisontalt mellomrom

void cylinder(pair pos) {
    pair c = pos;
    // tegn bunnellipse først, med dekkende fyll
    path bottom = ellipse(c, r, 0.15);
    fill(bottom, lightgray);
    draw(bottom);
    // kropp (rektangel uten topp- og bunnlinje)
    path body = (c.x - r, c.y) -- (c.x - r, c.y + h) -- (c.x + r, c.y + h) -- (c.x + r, c.y) -- cycle;
    fill(body, lightgray);
    draw((c.x - r, c.y) -- (c.x - r, c.y + h));
    draw((c.x + r, c.y) -- (c.x + r, c.y + h));
    // toppellipse
    path top = ellipse((c.x, c.y + h), r, 0.15);
    fill(top, white);
    draw(top);
}

int[] rowCounts = {4, 3, 2, 1};

for (int row = 0; row < 4; ++row) {
    int n = rowCounts[row];
    real y = row * h;
    real xStart = (4 - n) / 2.0 * dx;
    for (int i = 0; i < n; ++i) {
        cylinder((xStart + i * dx, y));
    }
}
