a=348.;
b=304.8;
r=5000.;
Point(1)={-a/2,-b/2,0.0};
Point(2)={ a/2,-b/2,0.0};
Point(3)={ a/2, b/2,0.0};
Point(4)={-a/2, b/2,0.0};
Point(5)={r,0.0,0.0};
Point(6)={-r,0.0,0.0};
Point(7)={0.0,r,0.0};
Point(8)={0.0,-r,0.0};
Point(9)={0.0,-b/2,0.0};
Point(10)={0.0, b/2,0.0};
Point(11)={ a/2, 0.0,0.0};
Point(12)={-a/2, 0.0,0.0};
Point(13)={0.0,0.0,0.0};
Point(14)={r*Cos(45*Pi/180),r*Sin(45*Pi/180),0.0};
Point(15)={r*Cos(3*45*Pi/180),r*Sin(3*45*Pi/180),0.0};
Point(16)={r*Cos(5*45*Pi/180),r*Sin(5*45*Pi/180),0.0};
Point(17)={r*Cos(7*45*Pi/180),r*Sin(7*45*Pi/180),0.0};//+
Line(1) = {1, 9};
//+
Line(2) = {9, 2};
//+
Line(3) = {2, 11};
//+
Line(4) = {11, 3};
//+
Line(5) = {3, 10};
//+
Line(6) = {10, 4};
//+
Line(7) = {4, 12};
//+
Line(8) = {12, 1};
//+
Line(9) = {12, 13};
//+
Line(10) = {13, 10};
//+
Line(11) = {13, 11};
//+
Line(12) = {13, 9};
//+
Curve Loop(1) = {1, -12, -9, 8};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {11, -3, -2, -12};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {11, 4, 5, -10};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {10, 6, 7, 9};
//+
Plane Surface(4) = {4};
//+
MeshSize {4, 10, 3, 12, 13, 11, 1, 9, 2} = 4;
//+
Transfinite Surface {4} = {12, 13, 10, 4};
//+
Transfinite Surface {3} = {13, 11, 3, 10};
//+
Transfinite Surface {1} = {1, 9, 13, 12};
//+
Transfinite Surface {2} = {9, 2, 11, 13};
//+
Recombine Surface {1, 2, 3, 4};
//+
Physical Surface("PLATE", 13) = {4, 3, 1, 2};
