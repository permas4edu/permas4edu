D=25.;
R=D/2;
L=50.;
W=200.;
Point(1)={0.0,0.0,0.0};
Point(2)={R,0.0,0.0};
Point(3)={0.0,R,0.0};
Point(4)={-R,0.0,0.0};
Point(5)={0.0,-R,0.0};
Point(6)={W/2,0.0,0.0};
Point(7)={W/2,L/2,0.0};
Point(8)={W/2,-L/2,0.0};
Point(9)={-W/2,L/2,0.0};
Point(11)={-W/2,0.0,0.0};
Point(12)={-W/2,-L/2,0.0};
Point(13)={0.0,L/2,0.0};
Point(14)={0.0,-L/2,0.0};
Point(15)={L/2,0.0,0.0};
Point(16)={-L/2,0.0,0.0};
Point(17)={L/2,L/2,0.0};
Point(18)={-L/2,L/2,0.0};
Point(19)={L/2,-L/2,0.0};
Point(20)={-L/2,-L/2,0.0};
//+
Line(1) = {12, 20};
//+
Line(2) = {20, 14};
//+
Line(3) = {14, 19};
//+
Line(4) = {19, 8};
//+
Line(5) = {8, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 17};
//+
Line(8) = {17, 13};
//+
Line(9) = {13, 18};
//+
Line(10) = {18, 9};
//+
Line(11) = {9, 11};
//+
Line(12) = {11, 12};
//+
Line(13) = {11, 16};
//+
Line(14) = {16, 20};
//+
Line(15) = {16, 18};
//+
Line(16) = {3, 13};
//+
Line(17) = {5, 14};
//+
Line(18) = {4, 16};
//+
Line(19) = {2, 15};
//+
Line(20) = {15, 17};
//+
Line(21) = {15, 19};
//+
Circle(22) = {2, 1, 3};
//+
Circle(23) = {3, 1, 4};
//+
Circle(24) = {4, 1, 5};
//+
Circle(25) = {5, 1, 2};
//+
Curve Loop(1) = {13, 15, 10, 11};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {13, 14, -1, -12};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {18, 14, 2, -17, -24};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {23, 18, 15, -9, -16};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {22, 16, -8, -20, -19};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {25, 19, 21, -3, -17};
//+
Plane Surface(6) = {6};
//+
Line(26) = {15, 6};
//+
Curve Loop(7) = {26, 6, 7, -20};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {21, 4, 5, -26};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {10, 13, 1} = 76 Using Progression 1;
//+
Transfinite Curve {7, 26, 4} = 76 Using Progression 1;
//+
Transfinite Curve {12, 14, 21, 5, 11, 15, 20, 6} = 26 Using Progression 1;
//+
Transfinite Curve {9, 8, 2, 3} = 26 Using Progression 1;
//+
Transfinite Curve {22, 23, 24, 25} = 51 Using Progression 1;
//+
Transfinite Curve {18, 16, 19, 17} = 14 Using Progression 1;
//+
Transfinite Surface {1} = {11, 16, 18, 9};
//+
Transfinite Surface {2} = {12, 20, 16, 11};
//+
Transfinite Surface {4} = {4, 3, 13, 16};
//+
Transfinite Surface {3} = {5, 4, 16, 14};
//+
Transfinite Surface {6} = {2, 5, 14, 15};
//+
Transfinite Surface {5} = {2, 3, 13, 15};
//+
Transfinite Surface {7} = {15, 6, 7, 17};
//+
Transfinite Surface {8} = {19, 8, 6, 15};
//+
Recombine Surface {2, 3, 6, 8, 1, 4, 5, 7};
//+
Physical Surface("PLATE", 27) = {2, 3, 6, 8, 1, 4, 5, 7};
