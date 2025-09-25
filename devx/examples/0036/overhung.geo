L1=800.;
L2=400.;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1+L2,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Transfinite Curve {1} = 81 Using Progression 1;
//+
Transfinite Curve {2} = 41 Using Progression 1;
//+
Physical Curve("SHAFT", 3) = {1, 2};
