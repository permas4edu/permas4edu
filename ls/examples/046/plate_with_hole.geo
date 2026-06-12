//Mesh.SubdivisionAlgorithm = 1;
r=0.5;
a=2.0;
r1=1.0;
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0,0.0};
Point(3)={r*Cos(45*Pi/180),r*Sin(45*Pi/180),0.0};
Point(4)={0.0,r,0.0};
Point(5)={a,0.0,0.0};
Point(6)={a,a,0.0};
Point(7)={0.0,a,0.0};
Point(8)={r1,0.0,0.0,0.0};
Point(9)={r1*Cos(45*Pi/180),r1*Sin(45*Pi/180),0.0};
Point(10)={0.0,r1,0.0};
Point(11)={a,r1*Sin(45*Pi/180),0.0};
Point(12)={r1*Cos(45*Pi/180),a,0.0};
//+
Line(1) = {2, 8};
//+
Line(2) = {8, 5};
//+
Line(3) = {5, 11};
//+
Line(4) = {11, 6};
//+
Line(5) = {6, 12};
//+
Line(6) = {12, 7};
//+
Line(7) = {7, 10};
//+
Line(8) = {9, 11};
//+
Line(9) = {9, 12};
//+
Circle(10) = {2, 1, 3};
//+
Circle(11) = {3, 1, 4};
//+
Circle(12) = {8, 1, 9};
//+
Circle(13) = {9, 1, 10};
//+
Line(14) = {10, 4};
//+
Line(15) = {3, 9};
//+
Transfinite Curve {12, 10, 13, 11, 14, 15, 1, 3, 6} = 6 Using Progression 1;
//+
Transfinite Curve {8, 4, 9, 5, 7, 2} = 11 Using Progression 1;
//+
Curve Loop(1) = {15, 13, 14, -11};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {15, -12, -1, 10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {12, 8, -3, -2};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 5, -9, 8};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {7, -13, 9, 6};
//+
Plane Surface(5) = {5};
//+
Transfinite Surface {1} = {4, 3, 9, 10};
//+
Transfinite Surface {2} = {3, 2, 8, 9};
//+
Transfinite Surface {3} = {8, 5, 11, 9};
//+
Transfinite Surface {4} = {9, 11, 6, 12};
//+
Transfinite Surface {5} = {10, 9, 12, 7};
//+
Recombine Surface {2, 1, 3, 5, 4};
//+
Physical Surface("PLATE", 16) = {2, 1, 3, 5, 4};
//Mesh 2;
//RefineMesh;