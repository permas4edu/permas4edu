L=350.;
W=250.;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={L,W,0.0};
Point(4)={0.0,W,0.0};
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
Transfinite Curve {1, 3} = 71 Using Progression 1;
//+
Transfinite Curve {2, 4} = 51 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 5) = {1};
