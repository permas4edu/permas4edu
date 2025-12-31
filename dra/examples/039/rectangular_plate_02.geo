L1=0.6096;
W1=0.6096;
L2=0.2032;
W2=0.3048;
Point(1)={0.0,-W1/2,0.0};
Point(2)={L1,-W1/2,0.0};
Point(3)={L1, W1/2,0.0};
Point(4)={L1+L2,-W2/2,0.0};
Point(5)={L1+L2,W2/2,0.0};
Point(6)={L1,-W2/2,0.0};
Point(7)={L1,W2/2,0.0};
Point(8)={0.0,W1/2,0.0};
//+
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 8};
//+
Line(4) = {8, 1};
//+
Line(5) = {6, 4};
//+
Line(6) = {4, 5};
//+
Line(7) = {5, 7};
//+
Line(8) = {7, 6};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, 8, 5, 6};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 3} = 9 Using Progression 1;
//+
Transfinite Curve {4, 2} = 13 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 8};
//+
Transfinite Curve {5, 7} = 5 Using Progression 1;
//+
Transfinite Curve {6, 8} = 7 Using Progression 1;
//+
Transfinite Surface {2} = {6, 4, 5, 7};
//+
Recombine Surface {1, 2};
//+
Physical Surface("OMEGA_1", 9) = {1};
//+
Physical Surface("OMEGA_2", 10) = {2};
