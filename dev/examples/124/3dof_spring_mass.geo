r1=1.0;
r2=2.0;
Point(1)={0.0,r1,0.0};
Point(2)={r1*Cos(210*Pi/180),r1*Sin(210*Pi/180),0.0};
Point(3)={r1*Cos(330*Pi/180),r1*Sin(330*Pi/180),0.0};
Point(4)={0.0,r2,0.0};
Point(5)={r2*Cos(210*Pi/180),r2*Sin(210*Pi/180),0.0};
Point(6)={r2*Cos(330*Pi/180),r2*Sin(330*Pi/180),0.0};
//+
Line(1) = {2, 3};
//+
Line(2) = {3, 1};
//+
Line(3) = {1, 2};
//+
Line(4) = {2, 5};
//+
Line(5) = {3, 6};
//+
Line(6) = {4, 1};
//+
Physical Curve("K1", 7) = {4, 5, 6};
//+
Physical Curve("K2", 8) = {1, 2, 3};
//+
Transfinite Curve {4, 1, 5, 2, 3, 6} = 2 Using Progression 1;
