L1=1.75;
L = 5.0;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={-L1,0.0,0.0};
Point(4)={0.0,L1,0.0};
Point(5)={0.0,-L1,0.0};
Point(6)={0.4*L1,0.0,0.0};
Point(7)={-0.4*L1,0.0,0.0};
Point(8)={0.0,0.4*L1,0.0};
Point(9)={0.0,-0.4*L1,0.0};
Point(10)={0.4*L1,0.4*L1,0.0};
Point(11)={-0.4*L1,0.4*L1,0.0};
Point(12)={-0.4*L1,-0.4*L1,0.0};
Point(13)={0.4*L1,-0.4*L1,0.0};
Point(14)={L1*Cos(45*Pi/180),L1*Sin(45*Pi/180),0.0};
Point(15)={L1*Cos(3*45*Pi/180),L1*Sin(3*45*Pi/180),0.0};
Point(16)={L1*Cos(5*45*Pi/180),L1*Sin(5*45*Pi/180),0.0};
Point(17)={L1*Cos(7*45*Pi/180),L1*Sin(7*45*Pi/180),0.0};//+
//+
Line(1) = {1, 6};
//+
Line(2) = {6, 10};
//+
Line(3) = {10, 8};
//+
Line(4) = {8, 1};
//+
Line(5) = {1, 7};
//+
Line(6) = {7, 11};
//+
Line(7) = {11, 8};
//+
Line(8) = {8, 4};
//+
Line(9) = {11, 15};
//+
Line(10) = {7, 3};
//+
Line(11) = {12, 16};
//+
Line(12) = {9, 5};
//+
Line(13) = {13, 17};
//+
Line(14) = {13, 6};
//+
Line(15) = {1, 9};
//+
Line(16) = {12, 7};
//+
Line(17) = {12, 9};
//+
Line(18) = {9, 13};
//+
Line(19) = {6, 2};
//+
Line(20) = {10, 14};
//+
Circle(21) = {2, 1, 14};
//+
Circle(22) = {14, 1, 4};
//+
Circle(23) = {4, 1, 15};
//+
Circle(24) = {15, 1, 3};
//+
Circle(25) = {3, 1, 16};
//+
Circle(26) = {16, 1, 5};
//+
Circle(27) = {5, 1, 17};
//+
Circle(28) = {17, 1, 2};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, 4, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {16, -5, 15, -17};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {1, -14, -18, -15};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {19, 21, -20, -2};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {22, -8, -3, 20};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {23, -9, 7, 8};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {24, -10, 6, 9};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {25, -11, 16, 10};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {11, 26, -12, -17};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {18, 13, -27, -12};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {13, 28, -19, -14};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {3, 2, 1, 4, 7, 6, 5, 16, 17, 15, 18, 14, 28, 21, 22, 23, 24, 25, 26, 27} = 7 Using Progression 1;
//+
Transfinite Curve {12, 13, 19, 20, 8, 9, 10, 11} = 7 Using Progression 1;
//+
Transfinite Surface {1} = {1, 6, 10, 8};
//+
Transfinite Surface {5} = {6, 2, 14, 10};
//+
Transfinite Surface {6} = {8, 10, 14, 4};
//+
Transfinite Surface {7} = {11, 8, 4, 15};
//+
Transfinite Surface {8} = {11, 15, 3, 7};
//+
Transfinite Surface {9} = {7, 3, 16, 12};
//+
Transfinite Surface {10} = {12, 16, 5, 9};
//+
Transfinite Surface {11} = {9, 5, 17, 13};
//+
Transfinite Surface {12} = {13, 17, 2, 6};
//+
Transfinite Surface {4} = {9, 13, 6, 1};
//+
Transfinite Surface {3} = {12, 9, 1, 7};
//+
Transfinite Surface {2} = {7, 1, 8, 11};
//+
Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
//+
Extrude {0, 0, L} {
  Surface{5}; Surface{6}; Surface{7}; Surface{8}; Surface{9}; Surface{10}; Surface{11}; Surface{12}; Surface{4}; Surface{1}; Surface{2}; Surface{3}; Layers {25}; Recombine;
}
//+
Physical Volume("CAVITY", 293) = {1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 9};
