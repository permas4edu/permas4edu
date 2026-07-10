a=2.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={3*a,0.0,0.0};
Point(4)={4*a,0.0,0.0};
Point(5)={0.0,a,0.0};
Point(6)={a,a,0.0};
Point(7)={3*a,a,0.0};
Point(8)={4*a,a,0.0};
Point(9)={0.0,2*a,0.0};
Point(10)={a,2*a,0.0};
Point(11)={3*a,2*a,0.0};
Point(12)={4*a,2*a,0.0};
Point(13)={0.0,3*a,0.0};
Point(14)={a,3*a,0.0};
Point(15)={3*a,3*a,0.0};
Point(16)={4*a,3*a,0.0};
Point(17)={0.0,4*a,0.0};
Point(18)={a,4*a,0.0};
Point(19)={3*a,4*a,0.0};
Point(20)={4*a,4*a,0.0};
Point(21)={0.0,5*a,0.0};
Point(22)={a,5*a,0.0};
Point(23)={3*a,5*a,0.0};
Point(24)={4*a,5*a,0.0};
Point(25)={0.0,6*a,0.0};
Point(26)={a,6*a,0.0};
Point(27)={3*a,6*a,0.0};
Point(28)={4*a,6*a,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 6};
//+
Line(3) = {6, 7};
//+
Line(4) = {7, 3};
//+
Line(5) = {3, 4};
//+
Line(6) = {4, 8};
//+
Line(7) = {8, 12};
//+
Line(8) = {12, 16};
//+
Line(9) = {16, 20};
//+
Line(10) = {20, 24};
//+
Line(11) = {24, 28};
//+
Line(12) = {28, 27};
//+
Line(13) = {27, 26};
//+
Line(14) = {26, 25};
//+
Line(15) = {25, 21};
//+
Line(16) = {21, 17};
//+
Line(17) = {17, 13};
//+
Line(18) = {13, 9};
//+
Line(19) = {9, 5};
//+
Line(20) = {5, 1};
//+
Line(21) = {10, 11};
//+
Line(22) = {11, 15};
//+
Line(23) = {15, 14};
//+
Line(24) = {14, 10};
//+
Line(25) = {18, 19};
//+
Line(26) = {19, 23};
//+
Line(27) = {23, 22};
//+
Line(28) = {22, 18};
//+
Line(29) = {22, 26};
//+
Line(30) = {22, 21};
//+
Line(31) = {23, 27};
//+
Line(32) = {23, 24};
//+
Line(33) = {19, 20};
//+
Line(34) = {18, 17};
//+
Line(35) = {14, 13};
//+
Line(36) = {10, 9};
//+
Line(37) = {6, 5};
//+
Line(38) = {6, 10};
//+
Line(39) = {7, 11};
//+
Line(40) = {15, 19};
//+
Line(41) = {15, 16};
//+
Line(42) = {11, 12};
//+
Line(43) = {7, 8};
//+
Curve Loop(1) = {20, 1, 2, 37};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 5, 6, -43};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {39, -21, -38, 3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {39, 42, -7, -43};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {42, 8, -41, -22};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {40, 33, -9, -41};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {33, 10, -32, -26};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {12, -31, 32, 11};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {29, 14, 15, -30};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {16, -34, -28, 30};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {29, -13, -31, 27};
//+
Plane Surface(11) = {11};
//+
Line(44) = {14, 18};
//+
Curve Loop(12) = {17, -35, 44, 34};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {18, -36, -24, 35};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {36, 19, -37, 38};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {23, 44, 25, -40};
//+
Plane Surface(15) = {15};
//+
Transfinite Curve {13, 27, 25, 23, 21, 3} = 17 Using Progression 1;
//+
Transfinite Curve {14, 15, 30, 16, 34, 17, 35, 18, 36, 19, 37, 20, 1, 12, 11, 32, 10, 33, 9, 41, 42, 8, 43, 7, 6, 5, 4, 22, 39, 40, 26, 31, 29, 28, 44, 24, 38, 2} = 9 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 6, 5};
//+
Transfinite Surface {2} = {3, 4, 8, 7};
//+
Transfinite Surface {14} = {5, 6, 10, 9};
//+
Transfinite Surface {3} = {6, 7, 11, 10};
//+
Transfinite Surface {4} = {7, 8, 12, 11};
//+
Transfinite Surface {13} = {9, 10, 14, 13};
//+
Transfinite Surface {5} = {11, 12, 16, 15};
//+
Transfinite Surface {12} = {13, 14, 18, 17};
//+
Transfinite Surface {15} = {14, 15, 19, 18};
//+
Transfinite Surface {6} = {15, 16, 20, 19};
//+
Transfinite Surface {10} = {17, 18, 22, 21};
//+
Transfinite Surface {7} = {19, 20, 24, 23};
//+
Transfinite Surface {9} = {25, 21, 22, 26};
//+
Transfinite Surface {11} = {22, 23, 27, 26};
//+
Transfinite Surface {8} = {23, 24, 28, 27};
//+
Recombine Surface {8, 11, 9, 7, 10, 6, 15, 12, 5, 13, 4, 3, 14, 2, 1};
//+
Extrude {0, 0, a} {
  Surface{8}; Surface{11}; Surface{9}; Surface{7}; Surface{10}; Surface{6}; Surface{15}; Surface{12}; Surface{5}; Surface{13}; Surface{4}; Surface{3}; Surface{14}; Surface{2}; Surface{1}; Layers {8}; Recombine;
}
//+
Physical Volume("FRAME", 375) = {3, 5, 8, 10, 2, 13, 15, 7, 1, 12, 4, 6, 9, 11, 14};
