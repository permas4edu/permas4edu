r=0.02;
s=0.4;
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0};
Point(3)={-r,0.0,0.0};
Point(4)={0.0,r,0.0};
Point(5)={0.0,-r,0.0};
Point(6)={s*r,0.0,0.0};
Point(7)={-s*r,0.0,0.0};
Point(8)={0.0,s*r,0.0};
Point(9)={0.0,-s*r,0.0};
Point(10)={s*r,s*r,0.0};
Point(11)={-s*r,s*r,0.0};
Point(12)={-s*r,-s*r,0.0};
Point(13)={s*r,-s*r,0.0};
Point(14)={r*Cos(45*Pi/180),r*Sin(45*Pi/180),0.0};
Point(15)={r*Cos(3*45*Pi/180),r*Sin(3*45*Pi/180),0.0};
Point(16)={r*Cos(5*45*Pi/180),r*Sin(5*45*Pi/180),0.0};
Point(17)={r*Cos(7*45*Pi/180),r*Sin(7*45*Pi/180),0.0};
//+
Line(1) = {1, 6};
//+
Line(2) = {6, 10};
//+
Line(3) = {10, 8};
//+
Line(4) = {8, 1};
//+
Line(5) = {8, 11};
//+
Line(6) = {11, 7};
//+
Line(7) = {7, 1};
//+
Line(8) = {7, 12};
//+
Line(9) = {12, 9};
//+
Line(10) = {9, 1};
//+
Line(11) = {9, 13};
//+
Line(12) = {13, 6};
//+
Line(13) = {6, 2};
//+
Line(14) = {10, 14};
//+
Line(15) = {8, 4};
//+
Line(16) = {11, 15};
//+
Line(17) = {7, 3};
//+
Line(18) = {12, 16};
//+
Line(19) = {9, 5};
//+
Line(20) = {13, 17};
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
Curve Loop(2) = {5, 6, 7, -4};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, -10, -9, -8};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, 12, -1, -10};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {13, 21, -14, -2};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {3, 15, -22, -14};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {23, -16, -5, 15};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {16, 24, -17, -6};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {17, 25, -18, -8};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {9, 19, -26, -18};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {19, 27, -20, -11};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {20, 28, -13, -12};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {26, 27, 18, 9, 19, 11, 20, 25, 8, 17, 7, 10, 1, 12, 13, 28, 6, 5, 4, 3, 2, 24, 16, 14, 21, 23, 15, 22} = 4 Using Progression 1;
//+
Transfinite Surface {1} = {1, 6, 10, 8};
//+
Transfinite Surface {2} = {1, 8, 11, 7};
//+
Transfinite Surface {3} = {9, 1, 7, 12};
//+
Transfinite Surface {4} = {9, 13, 6, 1};
//+
Transfinite Surface {5} = {10, 6, 2, 14};
//+
Transfinite Surface {6} = {8, 10, 14, 4};
//+
Transfinite Surface {7} = {11, 8, 4, 15};
//+
Transfinite Surface {8} = {15, 3, 7, 11};
//+
Transfinite Surface {9} = {7, 3, 16, 12};
//+
Transfinite Surface {10} = {12, 16, 5, 9};
//+
Transfinite Surface {11} = {9, 5, 17, 13};
//+
Transfinite Surface {12} = {6, 13, 17, 2};
//+
Recombine Surface {9, 10, 3, 8, 11, 2, 4, 1, 7, 12, 6, 5};
//+
Extrude {0, 0, 1} {
  Surface{5}; Surface{6}; Surface{12}; Surface{1}; Surface{4}; Surface{11}; Surface{2}; Surface{7}; Surface{3}; Surface{8}; Surface{10}; Surface{9}; Layers {50}; Recombine;
}
//+
Physical Volume("BEAM", 293) = {6, 11, 3, 5, 12, 9, 4, 1, 7, 10, 2, 8};
