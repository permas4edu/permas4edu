r=0.1;
a=2.;
b=1.;
c=1.;
d=0.3;
Point(1)={a,b/2,c/2};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={a,b,c};
Point(5)={a,0.0,c};
Point(6)={a,d,0.0};
Point(7)={a,b-d,0.0};
Point(8)={a,0.0,c-d};
Point(9)={a,0.0,d};
Point(10)={a,d,c};
Point(11)={a,b-d,c};
Point(12)={a,b,c-d};
Point(13)={a,b,d};
Point(14)={a,b/2+r,c/2};
Point(15)={a,b/2,c/2+r};
Point(16)={a,b/2-r,c/2};
Point(17)={a,b/2,c/2-r};
Point(18)={a,b/2,0.0};
Point(19)={a,b/2,c};
Point(20)={a,0.0,c/2};
Point(21)={a,b,c/2};
Point(22)={a,d,c/2};
Point(23)={a,b/2,d};
Point(24)={a,b-d,c/2};
Point(25)={a,b/2,c-d};
Point(26)={a,b-d,d};
Point(27)={a,d,d};
Point(28)={a,b-d,c-d};
Point(29)={a,d,c-d};
Point(30)={a,b/2+r*Cos(45*Pi/180),c/2+r*Sin(45*Pi/180)};
Point(31)={a,b/2+r*Cos(3*45*Pi/180),c/2+r*Sin(3*45*Pi/180)};
Point(32)={a,b/2+r*Cos(5*45*Pi/180),c/2+r*Sin(5*45*Pi/180)};
Point(33)={a,b/2+r*Cos(7*45*Pi/180),c/2+r*Sin(7*45*Pi/180)};
Point(34)={a,b/2+0.3*r,c/2+0.3*r};
Point(35)={a,b/2-0.3*r,c/2+0.3*r};
Point(36)={a,b/2-0.3*r,c/2-0.3*r};
Point(37)={a,b/2+0.3*r,c/2-0.3*r};
Point(38)={a,b/2+0.3*r,c/2};
Point(39)={a,b/2-0.3*r,c/2};
Point(40)={a,b/2,c/2+0.3*r};
Point(41)={a,b/2,c/2-0.3*r};//+
Circle(1) = {17, 1, 33};
//+
Circle(2) = {33, 1, 14};
//+
Circle(3) = {14, 1, 30};
//+
Circle(4) = {30, 1, 15};
//+
Circle(5) = {15, 1, 31};
//+
Circle(6) = {31, 1, 16};
//+
Circle(7) = {16, 1, 32};
//+
Circle(8) = {32, 1, 17};
//+
Line(9) = {5, 8};
//+
Line(10) = {8, 20};
//+
Line(11) = {20, 9};
//+
Line(12) = {9, 2};
//+
Line(13) = {2, 6};
//+
Line(14) = {6, 18};
//+
Line(15) = {18, 7};
//+
Line(16) = {7, 3};
//+
Line(17) = {3, 13};
//+
Line(18) = {13, 21};
//+
Line(19) = {21, 12};
//+
Line(20) = {12, 4};
//+
Line(21) = {4, 11};
//+
Line(22) = {11, 19};
//+
Line(23) = {19, 10};
//+
Line(24) = {10, 5};
//+
Line(25) = {10, 29};
//+
Line(26) = {29, 22};
//+
Line(27) = {22, 27};
//+
Line(28) = {27, 6};
//+
Line(29) = {19, 25};
//+
Line(30) = {25, 15};
//+
Line(31) = {17, 23};
//+
Line(32) = {23, 18};
//+
Line(33) = {11, 28};
//+
Line(34) = {28, 24};
//+
Line(35) = {24, 26};
//+
Line(36) = {26, 7};
//+
Line(37) = {8, 29};
//+
Line(38) = {29, 25};
//+
Line(39) = {25, 28};
//+
Line(40) = {28, 12};
//+
Line(41) = {20, 22};
//+
Line(42) = {22, 16};
//+
Line(43) = {14, 24};
//+
Line(44) = {24, 21};
//+
//+
Line(45) = {9, 27};
//+
Line(46) = {27, 23};
//+
Line(47) = {23, 26};
//+
Line(48) = {26, 13};
//+
Line(49) = {35, 39};
//+
Line(50) = {39, 36};
//+
Line(51) = {36, 41};
//+
Line(52) = {41, 37};
//+
Line(53) = {37, 38};
//+
Line(54) = {38, 34};
//+
Line(55) = {34, 40};
//+
Line(56) = {40, 35};
//+
Line(57) = {40, 1};
//+
Line(58) = {1, 41};
//+
Line(59) = {39, 1};
//+
Line(60) = {1, 38};
//+
Line(61) = {15, 40};
//+
Line(62) = {41, 17};
//+
Line(63) = {37, 33};
//+
Line(64) = {38, 14};
//+
Line(65) = {34, 30};
//+
Line(66) = {35, 31};
//+
Line(67) = {39, 16};
//+
Line(68) = {36, 32};
//+
Line(69) = {32, 27};
//+
Line(70) = {33, 26};
//+
Line(71) = {30, 28};
//+
Line(72) = {31, 29};
//+
Curve Loop(1) = {24, 9, 37, -25};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {25, 38, -29, 23};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {22, 29, 39, -33};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {21, 33, 40, 20};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {40, -19, -44, -34};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {18, -44, 35, 48};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {17, -48, 36, 16};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {15, -36, -47, 32};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {32, -14, -28, 46};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {45, 28, -13, -12};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {45, -27, -41, 11};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {41, -26, -37, 10};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {72, 38, 30, 5};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {30, -4, 71, -39};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {34, -43, 3, 71};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {35, -70, 2, 43};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {70, -47, -31, 1};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {69, 46, -31, -8};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {69, -27, 42, 7};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {42, -6, 72, 26};
//+
Plane Surface(20) = {20};
//+
Curve Loop(21) = {5, -66, -56, -61};
//+
Plane Surface(21) = {21};
//+
Curve Loop(22) = {61, -55, 65, 4};
//+
Plane Surface(22) = {22};
//+
Curve Loop(23) = {65, -3, -64, 54};
//+
Plane Surface(23) = {23};
//+
Curve Loop(24) = {2, -64, -53, 63};
//+
Plane Surface(24) = {24};
//+
Curve Loop(25) = {1, -63, -52, 62};
//+
Plane Surface(25) = {25};
//+
Curve Loop(26) = {8, -62, -51, 68};
//+
Plane Surface(26) = {26};
//+
Curve Loop(27) = {68, -7, -67, 50};
//+
Plane Surface(27) = {27};
//+
Curve Loop(28) = {67, -6, -66, 49};
//+
Plane Surface(28) = {28};
//+
Curve Loop(29) = {58, 52, 53, -60};
//+
Plane Surface(29) = {29};
//+
Curve Loop(30) = {54, 55, 57, 60};
//+
Plane Surface(30) = {30};
//+
Curve Loop(31) = {56, 49, 59, -57};
//+
Plane Surface(31) = {31};
//+
Curve Loop(32) = {50, 51, -58, -59};
//+
Plane Surface(32) = {32};
//+
Transfinite Curve {60, 58, 57, 59} = 5 Using Progression 1;
Transfinite Curve {24, 37, 41, 45, 13, 21, 40, 44, 48, 16, 20, 33, 29, 25, 9, 12, 12, 28, 32, 36, 17} = 7 Using Progression 1;
//+
Transfinite Curve {22, 23, 38, 39, 47, 15, 14, 46, 10, 11, 27, 26, 34, 35, 19, 18, 3, 2, 1, 8, 7, 6, 5, 4, 54, 53, 52, 51, 50, 49, 56, 55} = 5 Using Progression 1;
//+
Transfinite Curve {42, 72, 30, 71, 43, 70, 31, 69} = 5 Using Progression 1;
//+
Transfinite Curve {63, 64, 65, 61, 66, 67, 68, 62} = 5 Using Progression 1;
//+
Transfinite Surface {1} = {5, 8, 29, 10};
//+
Transfinite Surface {12} = {8, 29, 22, 20};
//+
Transfinite Surface {11} = {20, 22, 27, 9};
//+
Transfinite Surface {10} = {9, 27, 6, 2};
//+
Transfinite Surface {2} = {10, 19, 25, 29};
//+
Transfinite Surface {9} = {27, 23, 18, 6};
//+
Transfinite Surface {3} = {19, 11, 28, 25};
//+
Transfinite Surface {8} = {23, 26, 7, 18};
//+
Transfinite Surface {4} = {11, 4, 12, 28};
//+
Transfinite Surface {5} = {28, 12, 21, 24};
//+
Transfinite Surface {6} = {24, 21, 13, 26};
//+
Transfinite Surface {7} = {26, 13, 3, 7};
//+
Transfinite Surface {13} = {25, 15, 31, 29};
//+
Transfinite Surface {20} = {31, 29, 22, 16};
//+
Transfinite Surface {19} = {32, 16, 22, 27};
//+
Transfinite Surface {18} = {32, 17, 23, 27};
//+
Transfinite Surface {28} = {31, 35, 39, 16};
//+
Transfinite Surface {27} = {16, 39, 36, 32};
//+
Transfinite Surface {26} = {36, 41, 17, 32};
//+
Transfinite Surface {25} = {41, 37, 33, 17};
//+
Transfinite Surface {23} = {30, 14, 38, 34};
//+

//+
Transfinite Surface {22} = {30, 15, 40, 34};
//+
Transfinite Surface {21} = {15, 31, 35, 40};
//+
Transfinite Surface {31} = {35, 39, 1, 40};
//+
Transfinite Surface {32} = {39, 36, 41, 1};
//+
Transfinite Surface {29} = {1, 41, 37, 38};
//+
Transfinite Surface {30} = {38, 34, 40, 1};
//+
Transfinite Surface {15} = {14, 24, 28, 30};
//+
Transfinite Surface {16} = {14, 33, 26, 24};
//+
Transfinite Surface {17} = {17, 23, 26, 33};
//+
Transfinite Surface {14} = {15, 30, 28, 25};
//+
Transfinite Surface {24} = {33, 14, 38, 37};
//+
Recombine Surface {7, 6, 5, 16, 8, 4, 15, 24, 17, 23, 25, 29, 30, 22, 32, 31, 14, 26, 27, 21, 9, 18, 28, 3, 19, 13, 20, 2, 10, 11, 12, 1};
//+
Extrude {a, 0, 0} {
  Surface{7}; Surface{6}; Surface{8}; Surface{16}; Surface{5}; Surface{17}; Surface{9}; Surface{24}; Surface{25}; Surface{15}; Surface{29}; Surface{23}; Surface{26}; Surface{30}; Surface{32}; Surface{18}; Surface{31}; Surface{22}; Surface{27}; Surface{4}; Surface{14}; Surface{21}; Surface{28}; Surface{19}; Surface{10}; Surface{13}; Surface{20}; Surface{3}; Surface{11}; Surface{2}; Surface{12}; Surface{1}; Layers {20}; Recombine;
}
//+
Physical Volume("BEAM", 777) = {20, 28, 5, 30, 21, 10, 2, 32, 18, 12, 26, 22, 14, 27, 8, 17, 11, 23, 4, 15, 9, 6, 19, 13, 1, 31, 24, 16, 3, 29, 7, 25};
