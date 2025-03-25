a=1.;
b=1.;
lambda=30.*Pi/180.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
Point(5)={a+a*Cos(lambda),0.0,a*Sin(lambda)};
Point(6)={a+a*Cos(lambda),b,a*Sin(lambda)};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {2, 5};
//+
Line(6) = {5, 6};
//+
Line(7) = {6, 3};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -7, -6, -5};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 5, 4, 2, 3, 6, 7} = 51 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Surface {2} = {2, 5, 6, 3};
//+
Recombine Surface {1, 2};
//+
Physical Surface("A", 8) = {1};
//+
Physical Surface("B", 9) = {2};
