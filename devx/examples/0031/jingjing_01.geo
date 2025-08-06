L1=34.;
L2=35.3;
L3=114.;
L4=148.5;
L5=109.;
L6=51.5;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,0.0,L1};
Point(3)={0.0,0.0,L1+L2};
Point(4)={0.0,0.0,L1+L2+L3};
Point(5)={0.0,0.0,L1+L2+L3+L4};
Point(6)={0.0,0.0,L1+L2+L3+L4+L5};
Point(7)={0.0,0.0,L1+L2+L3+L4+L5+L6};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Physical Curve("SHAFT", 7) = {1, 2, 3, 4, 5, 6};
//+
Transfinite Curve {1} = 8 Using Progression 1;
//+
Transfinite Curve {2} = 8 Using Progression 1;
//+
Transfinite Curve {3} = 24 Using Progression 1;
//+
Transfinite Curve {4} = 31 Using Progression 1;
//+
Transfinite Curve {5} = 23 Using Progression 1;
//+
Transfinite Curve {6} = 11 Using Progression 1;
