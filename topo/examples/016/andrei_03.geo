a1=0.65;
Rin=0.2;
Rout=0.275;
Point(1)={0.0,0.0,0.0};
Point(2)={a1/2,0.0,-a1/2};
Point(3)={-a1/2,0.0,-a1/2};
Point(4)={-a1/2,0.0,a1/2};
Point(5)={a1/2,0.0,a1/2};
Point(6)={Rin,0.0,0.0};
Point(7)={-Rin,0.0,0.0};
Point(8)={0.0,0.0,Rin};
Point(9)={0.0,0.0,-Rin};
//Point(10)={Rout,0.0,0.0};
//Point(11)={-Rout,0.0,0.0};
//Point(12)={0.0,0.0,Rout};
//Point(13)={0.0,0.0,-Rout};
Point(14)={Rin*Cos(45*Pi/180),0.0,Rin*Sin(45*Pi/180)};
Point(15)={Rin*Cos(3*45*Pi/180),0.0,Rin*Sin(3*45*Pi/180)};
Point(16)={Rin*Cos(5*45*Pi/180),0.0,Rin*Sin(5*45*Pi/180)};
Point(17)={Rin*Cos(7*45*Pi/180),0.0,Rin*Sin(7*45*Pi/180)};
Point(18)={a1/2,0.0,0.0};
Point(19)={-a1/2,0.0,0.0};
Point(20)={0.0,0.0,a1/2};
Point(21)={0.0,0.0,-a1/2};
Point(22)={-a1/2-0.9,0.0,-a1/2};
Point(23)={-a1/2-0.9,0.0, a1/2};
Point(24)={-a1/2-0.9-0.6,0.0,-a1/2};
Point(25)={-a1/2-0.9-0.6,0.0, a1/2};
Point(26)={-a1/2-0.9,0.0,0.0};
Point(27)={-a1/2-0.9-0.6,0.0,0.0};
Point(28)={-a1/2-0.9, 0.05, a1/2};
Point(29)={-a1/2-0.9, 0.05,-a1/2};
Point(30)={-a1/2-0.9-0.6, 0.05,-a1/2};
Point(31)={-a1/2-0.9-0.6, 0.05, a1/2};
Point(32)={-a1/2-0.9, 0.05,-a1/2-0.05};
Point(33)={-a1/2-0.9-0.6,0.05,-a1/2-0.05};
Point(34)={-a1/2-0.9,0.05, a1/2+0.05};
Point(35)={-a1/2-0.9-0.6,0.05, a1/2+0.05};
Point(36)={-a1/2-0.9, 0.55,-a1/2-0.05};
Point(37)={-a1/2-0.9-0.6,0.55,-a1/2-0.05};
Point(38)={-a1/2-0.9,0.55, a1/2+0.05};
Point(39)={-a1/2-0.9-0.6,0.55, a1/2+0.05};//+
Line(1) = {2, 21};
//+
Line(2) = {21, 3};
//+
Line(3) = {3, 19};
//+
Line(4) = {4, 19};
//+
Line(5) = {4, 20};
//+
Line(6) = {20, 5};
//+
Line(7) = {5, 18};
//+
Line(8) = {18, 2};
//+
Line(9) = {9, 21};
//+
Line(10) = {7, 19};
//+
Line(11) = {8, 20};
//+
Line(12) = {6, 18};
//+
Line(13) = {16, 3};
//+
Line(14) = {15, 4};
//+
Line(15) = {14, 5};
//+
Line(16) = {17, 2};
//+
Line(17) = {3, 22};
//+
Line(18) = {19, 26};
//+
//+
Line(19) = {4, 23};
//+
Line(20) = {23, 26};
//+
Line(21) = {26, 22};
//+
Line(22) = {34, 38};
//+
Line(23) = {38, 39};
//+
Line(24) = {39, 35};
//+
Line(25) = {35, 34};
//+
Line(26) = {32, 36};
//+
Line(27) = {36, 37};
//+
Line(28) = {37, 33};
//+
Line(29) = {33, 32};
//+
Circle(30) = {23, 28, 34};
//+
Circle(31) = {25, 31, 35};
//+
Line(32) = {25, 23};
//+
Line(33) = {25, 27};
//+
Line(34) = {27, 26};
//+
Line(35) = {27, 24};
//+
Circle(36) = {24, 30, 33};
//+
Circle(37) = {22, 29, 32};
//+
Line(38) = {24, 22};
//+
Circle(39) = {6, 1, 14};
//+
Circle(40) = {14, 1, 8};
//+
Circle(41) = {8, 1, 15};
//+
Circle(42) = {15, 1, 7};
//+
Circle(43) = {7, 1, 16};
//+
Circle(44) = {16, 1, 9};
//+
Circle(45) = {9, 1, 17};
//+
Circle(46) = {17, 1, 6};
//+
Transfinite Curve {27, 29, 38, 34, 32, 25, 23} = 31 Using Progression 1;
//+
Transfinite Curve {26, 28, 24, 22} = 26 Using Progression 1;
//+
Transfinite Curve {37, 36, 31, 30} = 4 Using Progression 1;
//+
Curve Loop(1) = {21, -38, -35, 34};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {28, 29, 26, 27};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {33, 34, -20, -32};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {24, 25, 22, 23};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {38, 37, -29, -36};
//+
Surface(5) = {5};
//+
Curve Loop(6) = {25, -30, -32, 31};
//+
Surface(6) = {6};
//+
Curve Loop(7) = {19, 20, -18, -4};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {18, 21, -17, 3};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {3, -10, 43, 13};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {13, -2, -9, -44};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {1, -9, 45, 16};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {16, -8, -12, -46};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {7, -12, 39, 15};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {6, -15, 40, 11};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {5, -11, 41, 14};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {14, 4, -10, -42};
//+
Plane Surface(16) = {16};
//+
Transfinite Curve {35, 21, 3, 4, 20, 33, 42, 43, 44, 2, 1, 45, 46, 39, 40, 41, 8, 7, 6, 5} = 16 Using Progression 1;
//+
Transfinite Curve {9, 16, 12, 15, 11, 14, 10, 13} = 6 Using Progression 1;
//+
Transfinite Curve {17, 18, 19} = 46 Using Progression 1;
//
Transfinite Surface {7} = {4, 23, 26, 19};
//+
Transfinite Surface {8} = {26, 22, 3, 19};
//+
Transfinite Surface {1} = {27, 24, 22, 26};
//+
Transfinite Surface {3} = {25, 27, 26, 23};
//+
Transfinite Surface {5} = {24, 33, 32, 22};
//+
Transfinite Surface {2} = {33, 37, 36, 32};
//+
Transfinite Surface {6} = {35, 25, 23, 34};
//+
Transfinite Surface {4} = {39, 35, 34, 38};
//+

//+
Transfinite Surface {16} = {7, 15, 4, 19};
//+
Transfinite Surface {9} = {7, 19, 3, 16};
//+
Transfinite Surface {10} = {21, 9, 16, 3};
//+
Transfinite Surface {11} = {2, 17, 9, 21};
//+
Transfinite Surface {12} = {18, 6, 17, 2};
//+
Transfinite Surface {13} = {14, 6, 18, 5};
//+
Transfinite Surface {14} = {8, 14, 5, 20};
//+
Transfinite Surface {15} = {8, 20, 4, 15};
//+
Recombine Surface {13, 14, 12, 15, 11, 16, 10, 9, 7, 8, 6, 3, 1, 5, 4, 2};
//+
Physical Surface("TRIMMED_STRUCTURE", 47) = {5, 1, 3, 2, 6, 4, 8, 9, 7, 10, 16, 11, 15, 12, 14, 13};
