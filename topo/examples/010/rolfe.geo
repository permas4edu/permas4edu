L=240.;
W=60.;
lc = 1.0;
Point(1)={0.0,0.0,0.0,lc};
Point(2)={L,0.0,0.0,lc};
Point(3)={L,W,0.0,lc};
Point(4)={0.0,W,0.0,lc};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 5) = {1};
