a=10.;
b=10.;
r=2.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
//
Point(5)={a/2,b/2,0.0};
Point(6)={a/2+r,b/2,0.0};
Point(7)={a/2-r,b/2,0.0};
Point(8)={a/2,b/2+r,0.0};
Point(9)={a/2,b/2-r,0.0};
//
Point(10)={a/2,0.0,0.0};
Point(11)={a/2,b,0.0};
Point(12)={a,b/2,0.0};
Point(13)={0.0,b/2,0.0};
//+
Circle(1) = {6, 5, 8};
//+
Circle(2) = {8, 5, 7};
//+
Circle(3) = {7, 5, 9};
//+
Circle(4) = {9, 5, 6};
//+
Line(5) = {6, 12};
//+
Line(6) = {8, 11};
//+
Line(7) = {7, 13};
//+
Line(8) = {9, 10};
//+
Line(9) = {1, 10};
//+
Line(10) = {10, 2};
//+
Line(11) = {2, 12};
//+
Line(12) = {12, 3};
//+
Line(13) = {3, 11};
//+
Line(14) = {11, 4};
//+
Line(15) = {4, 13};
//+
Line(16) = {13, 1};
//+
Curve Loop(1) = {16, 9, -8, -3, 7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 5, -11, -10, -8};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {5, 12, 13, -6, -1};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {2, 7, -15, -14, -6};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {8, 5, 6, 7} = 31 Using Progression 1;
//+
Transfinite Curve {9, 10, 11, 12, 13, 14, 15, 16} = 51 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4} = 101 Using Progression 1;
//+
Transfinite Surface {3} = {8, 6, 12, 11};
//+
Transfinite Surface {4} = {7, 8, 11, 13};
//+
Transfinite Surface {1} = {7, 13, 10, 9};
//+
Transfinite Surface {2} = {9, 10, 12, 6};
//+
Recombine Surface {4, 3, 1, 2};
//+
Physical Surface("PLATE", 17) = {3, 4, 2, 1};
