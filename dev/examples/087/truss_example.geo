L=5;
h=5;
Point(1)={0.0,0.0,0.0};
Point(2)={L,h,0.0};
Point(3)={L,0.0,0.0};
Point(4)={2*L,h,0.0};
Point(5)={2*L,0.0,0.0};
Point(6)={3*L,h,0.0};
Point(7)={3*L,0.0,0.0};
Point(8)={4*L,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {1, 3};
//+
Line(3) = {2, 3};
//+
Line(4) = {2, 4};
//+
Line(5) = {3, 4};
//+
Line(6) = {3, 5};
//+
Line(7) = {4, 5};
//+
Line(8) = {5, 7};
//+
Line(9) = {4, 7};
//+
Line(10) = {4, 6};
//+
Line(11) = {6, 7};
//+
Line(12) = {7, 8};
//+
Line(13) = {6, 8};
//+
Physical Curve("OMEGA_1", 14) = {1, 2, 3, 5, 6, 4};
//+
Physical Curve("OMEGA_2", 15) = {10, 8, 9, 11, 12, 13};
//+
Transfinite Curve {4, 10, 1, 2, 3, 5, 7, 6, 8, 9, 11, 12, 13} = 2 Using Progression 1;
//+
Physical Curve("GAMMA", 16) = {7};
