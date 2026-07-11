Phi1=15./2;
Phi2=14./2;
L1=570.;
L2=587-L1;
Point(1)={0.0,0.0,0.0};
Point(2)={Phi2,0.0,0.0};
Point(3)={0.0,Phi2,0.0};
Point(4)={-Phi2,0.0,0.0};
Point(5)={0.0,-Phi2,0.0};
Point(6)={Phi2*Cos(45*Pi/180),Phi2*Sin(45*Pi/180),0.0};
Point(7)={Phi2*Cos(3*45*Pi/180),Phi2*Sin(3*45*Pi/180),0.0};
Point(8)={Phi2*Cos(5*45*Pi/180),Phi2*Sin(5*45*Pi/180),0.0};
Point(9)={Phi2*Cos(7*45*Pi/180),Phi2*Sin(7*45*Pi/180),0.0};
Point(10)={0.4*Phi2,0.0,0.0};
Point(11)={-0.4*Phi2,0.0,0.0};
Point(12)={0.0, 0.4*Phi2,0.0};
Point(13)={0.0,-0.4*Phi2,0.0};
Point(14)={0.4*Phi2,0.4*Phi2,0.0};
Point(15)={-0.4*Phi2,0.4*Phi2,0.0};
Point(16)={0.4*Phi2,-0.4*Phi2,0.0};
Point(17)={-0.4*Phi2,-0.4*Phi2,0.0};
//
Point(18)={Phi1,0.0,0.0};
Point(19)={0.0,Phi1,0.0};
Point(20)={-Phi1,0.0,0.0};
Point(21)={0.0,-Phi1,0.0};
Point(22)={Phi1*Cos(45*Pi/180),Phi1*Sin(45*Pi/180),0.0};
Point(23)={Phi1*Cos(3*45*Pi/180),Phi1*Sin(3*45*Pi/180),0.0};
Point(24)={Phi1*Cos(5*45*Pi/180),Phi1*Sin(5*45*Pi/180),0.0};
Point(25)={Phi1*Cos(7*45*Pi/180),Phi1*Sin(7*45*Pi/180),0.0};//+
Circle(1) = {2, 1, 6};
//+
Circle(2) = {6, 1, 3};
//+
Circle(3) = {3, 1, 7};
//+
Circle(4) = {7, 1, 4};
//+
Circle(5) = {4, 1, 8};
//+
Circle(6) = {8, 1, 5};
//+
Circle(7) = {5, 1, 9};
//+
Circle(8) = {9, 1, 2};
//+
Circle(9) = {18, 1, 22};
//+
Circle(10) = {22, 1, 19};
//+
Circle(11) = {19, 1, 23};
//+
Circle(12) = {23, 1, 20};
//+
Circle(13) = {20, 1, 24};
//+
Circle(14) = {24, 1, 21};
//+
Circle(15) = {21, 1, 25};
//+
Circle(16) = {25, 1, 18};
//+
Line(17) = {2, 18};
//+
Line(18) = {6, 22};
//+
Line(19) = {3, 19};
//+
Line(20) = {7, 23};
//+
Line(21) = {4, 20};
//+
Line(22) = {8, 24};
//+
Line(23) = {5, 21};
//+
Line(24) = {9, 25};
//+
Line(25) = {1, 10};
//+
Line(26) = {10, 2};
//+
Line(27) = {10, 14};
//+
Line(28) = {14, 6};
//+
Line(29) = {14, 12};
//+
Line(30) = {12, 3};
//+
Line(31) = {12, 15};
//+
Line(32) = {15, 7};
//+
Line(33) = {15, 11};
//+
Line(34) = {11, 4};
//+
Line(35) = {11, 17};
//+
Line(36) = {17, 8};
//+
Line(37) = {17, 13};
//+
Line(38) = {13, 5};
//+
Line(39) = {13, 16};
//+
Line(40) = {16, 9};
//+
Line(41) = {16, 10};
//+
Line(42) = {1, 13};
//+
Line(43) = {1, 12};
//+
Line(44) = {1, 11};
//+
Curve Loop(1) = {25, 27, 29, -43};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {31, 33, -44, 43};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {35, 37, -42, 44};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {25, -41, -39, -42};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {26, 1, -28, -27};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {28, 2, -30, -29};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {3, -32, -31, 30};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {4, -34, -33, 32};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {34, 5, -36, -35};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {37, 38, -6, -36};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {39, 40, -7, -38};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {41, 26, -8, -40};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {1, 18, -9, -17};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {2, 19, -10, -18};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {11, -20, -3, 19};
//+
Plane Surface(15) = {15};
//+
Curve Loop(16) = {12, -21, -4, 20};
//+
Plane Surface(16) = {16};
//+
Curve Loop(17) = {13, -22, -5, 21};
//+
Plane Surface(17) = {17};
//+
Curve Loop(18) = {14, -23, -6, 22};
//+
Plane Surface(18) = {18};
//+
Curve Loop(19) = {7, 24, -15, -23};
//+
Plane Surface(19) = {19};
//+
Curve Loop(20) = {8, 17, -16, -24};
//+
Plane Surface(20) = {20};
//+
Transfinite Curve {17, 18, 19, 20, 21, 22, 23, 24} = 3 Using Progression 1;
//+
Transfinite Curve {26, 28, 30, 32, 34, 36, 38, 40} = 8 Using Progression 1;
//+
Transfinite Curve {14, 6, 7, 15, 16, 8, 1, 9, 10, 2, 3, 11, 12, 4, 33, 44, 35, 37, 42, 39, 41, 25, 27, 29, 43, 31, 5, 13} = 4 Using Progression 1;
//+
Transfinite Surface {1} = {1, 10, 14, 12};
//+
Transfinite Surface {2} = {12, 15, 11, 1};
//+
Transfinite Surface {3} = {11, 17, 13, 1};
//+
Transfinite Surface {4} = {1, 13, 16, 10};
//+
Transfinite Surface {5} = {14, 10, 2, 6};
//+
Transfinite Surface {6} = {3, 12, 14, 6};
//+
Transfinite Surface {7} = {3, 7, 15, 12};
//+
Transfinite Surface {8} = {7, 4, 11, 15};
//+
Transfinite Surface {9} = {4, 8, 17, 11};
//+
Transfinite Surface {10} = {17, 8, 5, 13};
//+
Transfinite Surface {11} = {13, 5, 9, 16};
//+
Transfinite Surface {12} = {10, 16, 9, 2};
//+
Transfinite Surface {13} = {2, 18, 22, 6};
//+
Transfinite Surface {14} = {6, 22, 19, 3};
//+
Transfinite Surface {15} = {19, 23, 7, 3};
//+
Transfinite Surface {16} = {23, 20, 4, 7};
//+
Transfinite Surface {17} = {4, 20, 24, 8};
//+
Transfinite Surface {18} = {8, 24, 21, 5};
//+
Transfinite Surface {19} = {5, 21, 25, 9};
//+
Transfinite Surface {20} = {2, 9, 25, 18};
//+
Recombine Surface {18, 17, 19, 10, 9, 11, 3, 20, 4, 16, 2, 12, 8, 1, 7, 15, 5, 13, 6, 14};
//+
Extrude {0, 0, L1} {
  Surface{13}; Surface{14}; Surface{5}; Surface{6}; Surface{20}; Surface{15}; Surface{1}; Surface{12}; Surface{7}; Surface{4}; Surface{2}; Surface{3}; Surface{19}; Surface{16}; Surface{11}; Surface{8}; Surface{9}; Surface{10}; Surface{18}; Surface{17}; Layers {57}; Recombine;
}
//+
Extrude {0, 0, L2} {
  Surface{418}; Surface{440}; Surface{374}; Surface{220}; Surface{264}; Surface{308}; Surface{286}; Surface{198}; Surface{396}; Surface{242}; Surface{132}; Surface{110}; Layers {3}; Recombine;
}
//+
Physical Volume("SHAFT_01", 749) = {1, 3, 5, 2, 4, 8, 7, 10, 15, 13, 6, 9, 11, 12, 16, 18, 19, 14, 17, 20};
//+
Physical Volume("SHAFT_02", 750) = {32, 31, 24, 28, 25, 23, 30, 27, 26, 29, 22, 21};
