r=5.;
a=60.;
b=150.;
d=120.;
Point(1)={0.0,0.0,0.0};
Point(2)={a/2,0.0,0.0};
Point(3)={0.0,b/2,0.0};
Point(4)={a/2,b/2,0.0};
Point(5)={0.0,-b/2,0.0};
Point(6)={a/2,-b/2,0.0};
Point(7)={a,-b/2,0.0};
Point(8)={a, b/2,0.0};
Point(9)={a,-b/2+a/2,0.0};
Point(10)={a, b/2-a/2,0.0};
Point(11)={a/2,-b/2+a/2,0.0};
Point(12)={a/2, b/2-a/2,0.0};
Point(13)={0.0,-b/2+a/2,0.0};
Point(14)={0.0, b/2-a/2,0.0};
Point(15)={45.0, d/2,0.0};
Point(16)={45.0,-d/2,0.0};
Point(17)={45.0+r, d/2,0.0};
Point(18)={45.0-r, d/2,0.0};
Point(19)={45.0, d/2+r,0.0};
Point(20)={45.0, d/2-r,0.0};
Point(21)={45.0+r,-d/2,0.0};
Point(22)={45.0-r,-d/2,0.0};
Point(23)={45.0,-d/2+r,0.0};
Point(24)={45.0,-d/2-r,0.0};
Point(25)={a,-d/2,0.0};
Point(26)={a, d/2,0.0};
Point(27)={a/2,-d/2,0.0};
Point(28)={a/2, d/2,0.0};
Point(29)={0.0,-d/2,0.0};
Point(30)={0.0, d/2,0.0};//+
Point(31)={45.0, b/2,0.0};
Point(32)={45.0,-b/2,0.0};
Point(33)={45.0, b/2-a/2,0.0};
Point(34)={45.0,-b/2+a/2,0.0};
Line(1) = {5, 6};
//+
Line(3) = {7, 25};
//+
Line(4) = {25, 9};
//+
//+
Line(6) = {11, 2};
//+
Line(7) = {2, 12};
//+
Line(9) = {10, 26};
//+
Line(10) = {26, 8};
//+
Line(12) = {4, 3};
//+
Line(13) = {3, 30};
//+
Line(14) = {30, 14};
//+
Line(15) = {14, 1};
//+
Line(16) = {1, 13};
//+
Line(17) = {13, 29};
//+
Line(18) = {29, 5};
//+
Line(19) = {6, 27};
//+
Line(20) = {27, 11};
//+
Line(21) = {11, 13};
//+
Line(22) = {2, 1};
//+
Line(23) = {14, 12};
//+
Line(24) = {12, 28};
//+
Line(25) = {28, 4};
//+
Circle(26) = {17, 15, 19};
//+
Circle(27) = {19, 15, 18};
//+
Circle(28) = {18, 15, 20};
//+
Circle(29) = {20, 15, 17};
//+
Circle(30) = {21, 16, 23};
//+
Circle(31) = {23, 16, 22};
//+
Circle(32) = {22, 16, 24};
//+
Circle(33) = {24, 16, 21};
//+
Line(34) = {30, 28};
//+
Line(35) = {29, 27};
//+
Line(36) = {27, 22};
//+
Line(37) = {21, 25};
//+
Line(38) = {28, 18};
//+
Line(39) = {17, 26};
//+
Line(40) = {4, 31};
//+
Line(41) = {31, 8};
//+
Line(42) = {19, 31};
//+
Line(43) = {20, 33};
//+
Line(44) = {12, 33};
//+
Line(45) = {33, 10};
//+
Line(46) = {11, 34};
//+
Line(47) = {34, 23};
//+
Line(48) = {34, 9};
//+
Line(49) = {6, 32};
//+
Line(50) = {32, 24};
//+
Line(51) = {32, 7};
//+
Transfinite Curve {14, 13, 25, 40, 41, 10, 9, 45, 44, 24, 46, 48, 4, 20, 19, 51, 3, 49, 18, 17} = 16 Using Progression 1;
//+
Transfinite Curve {12, 34, 23, 22, 21, 35, 1} = 31 Using Progression 1;
//+
Transfinite Curve {15, 7, 6, 16} = 46 Using Progression 1;
//+
Transfinite Curve {47, 36, 50, 37, 43, 39, 38, 42} = 11 Using Progression 1;
//+
Transfinite Curve {27, 26, 29, 28, 30, 31, 32, 33} = 31 Using Progression 1;
//+
Curve Loop(1) = {12, 13, 34, 25};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {40, -42, 27, -38, 25};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {41, -10, -39, 26, 42};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {9, -39, -29, 43, 45};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {44, -43, -28, -38, -24};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {24, -34, 14, 23};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {15, -22, 7, -23};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {16, -21, 6, 22};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {17, 35, 20, 21};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {18, 1, 19, -35};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {46, 47, 31, -36, 20};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {48, -4, -37, 30, -47};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {3, -37, -33, -50, 51};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {50, -32, -36, -19, 49};
//+
Plane Surface(14) = {14};
//+
Transfinite Surface {8} = {1, 13, 11, 2};
//+
Transfinite Surface {7} = {1, 2, 12, 14};
//+
Transfinite Surface {6} = {14, 12, 28, 30};
//+
Transfinite Surface {1} = {28, 4, 3, 30};
//+
Transfinite Surface {2} = {31, 28, 18, 19};
//+
Transfinite Surface {3} = {19, 17, 26, 31};
//+
Transfinite Surface {4} = {17, 20, 33, 26};
//+
Transfinite Surface {5} = {20, 18, 28, 33};
//+
Transfinite Surface {9} = {11, 13, 29, 27};
//+
Transfinite Surface {10} = {29, 5, 6, 27};
//+
Transfinite Surface {11} = {34, 27, 22, 23};
//+
Transfinite Surface {12} = {34, 23, 21, 25};
//+
Transfinite Surface {14} = {24, 22, 27, 32};
//+
Transfinite Surface {13} = {21, 24, 32, 25};
//+
Recombine Surface {1, 2, 3, 6, 5, 4, 7, 8, 9, 11, 12, 10, 14, 13};
//+
Physical Surface("PART", 52) = {1, 2, 3, 6, 5, 4, 7, 8, 9, 11, 12, 10, 14, 13};
//+
Physical Point("CENTER", 53) = {15, 16};
