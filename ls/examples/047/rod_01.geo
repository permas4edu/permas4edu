d=40.;
r=d/2;
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={-r,0.0,0.0};
Point(5)={0.0,-r,0.0};
Point(6)={r*Cos(45*Pi/180),r*Sin(45*Pi/180),0.0};
Point(7)={r*Cos(3*45*Pi/180),r*Sin(3*45*Pi/180),0.0};
Point(8)={r*Cos(5*45*Pi/180),r*Sin(5*45*Pi/180),0.0};
Point(9)={r*Cos(7*45*Pi/180),r*Sin(7*45*Pi/180),0.0};
Point(10)={r/2,0.0,0.0};
Point(11)={0.0,r/2,0.0};
Point(12)={-r/2,0.0,0.0};
Point(13)={0.0,-r/2,0.0};
Point(14)={r*Cos(45*Pi/180)/2,r*Sin(45*Pi/180)/2,0.0};
Point(15)={r*Cos(3*45*Pi/180)/2,r*Sin(3*45*Pi/180)/2,0.0};
Point(16)={r*Cos(5*45*Pi/180)/2,r*Sin(5*45*Pi/180)/2,0.0};
Point(17)={r*Cos(7*45*Pi/180)/2,r*Sin(7*45*Pi/180)/2,0.0};
//+
Line(1) = {1, 10};
//+
Line(2) = {10, 2};
//+
Line(3) = {1, 11};
//+
Line(4) = {11, 3};
//+
Line(5) = {14, 6};
//+
Line(6) = {14, 11};
//+
Line(7) = {10, 14};
//+
Line(8) = {11, 15};
//+
Line(9) = {15, 12};
//+
Line(10) = {12, 16};
//+
Line(11) = {16, 13};
//+
Line(12) = {13, 17};
//+
Line(13) = {17, 10};
//+
Line(14) = {1, 12};
//+
Line(15) = {1, 13};
//+
Line(16) = {15, 7};
//+
Line(17) = {12, 4};
//+
Line(18) = {16, 8};
//+
Line(19) = {13, 5};
//+
Line(20) = {17, 9};
//+
Circle(21) = {2, 1, 6};
//+
Circle(22) = {6, 1, 3};
//+
Circle(23) = {3, 1, 7};
//+
Circle(24) = {7, 1, 4};
//+
Circle(25) = {4, 1, 8};
//+
Circle(26) = {8, 1, 5};
//+
Circle(27) = {5, 1, 9};
//+
Circle(28) = {9, 1, 2};
//+
Curve Loop(1) = {7, 6, -3, 1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {3, 8, 9, -14};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, 11, -15, 14};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {12, 13, -1, 15};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {2, 21, -5, -7};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {22, -4, -6, 5};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {4, 23, -16, -8};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {24, -17, -9, 16};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {17, 25, -18, -10};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {11, 19, -26, -18};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {12, 20, -27, -19};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {13, 2, -28, -20};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {26, 27, 19, 18, 11, 25, 12, 20, 10, 17, 14, 15, 1, 13, 9, 28, 2, 7, 8, 6, 3, 16, 24, 21, 5, 23, 4, 22} = 4 Using Progression 1;
//+
Transfinite Surface {1} = {1, 10, 14, 11};
//+
Transfinite Surface {2} = {11, 15, 12, 1};
//+
Transfinite Surface {3} = {12, 16, 13, 1};
//+
Transfinite Surface {4} = {1, 13, 17, 10};
//+
Transfinite Surface {5} = {6, 14, 10, 2};
//+
Transfinite Surface {6} = {11, 14, 6, 3};
//+
Transfinite Surface {7} = {3, 7, 15, 11};
//+
Transfinite Surface {8} = {7, 4, 12, 15};
//+
Transfinite Surface {9} = {4, 8, 16, 12};
//+
Transfinite Surface {10} = {16, 8, 5, 13};
//+
Transfinite Surface {11} = {13, 5, 9, 17};
//+
Transfinite Surface {12} = {17, 9, 2, 10};
//+
Recombine Surface {10, 9, 11, 3, 4, 12, 2, 8, 1, 7, 5, 6};
//+
Extrude {0, 0, 500} {
  Surface{7}; Surface{6}; Surface{5}; Surface{4}; Surface{3}; Surface{2}; Surface{1}; Surface{8}; Surface{12}; Surface{11}; Surface{10}; Surface{9}; Layers {100}; Recombine;
}

//+
Physical Volume("ROD", 293) = {3, 2, 7, 9, 1, 4, 6, 10, 8, 5, 11, 12};
