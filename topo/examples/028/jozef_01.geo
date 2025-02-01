a=150.;
b=50.;
c=10.;
Point(1)={0.0,0.0,0.0};
Point(2)={b,0.0,0.0};
Point(3)={a,0.0,0.0};
Point(4)={a-b,0.0,0.0};
Point(5)={a,b,0.0};
Point(6)={a-b,b,0.0};
Point(7)={b,b,0.0};
Point(8)={b,a,0.0};
Point(9)={0.0,a,0.0};
Point(10)={0.0,b,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 4};
//+
Line(7) = {6, 7};
//+
Line(8) = {7, 2};
//+
Line(9) = {7, 10};
//+
Line(10) = {10, 1};
//+
Line(11) = {10, 9};
//+
Line(12) = {9, 8};
//+
Line(13) = {8, 7};
//+
Curve Loop(1) = {11, 12, 13, 9};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, 1, -8, 9};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, 8, 2, -6};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {5, 6, 3, 4};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {10, 1, 8, 9, 12, 7, 6, 5, 4, 3, 2} = 51 Using Progression 1;
//+
Transfinite Curve {11, 13} = 101 Using Progression 1;
//+
Transfinite Surface {1} = {10, 7, 8, 9};
//+
Transfinite Surface {2} = {1, 2, 7, 10};
//+
Transfinite Surface {3} = {4, 6, 7, 2};
//+
Transfinite Surface {4} = {5, 6, 4, 3};
//+
Recombine Surface {2, 1, 3, 4};
//+
Physical Surface("L_BEAM", 14) = {4, 3, 2, 1};
