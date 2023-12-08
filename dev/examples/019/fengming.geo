h = 5.;
r_i = 50.;
r_o = 200.;
Point(1)={0.0,0.0,0.0,h};
Point(2)={r_i*Cos(0.0),r_i*Sin(0.0),0.0,h};
Point(3)={r_i*Cos(Pi/2),r_i*Sin(Pi/2),0.0,h};
Point(4)={r_i*Cos(Pi),r_i*Sin(Pi),0.0,h};
Point(5)={r_i*Cos(3*Pi/2),r_i*Sin(3*Pi/2),0.0,h};
Point(6)={r_o*Cos(0.0),r_o*Sin(0.0),0.0,h};
Point(7)={r_o*Cos(Pi/2),r_o*Sin(Pi/2),0.0,h};
Point(8)={r_o*Cos(Pi),r_o*Sin(Pi),0.0,h};
Point(9)={r_o*Cos(3*Pi/2),r_o*Sin(3*Pi/2),0.0,h};//+
Line(1) = {2, 6};
//+
Line(2) = {3, 7};
//+
Line(3) = {4, 8};
//+
Line(4) = {5, 9};
//+
Circle(5) = {2, 1, 3};
//+
Circle(6) = {3, 1, 4};
//+
Circle(7) = {4, 1, 5};
//+
Circle(8) = {5, 1, 2};
//+
Circle(9) = {6, 1, 7};
//+
Circle(10) = {7, 1, 8};
//+
Circle(11) = {8, 1, 9};
//+
Circle(12) = {9, 1, 6};
//+
Curve Loop(1) = {1, 9, -2, -5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 10, -3, -6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 11, -4, -7};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 12, -1, -8};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {5, 6, 7, 8, 9, 10, 11, 12} = 31 Using Progression 1;
//+
Transfinite Curve {2, 3, 4, 1} = 31 Using Progression 1;

Transfinite Surface {1} = {2, 6, 7, 3};
//+
Transfinite Surface {2} = {3, 7, 8, 4};
//+
Transfinite Surface {3} = {4, 8, 9, 5};
//+
Transfinite Surface {4} = {5, 9, 6, 2};
//+
Physical Surface("ANNULUS", 13) = {1, 2, 3, 4};
//+
Recombine Surface {1, 2, 3, 4};
//+

