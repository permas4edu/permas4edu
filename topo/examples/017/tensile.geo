r=10.;
Point(1)={0.0,0.0,0.0};
Point(2)={30.0,0.0,0.0};
Point(3)={60.0,0.0,0.0};
Point(4)={90.0,30.0,0.0};
Point(5)={90.0+r,30.0,0.0};
Point(6)={90.0-r,30.0,0.0};
Point(7)={90.0,30.0+r,0.0};
Point(8)={90.0,30.0-r,0.0};
Point(9)={90.0,0.0,0.0};
Point(10)={120.0,0.0,0.0};
Point(11)={150.0,0.0,0.0};
Point(12)={180.0,0.0,0.0};
Point(13)={180.0,30.0,0.0};
Point(14)={150.0,30.0,0.0};
Point(15)={120.0,30.0,0.0};
Point(16)={60.0,30.0,0.0};
Point(17)={30.0,30.0,0.0};
Point(18)={0.0,30.0,0.0};
Point(19)={0.0,60.0,0.0};
Point(20)={30.0,60.0,0.0};
Point(21)={60.0,60.0,0.0};
Point(22)={90.0,60.0,0.0};
Point(23)={120.0,60.0,0.0};
Point(24)={150.0,60.0,0.0};
Point(25)={180.0,60.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 9};
//+
Line(4) = {9, 10};
//+
Line(5) = {10, 11};
//+
Line(6) = {11, 12};
//+
Line(7) = {12, 13};
//+
Line(8) = {13, 25};
//+
Line(9) = {25, 24};
//+
Line(10) = {24, 23};
//+
Line(11) = {23, 22};
//+
Line(12) = {22, 21};
//+
Line(13) = {21, 20};
//+
Line(14) = {20, 19};
//+
Line(15) = {19, 18};
//+
Line(16) = {18, 1};
//+
Line(17) = {18, 17};
//+
Line(18) = {17, 16};
//+
Line(19) = {16, 6};
//+
Line(20) = {5, 15};
//+
Line(21) = {15, 14};
//+
Line(22) = {14, 13};
//+
Line(23) = {2, 17};
//+
Line(24) = {3, 16};
//+
Line(25) = {9, 8};
//+
Line(26) = {10, 15};
//+
Line(27) = {11, 14};
//+
Line(28) = {14, 24};
//+
Line(29) = {15, 23};
//+
Line(30) = {7, 22};
//+
Line(31) = {16, 21};
//+
Line(32) = {17, 20};
//+
Curve Loop(1) = {1, 23, -17, 16};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 24, -18, -23};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {5, 27, -21, -26};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {6, 7, -22, -27};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {8, 9, -28, 22};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {28, 10, -29, 21};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {31, 13, -32, 18};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {32, 14, 15, 17};
//+
Plane Surface(8) = {8};
//+
Circle(33) = {5, 4, 7};
//+
Circle(34) = {7, 4, 6};
//+
Circle(35) = {6, 4, 8};
//+
Circle(36) = {8, 4, 5};
//+
Curve Loop(9) = {20, 29, 11, -30, -33};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {12, -31, 19, -34, 30};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {24, 19, 35, -25, -3};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {25, 36, 20, -26, -4};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {1, 2, 3, 4, 5, 6, 16, 23, 24, 26, 27, 7, 22, 21, 18, 17, 15, 32, 31, 29, 28, 8, 14, 13, 12, 11, 10, 9} = 16 Using Progression 1;
//+
Transfinite Curve {20, 30, 19, 25} = 11 Using Progression 1;
//+
Transfinite Curve {33, 34, 35, 36} = 31 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 17, 18};
//+
Transfinite Surface {2} = {2, 3, 16, 17};
//+
Transfinite Surface {11} = {9, 8, 6, 16};
//+
Transfinite Surface {12} = {15, 5, 8, 9};
//+
Transfinite Surface {3} = {10, 11, 14, 15};
//+
Transfinite Surface {4} = {11, 12, 13, 14};
//+
Transfinite Surface {5} = {14, 13, 25, 24};
//+
Transfinite Surface {6} = {15, 14, 24, 23};
//+
Transfinite Surface {9} = {22, 7, 5, 15};
//+
Transfinite Surface {10} = {16, 6, 7, 22};
//+
Transfinite Surface {7} = {17, 16, 21, 20};
//+
Transfinite Surface {8} = {18, 17, 20, 19};
//+
Recombine Surface {1, 2, 11, 12, 3, 4, 5, 6, 9, 10, 7, 8};
//+
Extrude {0, 0, 6} {
  Surface{5}; Surface{4}; Surface{6}; Surface{3}; Surface{9}; Surface{12}; Surface{10}; Surface{11}; Surface{7}; Surface{2}; Surface{8}; Surface{1}; Layers {3}; Recombine;
}
//+
Transfinite Volume{1};
//+
Physical Volume("PLATE", 321) = {1, 3, 5, 7, 2, 9, 4, 11, 6, 8, 10, 12};
