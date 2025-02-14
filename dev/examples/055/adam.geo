a=50.;
b=200.;
R15=15.;
R10=10.;
R5=5.0;
c=50.;
d=40.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={b,b-a,0.0};
Point(4)={b,b-a/2,0.0};
Point(5)={b,b,0.0};
Point(6)={R10,b,0.0};
Point(7)={0.0,b-R10,0.0};
Point(8)={R10,b-R10,0.0};
Point(9)={0.0,c+R15,0.0};
Point(10)={0.0,c-R15,0.0};
Point(11)={R15,c,0.0};
Point(12)={b-d,b-a/2,0.0}; // Center of hole
Point(13)={b-d+R15,b-a/2,0.0}; 
Point(14)={b-d-R15,b-a/2,0.0}; 
Point(15)={b-d,b-a/2+R15,0.0};
Point(16)={b-d,b-a/2-R15,0.0};
Point(17)={a,a,0.0};
Point(18)={a,a-R15,0.0};
Point(19)={a,a+R15,0.0};
Point(20)={a-R15,a,0.0};
Point(21)={0.0,a,0.0};
Point(22)={b-d,b,0.0};
Point(23)={b-d,b-a,0.0};
Point(24)={b-2*d,b-a,0.0};
Point(25)={b-2*d,b,0.0};
Point(26)={b-2*d,b-c/2,0.0};
Point(27)={a,b-c-R5,0.0};
Point(28)={a+R5,b-c-R5,0.0};
Point(29)={a+R5,b-c,0.0};
Point(30)={0.0,b-c-R5,0.0};
Point(31)={a+R5,b,0.0};
Point(32)={R10+R10*Cos(3*45*Pi/180),b-R10+R10*Sin(3*45*Pi/180),0.0};
Point(33)={a+R5+R5*Cos(3*45*Pi/180),b-c-R5+R5*Sin(3*45*Pi/180),0.0};
Point(34)={a+2*R5,b-c,0.0};
Point(35)={a+2*R5,b,0.0};
Point(36)={a,b-c-2*R5,0.0};
Point(37)={0.0,b-c-2*R5,0.0};
Point(38)={0.0,c+R15+R10,0.0};
Point(39)={a,c+R15+R10,0.0};
Point(40)={0.0,c-R15-R10,0.0};
Point(41)={a,c-R15-R10,0.0};
Point(42)={a/2,c-R15-R10,0.0};
Point(43)={a/2,c,0.0};
Point(44)={a/2,c+R15+R10,0.0};
//+
Circle(1) = {13, 12, 15};
//+
Circle(2) = {15, 12, 14};
//+
Circle(3) = {14, 12, 16};
//+
Circle(4) = {16, 12, 13};
//+
Circle(5) = {29, 28, 33};
//+
Circle(6) = {33, 28, 27};
//+
Circle(7) = {6, 8, 32};
//+
Circle(8) = {32, 8, 7};
//+
//+
Circle(9) = {10, 21, 11};
//+
Circle(10) = {11, 21, 9};
//+
Circle(11) = {18, 17, 20};
//+
Circle(12) = {20, 17, 19};
//+
//+
Line(13) = {13, 4};
//+
Line(14) = {4, 5};
//+
Line(15) = {5, 22};
//+
Line(16) = {22, 15};
//+
Line(17) = {25, 22};
//+
Line(18) = {14, 26};
//+
Line(19) = {26, 25};
//+
Line(20) = {24, 26};
//+
Line(21) = {24, 23};
//+
Line(22) = {23, 16};
//+
Line(23) = {23, 3};
//+
Line(24) = {3, 4};
//+
Curve Loop(1) = {21, 22, -3, 18, -20};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {18, 19, 17, 16, 2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {15, 16, -1, 13, 14};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {13, -24, -23, 22, 4};
//+
Plane Surface(4) = {4};
//+
Line(25) = {32, 33};
//+
Line(26) = {35, 25};
//+
Line(27) = {34, 24};
//+
Line(28) = {34, 35};
//+
Line(29) = {40, 10};
//+
Line(30) = {9, 38};
//+
Line(31) = {19, 39};
//+
Line(32) = {18, 41};
//+
Line(33) = {41, 42};
//+
Line(34) = {42, 40};
//+
Line(35) = {42, 43};
//+
Line(36) = {43, 11};
//+
Line(37) = {43, 20};
//+
Line(38) = {44, 39};
//+
Line(39) = {44, 38};
//+
Line(40) = {38, 37};
//+
Line(41) = {37, 36};
//+
Line(42) = {36, 39};
//+
Line(43) = {40, 1};
//+
Line(44) = {1, 2};
//+
Line(45) = {2, 41};
//+
Line(46) = {30, 7};
//+
Line(47) = {6, 31};
//+
Line(48) = {30, 37};
//+
Line(49) = {36, 27};
//+
Line(50) = {29, 34};
//+
Line(51) = {31, 35};
//+
Line(52) = {43, 44};
//+
Curve Loop(5) = {40, 41, 42, -38, 39};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {41, 49, -6, -25, 8, -46, 48};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {25, -5, 50, 28, -51, -47, 7};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {27, 20, 19, -26, -28};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {12, 31, -38, -52, 37};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {52, 39, -30, -10, -36};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {9, -36, -35, 34, 29};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {33, 35, 37, -11, 32};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {34, 43, 44, 45, 33};
//+
Plane Surface(13) = {13};
//+
Transfinite Curve {36, 29, 30, 31, 32} = 6 Using Progression 1;
//+
Transfinite Curve {39, 52, 38, 34, 33, 35} = 6 Using Progression 1;
//+
Transfinite Curve {9, 10, 12, 11} = 11 Using Progression 1;
//+
Transfinite Curve {37} = 6 Using Progression 1;
Transfinite Curve {44} = 11 Using Progression 1;
//+
Transfinite Curve {43, 45} = 6 Using Progression 1;
Transfinite Curve {41, 25, 28} = 11 Using Progression 1;
//+
Transfinite Curve {42, 40} = 15 Using Progression 1;

Transfinite Curve {20, 19, 14, 24} = 6 Using Progression 1;
//+
Transfinite Curve {21, 23, 15, 17} = 6 Using Progression 1;
//+
Transfinite Curve {2, 1, 4, 3} = 11 Using Progression 1;
//+
Transfinite Curve {18, 16, 13, 22} = 7 Using Progression 1;
Transfinite Curve {27, 26} = 11 Using Progression 1;

Transfinite Curve {8, 7} = 3 Using Progression 1;
//+
Transfinite Curve {6, 5} = 3 Using Progression 1;
//+
Transfinite Curve {49, 50} = 7 Using Progression 1;
//+
Transfinite Curve {48, 51} = 2 Using Progression 1;
//+
Transfinite Curve {46, 47} = 6 Using Progression 1;
//+
Transfinite Surface {11} = {11, 43, 40, 10};
//+
Transfinite Surface {10} = {38, 9, 11, 43};
//+
Transfinite Surface {9} = {19, 39, 43, 20};
//+
Transfinite Surface {12} = {20, 43, 41, 18};
//+

//+
Transfinite Surface {13} = {1, 2, 41, 40};
//+

//+
Transfinite Surface {5} = {38, 37, 36, 39};
//+

//+
Transfinite Surface {1} = {14, 26, 23, 16};
//+
Transfinite Surface {4} = {13, 16, 23, 4};
//+
Transfinite Surface {3} = {15, 13, 4, 22};
//+
Transfinite Surface {2} = {15, 22, 26, 14};
//+

//+
Transfinite Surface {8} = {34, 24, 25, 35};
//+

//+
Transfinite Surface {6} = {36, 33, 32, 37};
//+
Transfinite Surface {7} = {34, 35, 32, 33};
//+
Recombine Surface {12, 13, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
//+
Physical Surface("COMPONENT", 53) = {13, 12, 11, 9, 10, 5, 4, 1, 3, 6, 2, 8, 7};
