r=2.5;
xc=-25.;
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0};
Point(3)={-r,0.0,0.0};
Point(4)={0.0,r,0.0};
Point(5)={0.0,-r,0.0};
Point(6)={xc,0.0,0.0};
Point(7)={xc+r,0.0,0.0};
Point(8)={xc-r,0.0,0.0};
Point(9)={xc,r,0.0};
Point(10)={xc,-r,0.0};
Point(11)={25.,30.,0.0};
Point(12)={25.,-30.,0.0};
Point(13)={-135.,-30.,0.0};
Point(14)={-135.,-170.,0.0};
Point(15)={-215.,-170.,0.0};
Point(16)={-215.,30.,0.0};
Point(17)={-135.,30.,0.0};
Point(18)={-215.,-30.,0.0};
Point(19)={0.0,30.0,0.0};
Point(20)={0.0,-30.0,0.0};
Point(21)={xc,30.0,0.0};
Point(22)={xc,-30.0,0.0};
Point(23)={25,0.0,0.0};
Point(24)={-215,0.0,0.0};
Point(25)={-50.,0.0,0.0};
Point(26)={-50.,30.0,0.0};
Point(27)={-50.,-30.0,0.0};
Point(28)={-135.,0.,0.0};
Point(29)={2*r,0.0,0.0};
Point(30)={-2*r,0.0,0.0};
Point(31)={0.0,2*r,0.0};
Point(32)={0.0,-2*r,0.0};
Point(33)={2*r,2*r,0.0};
Point(34)={-2*r,2*r,0.0};
Point(35)={-2*r,-2*r,0.0};
Point(36)={2*r,-2*r,0.0};
Point(37)={2*r,30.,0.0};
Point(38)={2*r,-30.,0.0};
Point(39)={-2*r,30.,0.0};
Point(40)={-2*r,-30.,0.0};
Point(41)={25,2*r,0.0};
Point(42)={25,-2*r,0.0};
Point(43)={-50.,2*r,0.0};
Point(44)={-50.,-2*r,0.0};
Point(45)={-215,2*r,0.0};
Point(46)={-215,-2*r,0.0};
Point(47)={-135.,2*r,0.0};
Point(48)={-135.,-2*r,0.0};
Point(49)={xc+2*r,0.0,0.0};
Point(50)={xc-2*r,0.0,0.0};
Point(51)={xc,-2*r,0.0};
Point(52)={xc,2*r,0.0};
Point(53)={xc+2*r,2*r,0.0};
Point(54)={xc+2*r,-2*r,0.0};
Point(55)={xc-2*r,2*r,0.0};
Point(56)={xc-2*r,-2*r,0.0};
Point(57)={xc-2*r,30.,0.0};
Point(58)={xc-2*r,-30.,0.0};
Point(59)={xc+2*r,30.,0.0};
Point(60)={xc+2*r,-30.,0.0};
//+
Circle(1) = {2, 1, 4};
//+
Circle(2) = {4, 1, 3};
//+
Circle(3) = {3, 1, 5};
//+
Circle(4) = {5, 1, 2};
//+
Circle(5) = {7, 6, 9};
//+
Circle(6) = {9, 6, 8};
//+
Circle(7) = {8, 6, 10};
//+
Circle(8) = {10, 6, 7};
//+
Line(9) = {35, 32};
//+
Line(10) = {32, 5};
//+
Line(11) = {35, 30};
//+
Line(12) = {30, 3};
//+
Line(13) = {30, 34};
//+
Line(14) = {34, 31};
//+
Line(15) = {31, 4};
//+
Line(16) = {31, 33};
//+
Line(17) = {33, 29};
//+
Line(18) = {29, 2};
//+
Line(19) = {32, 36};
//+
Line(20) = {36, 29};
//+
Line(21) = {29, 23};
//+
Line(22) = {23, 41};
//+
Line(23) = {41, 33};
//+
Line(24) = {36, 42};
//+
Line(25) = {42, 23};
//+
Line(26) = {42, 12};
//+
Line(27) = {12, 38};
//+
Line(28) = {38, 36};
//+
Line(29) = {32, 20};
//+
Line(30) = {20, 38};
//+
Line(31) = {20, 40};
//+
Line(32) = {40, 35};
//+
Line(33) = {35, 54};
//+
Line(34) = {54, 60};
//+
Line(35) = {60, 40};
//+
Line(36) = {60, 22};
//+
Line(37) = {22, 51};
//+
Line(38) = {51, 54};
//+
Line(39) = {54, 49};
//+
Line(40) = {49, 53};
//+
Line(41) = {53, 52};
//+
Line(42) = {52, 55};
//+
Line(43) = {55, 50};
//+
Line(44) = {50, 56};
//+
Line(45) = {56, 51};
//+
Line(46) = {51, 10};
//+
Line(47) = {7, 49};
//+
Line(48) = {9, 52};
//+
Line(49) = {8, 50};
//+
Line(50) = {50, 25};
//+
Line(51) = {25, 43};
//+
Line(52) = {43, 55};
//+
Line(53) = {56, 44};
//+
Line(54) = {44, 25};
//+
Line(55) = {44, 27};
//+
Line(56) = {27, 58};
//+
Line(57) = {58, 56};
//+
Line(58) = {58, 22};
//+
Line(59) = {53, 34};
//+
Line(60) = {41, 11};
//+
Line(61) = {11, 37};
//+
Line(62) = {37, 33};
//+
Line(63) = {31, 19};
//+
Line(64) = {19, 37};
//+
Line(65) = {19, 39};
//+
Line(66) = {39, 34};
//+
Line(67) = {53, 59};
//+
Line(68) = {59, 39};
//+
Line(69) = {59, 21};
//+
Line(70) = {21, 52};
//+
Line(71) = {55, 57};
//+
Line(72) = {57, 21};
//+
Line(73) = {57, 26};
//+
Line(74) = {26, 43};
//+
Line(75) = {13, 27};
//+
Line(76) = {44, 48};
//+
Line(77) = {48, 13};
//+
Line(78) = {48, 28};
//+
Line(79) = {28, 47};
//+
Line(80) = {47, 17};
//+
Line(81) = {17, 26};
//+
Line(82) = {43, 47};
//+
Line(83) = {28, 25};
//+
Line(84) = {47, 45};
//+
Line(85) = {45, 16};
//+
Line(86) = {16, 17};
//+
Line(87) = {28, 24};
//+
Line(88) = {24, 45};
//+
Line(89) = {24, 46};
//+
Line(90) = {46, 48};
//+
Line(91) = {18, 13};
//+
Line(92) = {18, 46};
//+
Line(93) = {13, 14};
//+
Line(94) = {14, 15};
//+
Line(95) = {15, 18};
//+
Curve Loop(1) = {95, 91, 93, 94};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {91, -77, -90, -92};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {90, 78, 87, 89};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {87, 88, -84, -79};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {80, -86, -85, -84};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {82, 80, 81, 74};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {82, -79, 83, 51};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {76, 78, 83, -54};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {55, -75, -77, -76};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {55, 56, 57, 53};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {57, 45, -37, -58};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {37, 38, 34, 36};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {35, 32, 33, 34};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {32, 9, 29, 31};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {29, 30, 28, -19};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {27, 28, 24, 26};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {24, 25, -21, -20};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {20, 18, -4, -10, 19};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {10, -3, -12, -11, 9};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {17, 18, 1, -15, 16};
//+
Plane Surface(20) = {20};
//+
Curve Loop(21) = {23, 17, 21, 22};
//+
Plane Surface(21) = {21};
//+
Curve Loop(22) = {60, 61, 62, -23};
//+
Plane Surface(22) = {22};
//+
Curve Loop(23) = {62, -16, 63, 64};
//+
Plane Surface(23) = {23};
//+
Curve Loop(24) = {63, 65, 66, 14};
//+
Plane Surface(24) = {24};
//+
Curve Loop(25) = {71, 73, 74, 52};
//+
Plane Surface(25) = {25};
//+
Curve Loop(26) = {52, 43, 50, 51};
//+
Plane Surface(26) = {26};
//+
Curve Loop(27) = {50, -54, -53, -44};
//+
Plane Surface(27) = {27};
//+
Curve Loop(28) = {71, 72, 70, 42};
//+
Plane Surface(28) = {28};
//+
Curve Loop(29) = {70, -41, 67, 69};
//+
Plane Surface(29) = {29};
//+
Curve Loop(30) = {59, -66, -68, -67};
//+
Plane Surface(30) = {30};
//+
Line(96) = {49, 30};
//+
Curve Loop(31) = {96, 13, -59, -40};
//+
Plane Surface(31) = {31};
//+
Curve Loop(32) = {96, -11, 33, 39};
//+
Plane Surface(32) = {32};
//+
Curve Loop(33) = {38, 39, -47, -8, -46};
//+
Plane Surface(33) = {33};
//+
Curve Loop(34) = {7, -46, -45, -44, -49};
//+
Plane Surface(34) = {34};
//+
Curve Loop(35) = {48, 42, 43, -49, -6};
//+
Plane Surface(35) = {35};
//+
Curve Loop(36) = {5, 48, -41, -40, -47};
//+
Plane Surface(36) = {36};
//+
Curve Loop(37) = {13, 14, 15, 2, -12};
//+
Plane Surface(37) = {37};
//+
Transfinite Curve {60, 62, 63, 66, 67, 70, 71, 74, 80, 85, 92, 77, 55, 57, 37, 34, 32, 29, 28, 26} = 6 Using Progression 1;
//+
Transfinite Curve {27, 24, 21, 23, 61, 52, 73, 50, 53, 56} = 5 Using Progression 1;
//+
Transfinite Curve {35, 33, 96, 59, 68} = 4 Using Progression 1;
//+
Transfinite Curve {75, 76, 83, 82, 81} = 18 Using Progression 1;
//+
Transfinite Curve {86, 84, 87, 90, 91, 94} = 17 Using Progression 1;
//+
Transfinite Curve {25, 20, 11, 39, 44, 54, 78, 89, 88, 79, 51, 43, 40, 13, 17, 22} = 3 Using Progression 1;
//+
Transfinite Curve {10, 18, 15, 12, 47, 48, 49, 46} = 3 Using Progression 1;
//+
Transfinite Surface {1} = {15, 14, 13, 18};
//+
Transfinite Surface {2} = {18, 13, 48, 46};
//+
Transfinite Surface {3} = {46, 48, 28, 24};
//+
Transfinite Surface {4} = {24, 28, 47, 45};
//+
Transfinite Surface {5} = {45, 47, 17, 16};
//+
Transfinite Surface {9} = {13, 27, 44, 48};
//+
Transfinite Surface {8} = {48, 44, 25, 28};
//+
Transfinite Surface {7} = {25, 43, 47, 28};
//+
Transfinite Surface {6} = {47, 43, 26, 17};
//+
Transfinite Surface {25} = {43, 55, 57, 26};
//+
Transfinite Surface {26} = {25, 50, 55, 43};
//+
Transfinite Surface {27} = {44, 56, 50, 25};
//+
Transfinite Surface {10} = {27, 58, 56, 44};
//+
Transfinite Curve {58, 36, 45, 38, 42, 41, 72, 69, 65, 64, 14, 16, 9, 19, 31, 30} = 3 Using Progression 1;
//+
Transfinite Curve {7, 8, 5, 6, 3, 4, 1, 2} = 5 Using Progression 1;
//+
Transfinite Surface {34} = {10, 8, 50, 51};
//+
Transfinite Surface {33} = {7, 10, 51, 49};
//+
Transfinite Surface {36} = {9, 7, 49, 52};
//+
Transfinite Surface {35} = {52, 50, 8, 9};
//+
Transfinite Surface {28} = {57, 55, 52, 21};
//+
Transfinite Surface {29} = {21, 52, 53, 59};
//+
Transfinite Surface {11} = {56, 58, 22, 51};
//+
Transfinite Surface {12} = {51, 22, 60, 54};
//+
Transfinite Surface {13} = {54, 60, 40, 35};
//+
Transfinite Surface {32} = {54, 35, 30, 49};
//+
Transfinite Surface {31} = {49, 30, 34, 53};
//+
Transfinite Surface {30} = {53, 34, 39, 59};
//+
Transfinite Surface {24} = {39, 34, 31, 19};
//+
Transfinite Surface {23} = {31, 33, 37, 19};
//+
Transfinite Surface {22} = {33, 41, 11, 37};
//+
Transfinite Surface {21} = {29, 23, 41, 33};
//+
Transfinite Surface {17} = {36, 42, 23, 29};
//+
Transfinite Surface {16} = {36, 38, 12, 42};
//+
Transfinite Surface {15} = {32, 20, 38, 36};
//+
Transfinite Surface {14} = {35, 40, 20, 32};
//+
Transfinite Surface {19} = {3, 30, 32, 5};
//+
Transfinite Surface {18} = {2, 5, 32, 29};
//+
Transfinite Surface {20} = {4, 2, 29, 31};
//+
Transfinite Surface {37} = {31, 30, 3, 4};
//+
Transfinite Curve {93, 95} = 29 Using Progression 1;
//+
Recombine Surface {4, 1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 24, 19, 20, 21, 22, 23, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37};
//+
Extrude {0, 0, 3} {
  Surface{16}; Surface{17}; Surface{15}; Surface{21}; Surface{18}; Surface{14}; Surface{20}; Surface{19}; Surface{37}; Surface{13}; Surface{22}; Surface{32}; Surface{12}; Surface{31}; Surface{33}; Surface{23}; Surface{11}; Surface{36}; Surface{34}; Surface{24}; Surface{35}; Surface{10}; Surface{30}; Surface{27}; Surface{29}; Surface{26}; Surface{28}; Surface{25}; Surface{9}; Surface{8}; Surface{7}; Surface{1}; Surface{6}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Layers {3}; Recombine;
}
//+
Physical Volume("A", 951) = {1, 2, 4, 3, 11, 5, 6, 7, 8, 9, 16, 10, 20, 12, 14, 13, 23, 15, 17, 18, 19, 21, 25, 22, 27, 24, 26, 28, 29, 30, 31, 33, 32, 34, 35, 36, 37};
