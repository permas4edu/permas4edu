r=0.25;
rf=0.1;
Point(1)={-1.0,-1.0,0.0};
Point(2)={ 0.0,-1.0,0.0};
Point(3)={ 1.0,-1.0,0.0};
Point(4)={-1.0, 0.0,0.0};
Point(5)={-1.0, 1.0,0.0};
//
Point(6)={-1.0+r,-1.0,0.0};
Point(7)={-1.0-r,-1.0,0.0};
Point(8)={-1.0,-1.0+r,0.0};
Point(9)={-1.0,-1.0-r,0.0};
//
Point(10)={0.0+r,-1.0,0.0};
Point(11)={0.0-r,-1.0,0.0};
Point(12)={0.0,-1.0+r,0.0};
Point(13)={0.0,-1.0-r,0.0};
//
Point(14)={1.0+r,-1.0,0.0};
Point(15)={1.0-r,-1.0,0.0};
Point(16)={1.0,-1.0+r,0.0};
Point(17)={1.0,-1.0-r,0.0};
//
Point(18)={-1.0+r,0.0,0.0};
Point(19)={-1.0-r,0.0,0.0};
Point(20)={-1.0,0.0+r,0.0};
Point(21)={-1.0,0.0-r,0.0};
//
Point(22)={-1.0+r,1.0,0.0};
Point(23)={-1.0-r,1.0,0.0};
Point(24)={-1.0,1.0+r,0.0};
Point(25)={-1.0,1.0-r,0.0};
//
Point(26)={-1.5, 1.5,0.0};
Point(27)={-0.5, 1.5,0.0};
Point(28)={ 1.5,-0.5,0.0};
Point(29)={ 1.5-rf,-1.5,0.0};
Point(30)={ 1.5,-1.5+rf,0.0};
Point(31)={ 1.5-rf,-1.5+rf,0.0};
Point(32)={-1.5,-1.5+rf,0.0};
Point(33)={-1.5+rf,-1.5+rf,0.0};
Point(34)={-1.5+rf,-1.5,0.0};
Point(35)={-0.5+rf,-0.5,0.0};
Point(36)={-0.5,-0.5+rf,0.0};
Point(37)={-0.5+rf,-0.5+rf,0.0};
Point(38)={-1.0,-1.5,0.0};
Point(39)={ 0.0,-1.5,0.0};
Point(40)={ 1.0,-1.5,0.0};
Point(41)={ 1.0,-0.5,0.0};
Point(42)={ 0.0,-0.5,0.0};
Point(43)={ 1.5,-1.0,0.0};
Point(44)={-1.5,-1.0,0.0};
Point(45)={-1.5, 0.0,0.0};
Point(46)={-0.5, 0.0,0.0};
Point(47)={-1.5, 1.0,0.0};
Point(48)={-0.5, 1.0,0.0};
Point(49)={-1.0, 1.5,0.0};
Point(50)={-1.5, 0.5,0.0};
Point(51)={-1.0, 0.5,0.0};
Point(52)={-0.5, 0.5,0.0};
Point(53)={ 0.5,-1.5,0.0};
Point(54)={ 0.5,-1.0,0.0};
Point(55)={ 0.5,-0.5,0.0};
Point(56)={-1.5,-0.5,0.0};
Point(57)={-1.0,-0.5,0.0};
Point(58)={-0.5,-1.0,0.0};
Point(59)={-0.5,-1.5,0.0};
Point(60)={-1+0.5*Cos(35*Pi/189),-1+0.5*Sin(35*Pi/180),0.0};
Point(61)={-1+0.5*Cos(55*Pi/189),-1+0.5*Sin(55*Pi/180),0.0};
//+
Circle(1) = {22, 5, 24};
//+
Circle(2) = {24, 5, 23};
//+
Circle(3) = {23, 5, 25};
//+
Circle(4) = {25, 5, 22};
//+
Circle(5) = {18, 4, 20};
//+
Circle(6) = {20, 4, 19};
//+
Circle(7) = {19, 4, 21};
//+
Circle(8) = {21, 4, 18};
//+
Circle(9) = {6, 1, 8};
//+
Circle(10) = {8, 1, 7};
//+
Circle(11) = {7, 1, 9};
//+
Circle(12) = {9, 1, 6};
//+
Circle(13) = {10, 2, 12};
//+
Circle(14) = {12, 2, 11};
//+
Circle(15) = {11, 2, 13};
//+
Circle(16) = {13, 2, 10};
//+
Circle(17) = {14, 3, 16};
//+
Circle(18) = {16, 3, 15};
//+
Circle(19) = {15, 3, 17};
//+
Circle(20) = {17, 3, 14};
//+
Circle(21) = {32, 33, 34};
//+
Circle(22) = {29, 31, 30};
//+
Circle(23) = {36, 37, 35};
//+
Line(24) = {34, 38};
//+
Line(25) = {38, 59};
//+
Line(26) = {59, 39};
//+
Line(27) = {39, 53};
//+
Line(28) = {53, 40};
//+
Line(29) = {40, 29};
//+
Line(30) = {30, 43};
//+
Line(31) = {43, 28};
//+
Line(32) = {28, 41};
//+
Line(33) = {41, 55};
//+
Line(34) = {55, 42};
//+
Line(35) = {42, 35};
//+
Line(36) = {36, 46};
//+
Line(37) = {46, 52};
//+
Line(38) = {52, 48};
//+
Line(39) = {48, 27};
//+
Line(40) = {27, 49};
//+
Line(41) = {49, 26};
//+
Line(42) = {26, 47};
//+
Line(43) = {47, 50};
//+
Line(44) = {50, 45};
//+
Line(45) = {45, 56};
//+
Line(46) = {56, 44};
//+
Line(47) = {44, 32};
//+
Line(48) = {38, 9};
//+
Line(49) = {8, 57};
//+
Line(50) = {57, 21};
//+
Line(51) = {20, 51};
//+
Line(52) = {51, 25};
//+
Line(53) = {24, 49};
//+
Line(54) = {44, 7};
//+
Line(55) = {6, 58};
//+
Line(56) = {58, 11};
//+
Line(57) = {10, 54};
//+
Line(58) = {54, 15};
//+
Line(59) = {14, 43};
//+
Line(60) = {40, 17};
//+
Line(61) = {16, 41};
//+
Line(62) = {54, 55};
//+
Line(63) = {12, 42};
//+
Line(64) = {56, 57};
//+
Line(65) = {53, 54};
//+
Line(66) = {39, 13};
//+
Line(67) = {59, 58};
//+
Line(68) = {45, 19};
//+
Line(69) = {50, 51};
//+
Line(70) = {51, 52};
//+
Line(71) = {22, 48};
//+
Line(72) = {47, 23};
//+
Line(73) = {18, 46};
//+
Circle(74) = {58, 1, 60};
//+
Circle(75) = {60, 1, 61};
//+
Circle(76) = {61, 1, 57};
//+
Line(77) = {61, 36};
//+
Line(78) = {60, 35};
//+
Curve Loop(1) = {41, 42, 72, -2, 53};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {40, -53, -1, 71, 39};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, -52, -69, -43, 72};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {71, -38, -70, 52, 4};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {51, -69, 44, 68, -6};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {70, -37, -73, 5, 51};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {31, 32, -61, -17, 59};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {33, -62, 58, -18, 61};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {45, 64, 50, -7, -68};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {49, -64, 46, 54, -10};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {54, 11, -48, -24, -21, -47};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {12, 55, -67, -25, 48};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {74, 75, 76, -49, -9, 55};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {67, 56, 15, -66, -26};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {16, 57, -65, -27, 66};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {62, 34, -63, -13, 57};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {58, 19, -60, -28, 65};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {20, 59, -30, -22, -29, 60};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {35, -78, -74, 56, -14, 63};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {75, 77, 23, -78};
//+
Plane Surface(20) = {20};
//+
Curve Loop(21) = {36, -73, -8, -50, -76, 77};
//+
Plane Surface(21) = {21};
//+
Transfinite Curve {41, 42, 40, 39, 38, 70, 69, 43, 44, 37, 45, 46, 64, 25, 67, 26, 27, 28, 65, 62, 34, 33, 32, 31} = 9 Using Progression 1;
//+
Transfinite Curve {53, 72, 52, 71, 51, 68, 50, 73, 54, 49, 55, 48, 66, 56, 63, 57, 58, 61, 59, 60} = 4 Using Progression 1;
//+
Transfinite Curve {2, 1, 4, 3, 6, 5, 7, 8, 10, 9, 12, 11, 15, 14, 13, 16, 19, 18, 17, 20} = 17 Using Progression 1;
//+
Transfinite Curve {29, 30} = 7 Using Progression 1;
//+
Transfinite Curve {22} = 5 Using Progression 1;
//+
Transfinite Curve {47, 24} = 7 Using Progression 1;
//+
Transfinite Curve {21} = 5 Using Progression 1;
//+
Transfinite Curve {77, 75, 78, 23} = 3 Using Progression 1;
//+
Transfinite Curve {76, 36, 35, 74} = 8 Using Progression 1;
//+
Transfinite Surface {1} = {23, 24, 49, 47};
//+
Transfinite Surface {2} = {24, 22, 48, 49};
//+
Transfinite Surface {3} = {23, 47, 51, 25};
//+
Transfinite Surface {4} = {22, 25, 51, 48};
//+
Transfinite Surface {5} = {20, 51, 45, 19};
//+
Transfinite Surface {6} = {51, 20, 18, 46};
//+
Transfinite Surface {9} = {19, 45, 57, 21};
//+
Transfinite Surface {10} = {8, 57, 44, 7};
//+
//+
Transfinite Surface {12} = {6, 9, 38, 58};
//+
Transfinite Surface {14} = {11, 58, 39, 13};
//+
Transfinite Surface {15} = {10, 13, 39, 54};
//+
Transfinite Surface {16} = {12, 10, 54, 42};
//+
Transfinite Surface {8} = {41, 54, 15, 16};
//+
Transfinite Surface {7} = {41, 16, 14, 43};
//+
Transfinite Surface {17} = {15, 54, 40, 17};
//+

//+
Transfinite Surface {18} = {14, 17, 40, 43};
//+

//+
Transfinite Surface {11} = {7, 44, 38, 9};
//+
//+
Transfinite Surface {20} = {36, 61, 60, 35};
//+
Transfinite Surface {13} = {8, 6, 58, 57};
//+
Transfinite Surface {21} = {18, 21, 57, 46};
//+
Transfinite Surface {19} = {11, 12, 42, 58};
//+
Recombine Surface {11, 12, 14, 15, 17, 18, 13, 10, 19, 16, 8, 7, 20, 9, 21, 5, 6, 3, 4, 1, 2};
//+
Extrude {0, 0, 1} {
  Surface{7}; Surface{18}; Surface{8}; Surface{2}; Surface{17}; Surface{16}; Surface{4}; Surface{1}; Surface{15}; Surface{6}; Surface{3}; Surface{20}; Surface{19}; Surface{21}; Surface{14}; Surface{5}; Surface{13}; Surface{9}; Surface{12}; Surface{10}; Surface{11}; Layers {12}; Recombine;
}
//+
Physical Volume("BEAM", 666) = {1, 2, 3, 5, 4, 6, 7, 9, 8, 10, 13, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21};
