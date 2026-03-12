a=10.;
b=10.;
Point(1)={0.0,0.0,0.0};
Point(2)={b,0.0,0.0};
Point(3)={b,a,0.0};
Point(4)={0.0,a,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 2, 3, 4} = 17 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 5) = {1};
