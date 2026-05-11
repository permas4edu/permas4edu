d0=105.;
d=150.;
L=2052.;
Point(1)={0.0,0.0,0.0};
Point(2)={d0,0.0,0.0};
Point(3)={d0+d,0.0,0.0};
Point(4)={d0+2*d,0.0,0.0};
Point(5)={d0+3*d,0.0,0.0};
Point(6)={d0+4*d,0.0,0.0};
Point(7)={d0+5*d,0.0,0.0};
Point(8)={L,0.0,0.0,0.0};
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
Line(7) = {7, 8};
//+
Transfinite Curve {1} = 12 Using Progression 1;
//+
Transfinite Curve {2, 3, 4, 5, 6} = 16 Using Progression 1;
//+
Transfinite Curve {7} = 120 Using Progression 1;
//+
Physical Curve("BEAM", 8) = {1, 2, 3, 4, 5, 6, 7};
