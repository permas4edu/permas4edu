a=420.;
b=30.;
Point(1)={0.0,-b/2,0.0};
Point(2)={0.0, b/2,0.0};
Point(3)={a,-b/2,0.0};
Point(4)={a, b/2,0.0};//+
Point(5)={140.0,0.0,0.0};
Point(6)={245.0,0.0,0.0};
Point(7)={345.0,0.0,0.0};
Line(1) = {1, 3};
//+
Line(2) = {3, 4};
//+
Line(3) = {4, 2};
//+
Line(4) = {2, 1};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Physical Point("ACCELEROMETER", 5) = {5, 6, 7};
//+
Transfinite Curve {4, 2} = 13 Using Progression 1;
//+
Transfinite Curve {1, 3} = 169 Using Progression 1;
//+
Transfinite Surface {1} = {1, 3, 4, 2};
//+
Recombine Surface {1};
//+
Physical Surface("BEAM", 6) = {1};
