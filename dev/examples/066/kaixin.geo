H=15.;
L=200.;
B=30.;
D=15.;
T=1.5;
Point(1)={0.0,0.0,0.0};
Point(2)={H,0.0,0.0};
Point(3)={L,0.0,0.0};
Point(4)={0.0,D,0.0};
Point(5)={H,D,0.0};
Point(6)={L,D,0.0};
Point(7)={0.0,D+B,0.0};
Point(8)={H,D+B,0.0};
Point(9)={L,D+B,0.0};
Point(10)={0.0,2*D+B,0.0};
Point(11)={H,2*D+B,0.0};
Point(12)={L,2*D+B,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 5};
//+
Line(3) = {5, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {2, 3};
//+
Line(6) = {3, 6};
//+
Line(7) = {6, 5};
//+
Line(8) = {5, 8};
//+
Line(9) = {8, 7};
//+
Line(10) = {7, 4};
//+
Line(11) = {7, 10};
//+
Line(12) = {10, 11};
//+
Line(13) = {11, 8};
//+
Line(14) = {8, 9};
//+
Line(15) = {9, 12};
//+
Line(16) = {12, 11};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, -2, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {8, 9, 10, -3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, 12, 13, 9};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {14, 15, 16, 13};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {1, 3, 9, 12} = 16 Using Progression 1;
//+
Transfinite Curve {4, 2, 6, 11, 13, 15} = 16 Using Progression 1;
//+
Transfinite Curve {10, 8} = 31 Using Progression 1;
//+
Transfinite Curve {5, 7, 14, 16} = 186 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 5, 4};
//+
Transfinite Surface {2} = {2, 3, 6, 5};
//+
Transfinite Surface {3} = {4, 5, 8, 7};
//+
Transfinite Surface {4} = {7, 8, 11, 10};
//+
Transfinite Surface {5} = {8, 9, 12, 11};
//+
Recombine Surface {4, 3, 1, 5, 2};
//+
//+
Physical Surface("BEAM", 17) = {2, 1, 3, 5, 4};
