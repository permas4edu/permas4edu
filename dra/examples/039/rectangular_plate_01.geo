L1=0.4064;
L2=0.2032;
W=0.3048;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1+L2,0.0,0.0};
Point(4)={L1+L2,W,0.0};
Point(5)={L1,W,0.0};
Point(6)={0.0,W,0.0};
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
Line(6) = {6, 1};
//+
Line(7) = {2, 5};
//+
Curve Loop(1) = {6, 1, 7, 5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, -7, 2, 3};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 5} = 9 Using Progression 1;
//+
Transfinite Curve {6, 7, 3} = 7 Using Progression 1;
//+
Transfinite Curve {2, 4} = 5 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 5, 6};
//+
Transfinite Surface {2} = {2, 3, 4, 5};
//+
Recombine Surface {1, 2};
//+
Physical Surface("OMEGA_1", 8) = {1};
//+
Physical Surface("OMEGA_2", 9) = {2};
