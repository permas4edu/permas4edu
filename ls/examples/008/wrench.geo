r_1=8.5;
r_2=13.0;
l_1=54.0;
l_2=40.0;
Point(1)={0.0, r_1,0.0};
Point(2)={0.0,-r_1,0.0};
Point(3)={r_2, r_1,0.0};
Point(4)={r_2,-r_1,0.0};
Point(5)={r_1+r_2,0.0,0.0};
Point(6)={2*r_2, r_1,0.0};
Point(7)={2*r_2,-r_1,0.0};
Point(8)={2*r_2+l_1-l_2, r_1,0.0};
Point(9)={2*r_2+l_1-l_2,-r_1,0.0};
Point(10)={2*r_2+l_1, r_1,0.0};
Point(11)={2*r_2+l_1,-r_1,0.0};
Point(12)={2*r_2+l_1+r_1,0.0,0.0};
Point(13)={2*r_2+l_1,0.0,0.0};
Point(14)={r_2, r_1+r_2,0.0};
Point(15)={r_2,-r_1-r_2,0.0};
Point(16)={r_2+r_2*Cos(45*Pi/180), r_1+r_2*Sin(45*Pi/180),0.0};
Point(17)={r_2+r_2*Cos(135*Pi/180), r_1+r_2*Sin(135*Pi/180),0.0};
Point(18)={r_2, 0.0,0.0};
Point(19)={r_2+r_2*Cos(-45*Pi/180),-r_1+r_2*Sin(-45*Pi/180),0.0};
Point(20)={r_2+r_2*Cos(-135*Pi/180),-r_1+r_2*Sin(-135*Pi/180),0.0};
Point(21)={r_2+r_1*Cos(45*Pi/180), r_1*Sin(45*Pi/180),0.0};
Point(22)={r_2+r_1*Cos(45*Pi/180), -r_1*Sin(45*Pi/180),0.0};
Point(23)={2*r_2+l_1+r_1*Cos(45*Pi/180),r_1*Sin(45*Pi/180),0.0};
Point(24)={2*r_2+l_1+r_1*Cos(45*Pi/180),-r_1*Sin(45*Pi/180),0.0};
//Point(25)={r_2+0.5*r_1, r_1,0.0};
Point(26)={r_2+0.5*r_1, r_1+0.5*r_1,0.0};
Point(27)={r_2, r_1+0.5*r_1,0.0};
Point(28)={r_2-0.5*r_1, r_1,0.0};
Point(29)={r_2-0.5*r_1, r_1+0.5*r_1,0.0};
//Point(30)={r_2+0.5*r_1,-r_1,0.0};
Point(31)={r_2+0.5*r_1,-r_1-0.5*r_1,0.0};
Point(32)={r_2,-r_1-0.5*r_1,0.0};
Point(33)={r_2-0.5*r_1,-r_1,0.0};
Point(34)={r_2-0.5*r_1,-r_1-0.5*r_1,0.0};
Point(35)={2*r_2+l_1+0.4*r_1,0.0,0.0};
Point(36)={2*r_2+l_1+0.4*r_1,0.4*r_1,0.0};
Point(37)={2*r_2+l_1+0.4*r_1,-0.4*r_1,0.0};
Point(38)={2*r_2+l_1,0.4*r_1,0.0};
Point(39)={2*r_2+l_1,-0.4*r_1,0.0};
//+
Line(1) = {38, 10};
//+
Line(2) = {38, 36};
//+
Line(3) = {36, 35};
//+
Line(4) = {35, 13};
//+
Line(5) = {13, 38};
//+
Line(6) = {13, 39};
//+
Line(7) = {39, 37};
//+
Line(8) = {37, 35};
//+
Line(9) = {35, 12};
//+
Line(10) = {36, 23};
//+
Line(11) = {37, 24};
//+
Line(12) = {39, 11};
//+
Line(13) = {11, 9};
//+
Line(14) = {10, 8};
//+
//Line(15) = {8, 9};
//+
Line(16) = {8, 6};
//+
Line(17) = {7, 9};
//+
Circle(18) = {12, 13, 23};
//+
Circle(19) = {23, 13, 10};
//+
Circle(20) = {11, 13, 24};
//+
Circle(21) = {24, 13, 12};
//+
Circle(22) = {16, 3, 14};
//+
Circle(23) = {14, 3, 17};
//+
Circle(24) = {17, 3, 1};
//+
Circle(25) = {2, 4, 20};
//+
Circle(26) = {20, 4, 15};
//+
Line(27) = {29, 17};
//+
Line(28) = {27, 14};
//+
Line(29) = {27, 29};
//+
Line(30) = {29, 28};
//+
Line(31) = {28, 3};
//+
Line(32) = {3, 27};
//+
Line(33) = {26, 27};
//+
Line(34) = {26, 16};
//+
Line(35) = {28, 1};
//+
Line(36) = {2, 33};
//+
Line(37) = {33, 34};
//+
Line(38) = {34, 32};
//+
Line(39) = {32, 4};
//+
Line(40) = {4, 33};
//+
Line(41) = {34, 20};
//+
Line(42) = {32, 15};
//+
Line(43) = {32, 31};
//+
Line(44) = {31, 19};
//+
Circle(45) = {15, 4, 19};
//+
Circle(46) = {19, 4, 7};
//+
Circle(47) = {6, 3, 16};
//+
Circle(48) = {21, 18, 3};
//+
//+
//Circle(49) = {5, 18, 21};
//+
//Circle(50) = {5, 18, 22};
//+
Circle(51) = {22, 18, 4};
//+
//Line(52) = {6, 7};
//+
Line(53) = {21, 6};
//+
Line(54) = {22, 7};
//+
Line(55) = {21, 26};
//+
Line(56) = {22, 31};
Point(40)={2*r_2, 0.0,0.0};
Point(41)={2*r_2+l_1-l_2,0.0,0.0};
Point(42)={2*r_2, 0.4*r_1,0.0};
Point(43)={2*r_2+l_1-l_2,0.4*r_1,0.0};
Point(44)={2*r_2, -0.4*r_1,0.0};
Point(45)={2*r_2+l_1-l_2,-0.4*r_1,0.0};
Point(46)={r_2+r_1*Cos(22.5*Pi/180), r_1*Sin(22.5*Pi/180),0.0};
Point(47)={r_2+r_1*Cos(22.5*Pi/180), -r_1*Sin(22.5*Pi/180),0.0};
//+
Line(57) = {38, 43};
//+
Line(58) = {43, 8};
//+
Line(59) = {43, 41};
//+
Line(60) = {13, 41};
//+
Line(61) = {41, 45};
//+
Line(62) = {45, 39};
//+
Line(63) = {45, 9};
//+
Line(64) = {44, 45};
//+
Line(65) = {44, 40};
//+
Line(66) = {40, 41};
//+
Line(67) = {43, 42};
//+
Line(68) = {42, 6};
//+
Line(69) = {42, 40};
//+
Line(70) = {44, 7};
//+
Line(71) = {47, 44};
//+
Line(72) = {5, 40};
//+
Line(73) = {46, 42};
//+
Circle(74) = {21, 18, 46};
//+
Circle(75) = {46, 18, 5};
//+
Circle(76) = {5, 18, 47};
//+
Circle(77) = {47, 18, 22};
//+
Curve Loop(1) = {35, -24, -27, 30};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {27, -23, -28, 29};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {22, -28, -33, 34};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {47, -34, -55, 53};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {33, -32, -48, 55};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {29, 30, 31, 32};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {36, 37, 41, -25};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {41, 26, -42, -38};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {37, 38, 39, 40};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {42, 45, -44, -43};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {51, -39, 43, -56};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {44, 46, -54, 56};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {54, -70, -71, 77};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {65, -72, 76, 71};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {75, 72, -69, -73};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {74, 73, 68, -53};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {16, -68, -67, 58};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {14, -58, -57, 1};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {59, -66, -69, -67};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {65, 66, 61, -64};
//+
Plane Surface(20) = {20};
//+
Curve Loop(21) = {70, 17, -63, -64};
//+
Plane Surface(21) = {21};
//+
Curve Loop(22) = {57, 59, -60, 5};
//+
Plane Surface(22) = {22};
//+
Curve Loop(23) = {60, 61, 62, -6};
//+
Plane Surface(23) = {23};
//+
Curve Loop(24) = {62, 12, 13, -63};
//+
Plane Surface(24) = {24};
//+
Curve Loop(25) = {7, 11, -20, -12};
//+
Plane Surface(25) = {25};
//+
Curve Loop(26) = {8, 9, -21, -11};
//+
Plane Surface(26) = {26};
//+
Curve Loop(27) = {4, 6, 7, 8};
//+
Plane Surface(27) = {27};
//+
Curve Loop(28) = {3, 4, 5, 2};
//+
Plane Surface(28) = {28};
//+
Curve Loop(29) = {10, -18, -9, -3};
//+
Plane Surface(29) = {29};
//+
Curve Loop(30) = {19, -1, 2, 10};
//+
Plane Surface(30) = {30};
//+
Transfinite Curve {16, 67, 66, 64, 17} = 15 Using Progression 1;
//+
Transfinite Curve {14, 57, 60, 62, 13} = 41 Using Progression 1;
//+
Transfinite Curve {74, 68, 58, 1, 10, 9, 11, 12, 63, 70, 77} = 6 Using Progression 1;
//+
Transfinite Surface {18} = {43, 8, 10, 38};
//+
Transfinite Surface {22} = {41, 43, 38, 13};
//+
Transfinite Surface {23} = {45, 41, 13, 39};
//+
Transfinite Surface {24} = {9, 45, 39, 11};
//+
Transfinite Curve {19, 2, 4, 7, 20} = 11 Using Progression 1;
//+
Transfinite Curve {21, 8, 6, 61, 65, 76} = 11 Using Progression 1;
//+
Transfinite Curve {75, 69, 59, 5, 3, 18} = 11 Using Progression 1;
//+
Transfinite Surface {29} = {35, 12, 23, 36};
//+
Transfinite Surface {28} = {13, 35, 36, 38};
//+
Transfinite Surface {15} = {5, 40, 42, 46};
//+
Transfinite Surface {19} = {40, 41, 43, 42};
//+
Transfinite Surface {17} = {42, 43, 8, 6};
//+
//+
Recombine Surface {17, 18, 23, 22, 19, 24, 28, 29};
//+
Transfinite Surface {30} = {38, 36, 23, 10};
//+
Recombine Surface {30};
//+
Transfinite Surface {27} = {39, 37, 35, 13};
//+
Recombine Surface {27};
//+
Transfinite Surface {26} = {37, 24, 12, 35};
//+
Recombine Surface {26};
//+
Transfinite Surface {25} = {39, 11, 24, 37};
//+
Recombine Surface {25};
//+
Transfinite Curve {35, 27, 28, 34, 53, 73, 72, 71, 54, 44, 42, 41, 36} = 11 Using Progression 1;
//+
Transfinite Curve {24, 30, 32, 55, 47} = 11 Using Progression 1;
//+
Transfinite Curve {25, 37, 39, 56, 46} = 11 Using Progression 1;
//+
Transfinite Curve {51, 43, 45, 26, 38, 40} = 11 Using Progression 1;
//+
Transfinite Curve {31, 29, 23} = 11 Using Progression 1;
//+
Transfinite Curve {22, 33, 48} = 11 Using Progression 1;
//+
//+
Recombine Surface {15};
//+
Transfinite Surface {14} = {47, 44, 40, 5};
//+
Recombine Surface {14};
//+
Transfinite Surface {20} = {44, 45, 41, 40};
//+
Recombine Surface {20};
//+
Transfinite Surface {21} = {7, 9, 45, 44};
//+
Recombine Surface {21};
//+
Transfinite Surface {16} = {46, 42, 6, 21};
//+
Recombine Surface {16};
//+
Transfinite Surface {13} = {47, 22, 7, 44};
//+
Recombine Surface {13};
//+
Transfinite Surface {2} = {29, 27, 14, 17};
//+
Recombine Surface {2};
//+
Transfinite Surface {1} = {17, 1, 28, 29};
//+
Recombine Surface {1};
//+
Transfinite Surface {6} = {3, 27, 29, 28};
//+
Recombine Surface {6};
//+
Transfinite Surface {5} = {27, 3, 21, 26};
//+
Recombine Surface {5};
//+
Transfinite Surface {3} = {27, 26, 16, 14};
//+
Recombine Surface {3};
//+
Transfinite Surface {4} = {21, 6, 16, 26};
//+
Recombine Surface {4};
//+
Transfinite Surface {12} = {31, 19, 7, 22};
//+
Recombine Surface {12};
//+
Transfinite Surface {11} = {32, 31, 22, 4};
//+
Recombine Surface {11};
//+
Transfinite Surface {9} = {34, 32, 4, 33};
//+
Recombine Surface {9};
//+
Transfinite Surface {7} = {2, 20, 34, 33};
//+
Recombine Surface {7};
//+
Transfinite Surface {8} = {34, 20, 15, 32};
//+
Recombine Surface {8};
//+
Transfinite Surface {10} = {32, 15, 19, 31};
//+
Recombine Surface {10};
//+
Physical Surface("WRENCH", 78) = {1, 2, 6, 5, 3, 4, 16, 17, 18, 30, 29, 28, 22, 19, 15, 14, 20, 23, 27, 26, 25, 24, 21, 13, 12, 11, 9, 7, 8, 10};
