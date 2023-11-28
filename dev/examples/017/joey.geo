a=3.0;
b=2.0;
// Table 9
// Cutout ratios 
a_c1=0.1*a;
b_c1=0.1*b;
a_c2=0.1*a;
b_c2=0.1*b;
// Cutout position
r_x1=0.35*a;
r_y1=0.35*b;
r_x2=0.55*a;
r_y2=0.55*b;
//
r_x1=0.15*a;
r_y1=0.15*b;
r_x2=0.75*a;
r_y2=0.75*b;
//
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0,b,0.0};
//
Point(5)={r_x1,r_y1,0.0};
Point(6)={r_x1+a_c1,r_y1,0.0};
Point(7)={r_x1+a_c1,r_y1+b_c1,0.0};
Point(8)={r_x1,r_y1+b_c1,0.0};
//
Point(9)={r_x2,r_y2,0.0};
Point(10)={r_x2+a_c2,r_y2,0.0};
Point(11)={r_x2+a_c2,r_y2+b_c2,0.0};
Point(12)={r_x2,r_y2+b_c2,0.0};
//
Point(13)={r_x1,0.0,0.0};
Point(14)={r_x1+a_c1,0.0,0.0};
Point(15)={r_x2,0.0,0.0};
Point(16)={r_x2+a_c2,0.0,0.0};
Point(17)={a,r_y1,0.0};
Point(18)={a,r_y1+b_c1,0.0};
Point(19)={a,r_y2,0.0};
Point(20)={a,r_y2+b_c2,0.0};
Point(21)={0.,r_y1,0.0};
Point(22)={0.,r_y1+b_c1,0.0};
Point(23)={0.,r_y2,0.0};
Point(24)={0.,r_y2+b_c2,0.0};
Point(25)={r_x1,b,0.0};
Point(26)={r_x1+a_c1,b,0.0};
Point(27)={r_x2,b,0.0};
Point(28)={r_x2+a_c2,b,0.0};

Point(29)={r_x2,r_y1,0.0};
Point(30)={r_x2+a_c2,r_y1,0.0};
Point(31)={r_x2,r_y1+b_c1,0.0};
Point(32)={r_x2+a_c2,r_y1+b_c1,0.0};

Point(33)={r_x1,r_y2,0.0};
Point(34)={r_x1+a_c1,r_y2,0.0};
Point(35)={r_x1,r_y2+b_c2,0.0};
Point(36)={r_x1+a_c1,r_y2+b_c2,0.0};
//+
Line(1) = {5, 6};
//+
Line(2) = {6, 7};
//+
Line(3) = {7, 8};
//+
Line(4) = {8, 5};
//+
Line(5) = {9, 10};
//+
Line(6) = {10, 11};
//+
Line(7) = {11, 12};
//+
Line(8) = {12, 9};
//+
Line(9) = {1, 13};
//+
Line(10) = {13, 5};
//+
Line(11) = {5, 21};
//+
Line(12) = {21, 1};
//+
Line(13) = {13, 14};
//+
Line(14) = {14, 6};
//+
Line(15) = {14, 15};
//+
Line(16) = {15, 29};
//+
Line(17) = {29, 6};
//+
Line(18) = {15, 16};
//+
Line(19) = {16, 30};
//+
Line(20) = {30, 29};
//+
Line(21) = {16, 2};
//+
Line(22) = {2, 17};
//+
Line(23) = {17, 30};
//+
Line(24) = {21, 22};
//+
Line(25) = {22, 8};
//+
Line(26) = {29, 31};
//+
Line(27) = {31, 7};
//+
Line(28) = {30, 32};
//+
Line(29) = {32, 31};
//+
Line(30) = {17, 18};
//+
Line(31) = {18, 32};
//+
Line(32) = {22, 23};
//+
Line(33) = {23, 33};
//+
Line(34) = {33, 8};
//+
Line(35) = {33, 34};
//+
Line(36) = {34, 7};
//+
Line(37) = {34, 9};
//+
Line(38) = {9, 31};
//+
Line(39) = {32, 10};
//+
Line(40) = {10, 19};
//+
Line(41) = {19, 18};
//+
Line(42) = {19, 20};
//+
Line(43) = {20, 11};
//+
Line(44) = {23, 24};
//+
Line(45) = {24, 35};
//+
Line(46) = {35, 33};
//+
Line(47) = {35, 36};
//+
Line(48) = {36, 34};
//+
Line(49) = {36, 12};
//+
Line(50) = {24, 4};
//+
Line(51) = {4, 25};
//+
Line(52) = {25, 35};
//+
Line(53) = {25, 26};
//+
Line(54) = {26, 36};
//+
Line(55) = {12, 27};
//+
Line(56) = {27, 26};
//+
Line(57) = {27, 28};
//+
Line(58) = {28, 11};
//+
Line(59) = {28, 3};
//+
Line(60) = {3, 20};
//+
Curve Loop(1) = {12, 9, 10, 11};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 11, 24, 25};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {1, -14, -13, 10};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {17, -14, 15, 16};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {20, -16, 18, 19};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {23, -19, 21, 22};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {2, -27, -26, 17};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {29, -26, -20, 28};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {31, -28, -23, 30};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {34, -25, 32, 33};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {35, 36, 3, -34};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {37, 38, 27, -36};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {5, -39, 29, -38};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {40, 41, 31, 39};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {43, -6, 40, 42};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {59, 60, 43, -58};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {55, 57, 58, 7};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {56, 54, 49, 55};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {54, -47, -52, 53};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {51, 52, -45, 50};
//+
Plane Surface(20) = {20};
//+
Curve Loop(21) = {44, 45, 46, -33};
//+
Plane Surface(21) = {21};
//+
Curve Loop(22) = {35, -48, -47, 46};
//+
Plane Surface(22) = {22};
//+
Curve Loop(23) = {49, 8, -37, -48};
//+
Plane Surface(23) = {23};
//+
Transfinite Surface {1} = {1, 13, 5, 21};
//+
Transfinite Surface {3} = {13, 14, 6, 5};
//+
Transfinite Surface {4} = {14, 15, 29, 6};
//+
Transfinite Surface {5} = {15, 16, 30, 29};
//+
Transfinite Surface {6} = {16, 2, 17, 30};
//+
Transfinite Surface {2} = {21, 5, 8, 22};
//+
Transfinite Surface {7} = {6, 29, 31, 7};
//+
Transfinite Surface {8} = {29, 30, 32, 31};
//+
Transfinite Surface {9} = {30, 17, 18, 32};
//+
Transfinite Surface {10} = {22, 8, 33, 23};
//+
Transfinite Surface {11} = {8, 7, 34, 33};
//+
Transfinite Surface {12} = {7, 31, 9, 34};
//+
Transfinite Surface {13} = {31, 32, 10, 9};
//+
Transfinite Surface {14} = {32, 18, 19, 10};
//+
Transfinite Surface {21} = {23, 33, 35, 24};
//+
Transfinite Surface {22} = {33, 34, 36, 35};
//+
Transfinite Surface {23} = {34, 9, 12, 36};
//+
Transfinite Surface {15} = {10, 19, 20, 11};
//+
Transfinite Surface {20} = {24, 35, 25, 4};
//+
Transfinite Surface {19} = {35, 36, 26, 25};
//+
Transfinite Surface {18} = {36, 12, 27, 26};
//+
Transfinite Surface {17} = {12, 11, 28, 27};
//+
Transfinite Surface {16} = {11, 20, 3, 28};
//+
Recombine Surface {1, 3, 4, 5, 6, 2, 7, 8, 9, 10, 11, 12, 13, 14, 21, 22, 23, 15, 20, 19, 18, 17, 16};
//+
MeshSize {1, 13, 14, 15, 16, 2, 17, 30, 29, 6, 5, 21, 22, 8, 7, 31, 32, 18, 19, 10, 9, 34, 33, 23, 24, 35, 36, 12, 11, 20, 3, 28, 27, 26, 25, 4} = 0.03;
//+
Physical Surface(61) = {1, 3, 4, 5, 6, 2, 7, 8, 9, 10, 11, 12, 13, 14, 21, 22, 23, 15, 20, 19, 18, 17, 16};
