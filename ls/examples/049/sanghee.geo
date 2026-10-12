r=5.;
a=10.;
b=28.;
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={a,0.0,0.0};
Point(5)={a,a,0.0};
Point(6)={0.0,a,0.0};
Point(7)={0.0,b,0.0};
Point(8)={a,b,0.0};
//+
Circle(1) = {2, 1, 3};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 5};
//+
Line(4) = {5, 6};
//+
Line(5) = {6, 3};
//+
Line(6) = {5, 8};
//+
Line(7) = {8, 7};
//+
Line(8) = {7, 6};
//+
Curve Loop(1) = {7, 8, -4, 6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, -1, 2, 3, 4};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {4, 3, 7} = 41 Using Progression 1;
//+
Transfinite Curve {2, 5} = 21 Using Progression 1;
//+
Transfinite Curve {1} = 81 Using Progression 1;
//+
Transfinite Curve {8, 6} = 73 Using Progression 1;
//+
Transfinite Surface {2} = {3, 2, 4, 6};
//+
Transfinite Surface {1} = {6, 5, 8, 7};
//+
Recombine Surface {2, 1};
//+
Physical Surface("SHEET", 9) = {2, 1};
