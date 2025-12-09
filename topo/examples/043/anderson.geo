L=4.;
H=4.;
r=4/6.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,r,0.0};
Point(3)={-r,0.0,0.0};
Point(4)={0.0,-r,0.0};
Point(5)={L/2,r,0.0};
Point(6)={L/2,-r,0.0};
Point(7)={L/2,H/2,0.0};
Point(8)={L/2,-H/2,0.0};
Point(9)={0.0,H/2,0.0};
Point(10)={0.0,-H/2,0.0};
Point(11)={-L/2,H/2,0.0};
Point(12)={-L/2,-H/2,0.0};
Point(13)={-L/2,0.0,0.0};//+
Line(1) = {12, 10};
//+
Line(2) = {10, 8};
//+
Line(3) = {8, 6};
//+
Line(4) = {6, 4};
//+
Line(5) = {4, 10};
//+
Line(6) = {12, 13};
//+
Line(7) = {13, 3};
//+
Line(8) = {13, 11};
//+
Line(9) = {11, 9};
//+
Line(10) = {9, 2};
//+
Line(11) = {2, 5};
//+
Line(12) = {5, 7};
//+
Line(13) = {7, 9};
//+
Circle(14) = {2, 1, 3};
//+
Circle(15) = {3, 1, 4};
//+
Curve Loop(1) = {11, 12, 13, 10};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 5, 2, 3};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {15, 5, -1, 6, 7};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, -14, -10, -9, -8};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {12, 10, 7, 5, 3} = 31 Using Progression 1;
//+
Transfinite Curve {13, 11, 4, 2, 1, 6, 8, 9} = 41 Using Progression 1;
//+
Transfinite Curve {14, 15} = 81 Using Progression 1;
//+
Transfinite Surface {1} = {2, 5, 7, 9};
//+
Transfinite Surface {4} = {13, 3, 2, 9};
//+
Transfinite Surface {3} = {4, 3, 13, 10};
//+
Transfinite Surface {2} = {4, 10, 8, 6};
//+
Recombine Surface {3, 4, 2, 1};
//+
Physical Surface("DESIGN", 16) = {3, 4, 2, 1};
