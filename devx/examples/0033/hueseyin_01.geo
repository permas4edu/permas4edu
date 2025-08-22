L1=250.;
L2=250.;
L3=250.;
L4=250.;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1+L2,0.0,0.0};
Point(4)={L1+L2+L3,0.0,0.0};
Point(5)={L1+L2+L3+L4,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Physical Curve("SHAFT", 5) = {1, 2, 3, 4};
//+
Transfinite Curve {1, 2, 3, 4} = 26 Using Progression 1;
