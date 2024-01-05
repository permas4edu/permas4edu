L=9.144;
Point(1)={2*L,L,0.0};
Point(2)={2*L,0.0,0.0};
Point(3)={  L,L,0.0};
Point(4)={  L,0.0,0.0};
Point(5)={0.0,L,0.0};
Point(6)={0.0,0.0,0.0};
//+
Line(1) = {3, 5};
//+
Line(2) = {1, 3};
//+
Line(3) = {4, 6};
//+
Line(4) = {2, 4};
//+
Line(5) = {3, 4};
//+
Line(6) = {1, 2};
//+
Line(7) = {4, 5};
//+
Line(8) = {3, 6};
//+
Line(9) = {2, 3};
//+
Line(10) = {1, 4};
//+
Physical Curve("E1", 11) = {1};
//+
Physical Curve("E2", 12) = {2};
//+
Physical Curve("E3", 13) = {3};
//+
Physical Curve("E4", 14) = {4};
//+
Physical Curve("E5", 15) = {5};
//+
Physical Curve("E6", 16) = {6};
//+
Physical Curve("E7", 17) = {7};
//+
Physical Curve("E8", 18) = {8};
//+
Physical Curve("E9", 19) = {9};
//+
Physical Curve("E10", 20) = {10};
//+
Transfinite Curve {1, 2, 3, 4, 5, 6, 7, 8, 9, 10} = 2 Using Progression 1;
