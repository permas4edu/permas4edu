L=96.;
Point(1)={0.0,0.0,0.0};
Point(2)={L/6,0.0,0.0};
Point(3)={2*L/6,0.0,0.0};
Point(4)={3*L/6,0.0,0.0};
Point(5)={4*L/6,0.0,0.0};
Point(6)={5*L/6,0.0,0.0};
Point(7)={L,0.0,0.0};
Point(8)={L/6,L/6,0.0};
Point(9)={2*L/6,L/6,0.0};
Point(10)={3*L/6,L/6,0.0};
Point(11)={4*L/6,L/6,0.0};
Point(12)={5*L/6,L/6,0.0};
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
Line(7) = {1, 8};
//+
Line(8) = {8, 9};
//+
Line(9) = {9, 10};
//+
Line(10) = {10, 11};
//+
Line(11) = {11, 12};
//+
Line(12) = {2, 8};
//+
Line(13) = {2, 9};
//+
Line(14) = {3, 9};
//+
Line(15) = {3, 10};
//+
Line(16) = {4, 10};
//+
Line(17) = {5, 10};
//+
Line(18) = {5, 11};
//+
Line(19) = {6, 11};
//+
Line(20) = {6, 12};
//+
Line(21) = {7, 12};
//+
Physical Curve("TRUSS", 22) = {14, 6, 7, 8, 9, 10, 11, 12, 13, 5, 15, 16, 17, 18, 19, 20, 21, 4, 3, 2, 1};
//+
Transfinite Curve {14, 6, 7, 8, 9, 10, 11, 12, 13, 5, 15, 16, 17, 18, 19, 20, 21, 4, 3, 2, 1} = 2 Using Progression 1;
