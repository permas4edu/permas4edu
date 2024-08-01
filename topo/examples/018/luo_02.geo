r1=2.;
r2=4.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,r1,0.0};
Point(3)={0.0,r2,0.0};
Point(4)={r1,0.0,0.0};
Point(5)={r2,0.0,0.0};
//+
Line(1) = {4, 5};
//+
Line(2) = {2, 3};
//+
Circle(3) = {4, 1, 2};
//+
Circle(4) = {5, 1, 3};
//+
Curve Loop(1) = {2, -4, -1, 3};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 2} = 41 Using Progression 1;
//+
Transfinite Curve {4, 3} = 81 Using Progression 1;
//+
Transfinite Surface {1} = {2, 4, 5, 3};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 5) = {1};
