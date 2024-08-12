R=1.;
Point(1)={0.0,0.0,0.0};
Point(2)={3*R,0.0,0.0};
Point(3)={6*R,0.0,0.0};
Point(4)={6*R,3*R,0.0};
Point(5)={6*R,3*R+3*Sqrt(3)*R/2,0.0};
Point(6)={0.0,3*R,0.0};
Point(7)={0.5*R,3*R,0.0};
Point(8)={R,3*R,0.0};
Point(9)={2*R,3*R,0.0};
Point(10)={3*R,3*R,0.0};
phi=Acos(Sqrt(3)/2);
x=3*R*Sin(phi);
Point(12)={x,3*R+3*Sqrt(3)*R/2,0.0};
Point(13)={0.5*R,3.5*R,0.0};
Point(14)={2*R,2*R,0.0};
//+
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 12};
//+
Circle(6) = {8, 7, 13};
//+
Circle(7) = {13, 7, 6};
//+
Circle(8) = {8, 9, 14};
//+
Circle(9) = {14, 9, 10};
//+
Circle(10) = {10, 6, 12};
//+
Line(11) = {6, 1};
//+
Curve Loop(1) = {11, 1, 2, 3, 4, 5, -10, -9, -8, 6, 7};
//+
Plane Surface(1) = {1};
//+
MeshSize {1, 14, 13, 12, 10, 9, 8, 7, 6, 5, 4, 3, 2} = 0.1;
//+
Physical Surface("DESIGN", 12) = {1};
//+
Physical Curve("LOAD", 13) = {8, 9};
