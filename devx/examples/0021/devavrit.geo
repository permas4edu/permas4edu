L=764.;
L_d1=140.;
L_d2=280.;
L_d3=420.;
L_d4=560.;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={L_d1,0.0,0.0};
Point(4)={L_d2,0.0,0.0};
Point(5)={L_d3,0.0,0.0};
Point(6)={L_d4,0.0,0.0};
//+
Line(1) = {1, 3};
//+
Line(2) = {3, 4};
//+
Line(3) = {4, 5};
//+
Line(4) = {5, 6};
//+
Line(5) = {6, 2};
//+
Transfinite Curve {1, 2, 3, 4} = 29 Using Progression 1;
//+
Transfinite Curve {5} = 42 Using Progression 1;
//+
Physical Curve("SHAFT", 6) = {1, 2, 3, 4, 5};
