r=5;
Point(1)={0.0,50.0,0.0};
Point(2)={195.0,50.0,0.0};
Point(3)={200.0,55.0,0.0};
Point(4)={200.0,95.0,0.0};
Point(5)={195.0,100.0,0.0};
Point(6)={  0.0,100.0,0.0};
Point(7)={150.0,5.0,0.0};
Point(8)={155.0,0.0,0.0};
Point(9)={250.0,0.0,0.0};
Point(10)={250.0,50.0,0.0};
Point(11)={155.0,50.0,0.0};
Point(12)={150.0,45.0,0.0};
Point(13)={155.0,45.0,0.0};
Point(14)={155.0,5.0,0.0};
Point(15)={195.0,55.0,0.0};
Point(16)={195.0,95.0,0.0};
Point(17)={250.0,45.0,0.0};
Point(18)={250.0,5.0,0.0};
Point(19)={0.0,55.0,0.0};
Point(20)={0.0,95.0,0.0};
Point(21)={155.0-0.4*r,45.0,0.0};
Point(22)={155.0-0.4*r,45.0+0.4*r,0.0};
Point(23)={155.0,45.0+0.4*r,0.0};
Point(24)={155.0-r*Cos(45*Pi/180),45.0+r*Sin(45*Pi/180),0.0};
Point(25)={155.0-0.4*r,5.0,0.0};
Point(26)={155.0-0.4*r,5.0-0.4*r,0.0};
Point(27)={155.0,5.0-0.4*r,0.0};
Point(28)={155.0-r*Cos(45*Pi/180),5.0-r*Sin(45*Pi/180),0.0};
Point(29)={195.0+0.4*r,95.0,0.0};
Point(30)={195.0+0.4*r,95.0+0.4*r,0.0};
Point(31)={195.0,95.0+0.4*r,0.0};
Point(32)={195.0+r*Cos(45*Pi/180),95.0+r*Sin(45*Pi/180),0.0};
Point(33)={195.0+0.4*r,55.0,0.0};
Point(34)={195.0+0.4*r,55.0-0.4*r,0.0};
Point(35)={195.0,55.0-0.4*r,0.0};
Point(36)={195.0+r*Cos(45*Pi/180),55.0-r*Sin(45*Pi/180),0.0};
Point(37)={0.0,95.0+0.4*r,0.0};
Point(38)={0.0,55.0-0.4*r,0.0};
Point(39)={250.0,45.0+0.4*r,0.0};
Point(40)={250.0,5.0-0.4*r,0.0};//+
Line(1) = {10, 11};
//+
Line(2) = {11, 23};
//+
Line(3) = {23, 39};
//+
Line(4) = {39, 10};
//+
Line(5) = {39, 17};
//+
Line(6) = {17, 13};
//+
Line(7) = {13, 23};
//+
Line(8) = {13, 14};
//+
Line(9) = {14, 18};
//+
Line(10) = {18, 17};
//+
Line(11) = {18, 40};
//+
Line(12) = {40, 27};
//+
Line(13) = {27, 14};
//+
Line(14) = {27, 8};
//+
Line(15) = {8, 9};
//+
Line(16) = {9, 40};
//+
Line(17) = {13, 21};
//+
Line(18) = {21, 22};
//+
Line(19) = {22, 23};
//+
Line(20) = {21, 12};
//+
Line(21) = {22, 24};
//+
Line(22) = {14, 25};
//+
Line(23) = {25, 7};
//+
Line(24) = {27, 26};
//+
Line(25) = {26, 25};
//+
Line(26) = {26, 28};
//+
Line(27) = {12, 7};
//+
Circle(28) = {7, 14, 28};
//+
Circle(29) = {28, 14, 8};
//+
Circle(30) = {11, 13, 24};
//+
Circle(31) = {24, 13, 12};
//+
Line(32) = {21, 25};
//+
Line(33) = {1, 2};
//+
Line(34) = {2, 35};
//+
Line(35) = {35, 34};
//+
Line(36) = {34, 33};
//+
Line(37) = {33, 15};
//+
Line(38) = {15, 35};
//+
Line(39) = {35, 38};
//+
Line(40) = {38, 1};
//+
Line(41) = {38, 19};
//+
Line(42) = {19, 15};
//+
Line(43) = {34, 36};
//+
Line(44) = {33, 3};
//+
Line(45) = {3, 4};
//+
Line(46) = {4, 29};
//+
Line(47) = {29, 33};
//+
Line(48) = {15, 16};
//+
Line(49) = {16, 29};
//+
Line(50) = {16, 31};
//+
Line(51) = {31, 30};
//+
Line(52) = {30, 29};
//+
Line(53) = {30, 32};
//+
Line(54) = {31, 5};
//+
Line(55) = {5, 6};
//+
Line(56) = {6, 37};
//+
Line(57) = {37, 31};
//+
Line(58) = {16, 20};
//+
Line(59) = {20, 37};
//+
Line(60) = {20, 19};
//+
Circle(61) = {4, 16, 32};
//+
Circle(62) = {32, 16, 5};
//+
Circle(63) = {3, 15, 36};
//+
Circle(64) = {36, 15, 2};
//+
Curve Loop(1) = {42, 48, 58, 60};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {57, -50, 58, 59};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {57, 54, 55, 56};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {47, 37, 48, 49};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {47, 44, 45, 46};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {63, -43, 36, 44};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {35, 43, 64, 34};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {36, 37, 38, 35};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {42, 38, 39, 41};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {33, 34, 39, 40};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {62, -54, 51, 53};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {61, -53, 52, -46};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {49, -52, -51, -50};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {27, -23, -32, 20};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {8, 22, -32, -17};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {6, 8, 9, 10};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {6, 7, 3, 5};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {2, 3, 4, 1};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {21, -30, 2, -19};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {18, 21, 31, -20};
//+
Plane Surface(20) = {20};
//+
Curve Loop(21) = {17, 18, 19, -7};
//+
Plane Surface(21) = {21};
//+
Curve Loop(22) = {28, -26, 25, 23};
//+
Plane Surface(22) = {22};
//+
Curve Loop(23) = {22, -25, -24, 13};
//+
Plane Surface(23) = {23};
//+
Curve Loop(24) = {12, 13, 9, 11};
//+
Plane Surface(24) = {24};
//+
Curve Loop(25) = {15, 16, 12, 14};
//+
Plane Surface(25) = {25};
//+
Curve Loop(26) = {29, -14, 24, 26};
//+
Plane Surface(26) = {26};
//+
Transfinite Curve {62, 51, 49, 37, 35, 64, 63, 36, 38, 61, 52, 50, 59, 41, 30, 19, 17, 31, 18, 7, 25, 22, 13, 24, 28, 29, 11, 5} = 5 Using Progression 1;
//+
Transfinite Curve {1, 3, 6, 9, 12, 15} = 77 Using Progression 1;
//+
Transfinite Curve {27, 32, 8, 10} = 33 Using Progression 1;
//+
Transfinite Curve {45, 47, 48, 60} = 33 Using Progression 1;
//+
Transfinite Curve {55, 57, 58, 42, 39, 33} = 157 Using Progression 1;
//+
Transfinite Curve {54, 53, 46, 44, 43, 34, 40, 56, 4, 2, 21, 21, 20, 23, 26, 14, 16} = 6 Using Progression 1;
//+
Transfinite Surface {16} = {14, 18, 17, 13};
//+
Transfinite Surface {24} = {27, 40, 18, 14};
//+
Transfinite Surface {25} = {8, 9, 40, 27};
//+
Transfinite Surface {26} = {28, 8, 27, 26};
//+
Transfinite Surface {23} = {26, 27, 14, 25};
//+
Transfinite Surface {22} = {7, 28, 26, 25};
//+
Transfinite Surface {15} = {25, 14, 13, 21};
//+
Transfinite Surface {14} = {7, 25, 21, 12};
//+
Transfinite Surface {20} = {12, 21, 22, 24};
//+
Transfinite Surface {21} = {21, 13, 23, 22};
//+
Transfinite Surface {19} = {22, 23, 11, 24};
//+
Transfinite Surface {17} = {13, 17, 39, 23};
//+
Transfinite Surface {18} = {23, 39, 10, 11};
//+
Transfinite Surface {1} = {19, 15, 16, 20};
//+
Transfinite Surface {9} = {38, 35, 15, 19};
//+
Transfinite Surface {10} = {1, 2, 35, 38};
//+
Transfinite Surface {8} = {35, 34, 33, 15};
//+
Transfinite Surface {7} = {2, 36, 34, 35};
//+
Transfinite Surface {6} = {34, 36, 3, 33};
//+
Transfinite Surface {5} = {33, 3, 4, 29};
//+
Transfinite Surface {4} = {15, 33, 29, 16};
//+
Transfinite Surface {12} = {29, 4, 32, 30};
//+
Transfinite Surface {11} = {31, 30, 32, 5};
//+
Transfinite Surface {2} = {16, 31, 37, 20};
//+
Transfinite Surface {3} = {37, 31, 5, 6};
//+
Transfinite Surface {13} = {16, 29, 30, 31};
//+
Recombine Surface {20, 19, 21, 14, 22, 15, 23, 26, 3, 2, 13, 11, 1, 12, 9, 10, 4, 8, 5, 7, 6, 18, 17, 16, 24, 25};
//+
Physical Surface("UPPER", 65) = {3, 2, 1, 10, 9, 8, 7, 6, 5, 4, 12, 11, 13};
//+
Physical Surface("LOWER", 66) = {18, 17, 21, 19, 20, 14, 15, 16, 24, 25, 26, 23, 22};
