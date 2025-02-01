R1=30.;
R2=38.;
R3=16.;
R4=24.;
x1=100.;
Point(1)={0.0,0.0,0.0};
Point(2)={R1,0.0,0.0};
Point(3)={0.0,R1,0.0};
Point(4)={-R1,0.0,0.0};
Point(5)={0.0,-R1,0.0};
//
Point(6)={R2,0.0,0.0};
Point(7)={0.0,R2,0.0};
Point(8)={-R2,0.0,0.0};
Point(9)={0.0,-R2,0.0};
//
Point(10)={x1+R3,0.0,0.0};
Point(11)={x1,R3,0.0};
Point(12)={x1-R3,0.0,0.0};
Point(13)={x1,-R3,0.0};
//
Point(14)={x1+R4,0.0,0.0};
Point(15)={x1,R4,0.0};
Point(16)={x1-R4,0.0,0.0};
Point(17)={x1,-R4,0.0};
//
y1=30.;
phi=Asin(y1/R2);
Point(18)={R1*Cos(phi),R1*Sin(phi),0.0};
Point(19)={R2*Cos(phi),R2*Sin(phi),0.0};
Point(20)={R1*Cos(phi),-R1*Sin(phi),0.0};
Point(21)={R2*Cos(phi),-R2*Sin(phi),0.0};
y2=16.;
phi=Asin(y2/R4);
Point(22)={x1-R4*Cos(phi),R4*Sin(phi),0.0};
Point(23)={x1-R3*Cos(phi),R3*Sin(phi),0.0};
Point(24)={x1-R4*Cos(phi),-R4*Sin(phi),0.0};
Point(25)={x1-R3*Cos(phi),-R3*Sin(phi),0.0};
//+
Circle(1) = {2, 1, 18};
//+
Circle(2) = {18, 1, 3};
//+
Circle(3) = {3, 1, 4};
//+
Circle(4) = {4, 1, 5};
//+
Circle(5) = {5, 1, 20};
//+
Circle(6) = {20, 1, 2};
//+
Circle(7) = {19, 1, 7};
//+
Circle(8) = {7, 1, 8};
//+
Circle(9) = {8, 1, 9};
//+
Circle(10) = {9, 1, 21};
//+
Circle(11) = {21, 1, 6};
//+
Circle(12) = {6, 1, 19};
//+
Line(13) = {19, 22};
//+
Line(14) = {21, 24};
Point(26)={x1,0.0,0.0};//+
Circle(15) = {23, 26, 12};
//+
Circle(16) = {12, 26, 25};
//+
Circle(17) = {25, 26, 13};
//+
Circle(18) = {11, 26, 23};
//+
Circle(19) = {15, 26, 22};
//+
Circle(20) = {22, 26, 16};
//+
Circle(21) = {16, 26, 24};
//+
Circle(22) = {24, 26, 17};
//+
Circle(23) = {13, 26, 10};
//+
Circle(24) = {10, 26, 11};
//+
Circle(25) = {14, 26, 15};
//+
Circle(26) = {17, 26, 14};
//+
Line(27) = {18, 19};
//+
Line(28) = {3, 7};
//+
Line(29) = {4, 8};
//+
Line(30) = {5, 9};
//+
Line(31) = {20, 21};
//+
Line(32) = {2, 6};
//+
Line(33) = {6, 16};
//+
Line(34) = {16, 12};
//+
Line(35) = {23, 22};
//+
Line(36) = {11, 15};
//+
Line(37) = {10, 14};
//+
Line(38) = {13, 17};
//+
Line(39) = {25, 24};
//+
Curve Loop(1) = {3, 29, -8, -28};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 30, -9, -29};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -31, -5, 30};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, -32, -6, 31};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {1, 27, -12, -32};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {2, 28, -7, -27};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {33, -20, -13, -12};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {33, 21, -14, 11};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {16, 39, -21, 34};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {20, 34, -15, 35};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {19, -35, -18, 36};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {25, -36, -24, 37};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {23, 37, -26, -38};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {17, 38, -22, -39};
//+
Plane Surface(14) = {14};
//+
Transfinite Curve {11, 6, 1, 12, 20, 15, 16, 21} = 34 Using Progression 1;
//+
Transfinite Curve {13, 33, 14} = 41 Using Progression 1;
//+
Transfinite Curve {27, 28, 29, 30, 31, 32} = 4 Using Progression 1;
//+
Transfinite Curve {35, 34, 39, 38, 37, 36} = 4 Using Progression 1;
//+
Transfinite Curve {25, 24, 23, 26} = 27 Using Progression 1;
//+
Transfinite Curve {8, 3, 9, 4} = 53 Using Progression 1;
//+
Transfinite Curve {7, 2, 5, 10} = 21 Using Progression 1;
//+
Transfinite Curve {19, 18, 22, 17} = 21 Using Progression 1;
//+
Transfinite Surface {2} = {5, 4, 8, 9};
//+
Transfinite Surface {1} = {3, 7, 8, 4};
//+
Transfinite Surface {6} = {18, 19, 7, 3};
//+
Transfinite Surface {5} = {2, 6, 19, 18};
//+
Transfinite Surface {4} = {2, 20, 21, 6};
//+
Transfinite Surface {8} = {6, 21, 24, 16};
//+
Transfinite Surface {7} = {22, 19, 6, 16};
//+
Transfinite Surface {10} = {23, 22, 16, 12};
//+
Transfinite Surface {9} = {12, 16, 24, 25};
//+
Transfinite Surface {13} = {10, 13, 17, 14};
//+
Transfinite Surface {12} = {15, 11, 10, 14};
//+
Transfinite Surface {11} = {15, 22, 23, 11};
//+
Transfinite Surface {3} = {20, 5, 9, 21};
//+
Transfinite Surface {14} = {25, 24, 17, 13};
//+
Recombine Surface {6, 12, 11, 1, 5, 10, 7, 9, 13, 14, 8, 4, 3, 2};
//+
Extrude {0, 0, 10} {
  Surface{12}; Surface{11}; Surface{13}; Surface{10}; Surface{9}; Surface{14}; Surface{7}; Surface{5}; Surface{6}; Surface{8}; Surface{4}; Surface{1}; Surface{3}; Surface{2}; Layers {3}; Recombine;
}
//+
Physical Volume("PART", 348) = {1, 2, 4, 3, 7, 9, 5, 8, 6, 12, 10, 11, 13, 14};
