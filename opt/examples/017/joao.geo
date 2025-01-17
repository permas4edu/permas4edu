d=20.;
r=d/2;
D=30.;
R=D/2;
Point(1)={0.0,0.0,0.0};
//
Point(2)={r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={-r,0.0,0.0};
Point(5)={0.0,-r,0.0};
//
Point(6)={R,0.0,0.0};
Point(7)={0.0,R,0.0};
Point(8)={-R,0.0,0.0};
Point(9)={0.0,-R,0.0};
//
Point(10)={r*Cos(45*Pi/180),r*Sin(45*Pi/180),0.0};
Point(11)={r*Cos(3*45*Pi/180),r*Sin(3*45*Pi/180),0.0};
Point(12)={r*Cos(5*45*Pi/180),r*Sin(5*45*Pi/180),0.0};
Point(13)={r*Cos(7*45*Pi/180),r*Sin(7*45*Pi/180),0.0};
//
Point(14)={R*Cos(45*Pi/180),R*Sin(45*Pi/180),0.0};
Point(15)={R*Cos(3*45*Pi/180),R*Sin(3*45*Pi/180),0.0};
Point(16)={R*Cos(5*45*Pi/180),R*Sin(5*45*Pi/180),0.0};
Point(17)={R*Cos(7*45*Pi/180),R*Sin(7*45*Pi/180),0.0};
//
Point(18)={Sqrt(2)*r/4,Sqrt(2)*r/4,0.0};
Point(19)={-Sqrt(2)*r/4,Sqrt(2)*r/4,0.0};
Point(20)={-Sqrt(2)*r/4,-Sqrt(2)*r/4,0.0};
Point(21)={Sqrt(2)*r/4,-Sqrt(2)*r/4,0.0};
//
Point(22)={Sqrt(2)*r/4,0.0,0.0};
Point(23)={-Sqrt(2)*r/4,0.0,0.0};
Point(24)={0.0,Sqrt(2)*r/4,0.0};
Point(25)={0.0,-Sqrt(2)*r/4,0.0};
//+
Line(1) = {1, 22};
//+
Line(2) = {22, 18};
//+
Line(3) = {18, 24};
//+
Line(4) = {24, 1};
//+
Line(5) = {1, 23};
//+
Line(6) = {23, 19};
//+
Line(7) = {19, 24};
//+
Line(8) = {23, 20};
//+
Line(9) = {20, 25};
//+
Line(10) = {25, 1};
//+
Line(11) = {25, 21};
//+
Line(12) = {21, 22};
//+
Line(13) = {22, 2};
//+
Line(14) = {2, 6};
//+
Line(15) = {18, 10};
//+
Line(16) = {10, 14};
//+
Line(17) = {24, 3};
//+
Line(18) = {3, 7};
//+
Line(19) = {19, 11};
//+
Line(20) = {11, 15};
//+
Line(21) = {23, 4};
//+
Line(22) = {4, 8};
//+
Line(23) = {20, 12};
//+
Line(24) = {12, 16};
//+
Line(25) = {25, 5};
//+
Line(26) = {5, 9};
//+
Line(27) = {21, 13};
//+
Line(28) = {13, 17};
//+
Circle(29) = {2, 1, 10};
//+
Circle(30) = {10, 1, 3};
//+
Circle(31) = {3, 1, 11};
//+
Circle(32) = {11, 1, 4};
//+
Circle(33) = {4, 1, 12};
//+
Circle(34) = {12, 1, 5};
//+
Circle(35) = {5, 1, 13};
//+
Circle(36) = {13, 1, 2};
//+
Circle(37) = {6, 1, 14};
//+
Circle(38) = {14, 1, 7};
//+
Circle(39) = {7, 1, 15};
//+
Circle(40) = {15, 1, 8};
//+
Circle(41) = {8, 1, 16};
//+
Circle(42) = {16, 1, 9};
//+
Circle(43) = {9, 1, 17};
//+
Circle(44) = {17, 1, 6};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, 4, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {8, 9, 10, 5};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {1, -12, -11, 10};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {13, 29, -15, -2};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {15, 30, -17, -3};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {31, -19, 7, 17};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {32, -21, 6, 19};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {33, -23, -8, 21};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {34, -25, -9, 23};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {25, 35, -27, -11};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {12, 13, -36, -27};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {29, 16, -37, -14};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {30, 18, -38, -16};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {39, -20, -31, 18};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {40, -22, -32, 20};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {22, 41, -24, -33};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {42, -26, -34, 24};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {26, 43, -28, -35};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {44, -14, -36, 28};
//+
Plane Surface(20) = {20};
//+
Transfinite Curve {14, 16, 18, 20, 22, 24, 26, 28} = 5 Using Progression 1;
//+
Transfinite Curve {13, 15, 17, 19, 21, 23, 25, 27} = 5 Using Progression 1;
//+
Transfinite Curve {2, 3, 4, 1, 12, 11, 10, 9, 8, 5, 6, 7} = 11 Using Progression 1;
//+
Transfinite Curve {29, 30, 31, 32, 33, 34, 35, 36} = 11 Using Progression 1;
//+
Transfinite Curve {37, 38, 39, 40, 41, 42, 43, 44} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 22, 18, 24};
//+
Transfinite Surface {5} = {22, 2, 10, 18};
//+
Transfinite Surface {13} = {2, 6, 14, 10};
//+
Transfinite Surface {14} = {10, 14, 7, 3};
//+
Transfinite Surface {6} = {24, 18, 10, 3};
//+
Transfinite Surface {2} = {23, 1, 24, 19};
//+
Transfinite Surface {7} = {19, 24, 3, 11};
//+
Transfinite Surface {8} = {23, 19, 11, 4};
//+
Transfinite Surface {15} = {3, 7, 15, 11};
//+
Transfinite Surface {16} = {15, 8, 4, 11};
//+
Transfinite Surface {3} = {1, 23, 20, 25};
//+
Transfinite Surface {9} = {23, 4, 12, 20};
//+
Transfinite Surface {10} = {20, 12, 5, 25};
//+
Transfinite Surface {17} = {4, 8, 16, 12};
//+
Transfinite Surface {18} = {12, 16, 9, 5};
//+
Transfinite Surface {4} = {1, 25, 21, 22};
//+
Transfinite Surface {12} = {22, 21, 13, 2};
//+
Transfinite Surface {11} = {21, 25, 5, 13};
//+
Transfinite Surface {20} = {2, 13, 17, 6};
//+
Transfinite Surface {19} = {13, 5, 9, 17};
//+
Recombine Surface {17, 16, 18, 9, 10, 8, 3, 2, 4, 11, 7, 1, 19, 15, 12, 6, 5, 20, 14, 13};
//+
Extrude {0, 0, 20} {
  Surface{17}; Surface{16}; Surface{18}; Surface{9}; Surface{10}; Surface{8}; Surface{3}; Surface{2}; Surface{4}; Surface{11}; Surface{7}; Surface{1}; Surface{19}; Surface{15}; Surface{12}; Surface{6}; Surface{5}; Surface{20}; Surface{14}; Surface{13}; Layers {8}; Recombine;
}
//+
Extrude {0, 0, 20} {
  Surface{418}; Surface{374}; Surface{396}; Surface{308}; Surface{286}; Surface{264}; Surface{154}; Surface{242}; Surface{132}; Surface{176}; Surface{198}; Surface{220}; Layers {8}; Recombine;
}
//+
Physical Volume("SHAFT", 749) = {30, 29, 25, 27, 32, 31, 2, 1, 24, 28, 23, 6, 14, 26, 4, 21, 11, 22, 3, 5, 8, 7, 12, 9, 16, 19, 10, 17, 13, 15, 20, 18};
