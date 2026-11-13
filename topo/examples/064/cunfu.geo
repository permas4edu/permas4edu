R=1.0;
alpha=Asin(1.5*Sqrt(3)*R/3*R);
Point(1)={0.0,0.0,0.0};
Point(2)={3*R,0.0,0.0};
Point(3)={6*R,0.0,0.0};
Point(4)={6*R,3*R,0.0};
Point(5)={6*R,3*R+1.5*Sqrt(3)*R,0.0};
Point(6)={3*R,3*R,0.0};
Point(7)={0.0,3*R,0.0};
Point(8)={0.5*R,3*R,0.0};
Point(9)={R,3*R,0.0};
Point(10)={0.5*R,3*R+0.5*R,0.0};
Point(11)={3*R*Cos(alpha),3*R+1.5*Sqrt(3)*R,0.0};
Point(12)={2*R,3*R,0.0};
Point(13)={2*R,2*R,0.0};//+
Circle(1) = {9, 8, 10};
//+
Circle(2) = {10, 8, 7};
//+
Circle(3) = {9, 12, 13};
//+
Circle(4) = {13, 12, 6};
//+
Circle(5) = {6, 7, 11};
//+
Line(6) = {11, 5};
//+
Line(7) = {5, 4};
//+
Line(8) = {4, 3};
//+
Line(9) = {3, 2};
//+
Line(10) = {2, 1};
//+
Line(11) = {1, 7};
//+
Curve Loop(1) = {11, -2, -1, 3, 4, 5, 6, 7, 8, 9, 10};
//+
Plane Surface(1) = {1};
//+
Physical Surface("HOOK", 12) = {1};
//+
Physical Curve("F", 13) = {3, 4};
