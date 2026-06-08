r=140.;
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={-r,0.0,0.0};
Point(5)={0.0,-r,0.0};
Point(6)={r*Cos(45*Pi/180),r*Sin(45*Pi/180),0.0};
Point(7)={r*Cos(3*45*Pi/180),r*Sin(3*45*Pi/180),0.0};
Point(8)={r*Cos(5*45*Pi/180),r*Sin(5*45*Pi/180),0.0};
Point(9)={r*Cos(7*45*Pi/180),r*Sin(7*45*Pi/180),0.0};
Point(10)={0.4*r,0.4*r,0.0};
Point(12)={-0.4*r,0.4*r,0.0};
Point(13)={-0.4*r,-0.4*r,0.0};
Point(14)={0.4*r,-0.4*r,0.0};
Point(15)={0.4*r,0.0,0.0};
Point(16)={-0.4*r,0.0,0.0};
Point(17)={0.0,-0.4*r,0.0};
Point(18)={0.0, 0.4*r,0.0};//+
Line(1) = {1, 15};
//+
Line(2) = {15, 2};
//+
Line(3) = {1, 18};
//+
Line(4) = {18, 3};
//+
Line(5) = {1, 16};
//+
Line(6) = {16, 4};
//+
Line(7) = {1, 17};
//+
Line(8) = {17, 5};
//+
Line(9) = {17, 14};
//+
Line(10) = {14, 15};
//+
Line(11) = {15, 10};
//+
Line(12) = {10, 18};
//+
Line(13) = {18, 12};
//+
Line(14) = {12, 16};
//+
Line(15) = {16, 13};
//+
Line(16) = {13, 17};
//+
Line(17) = {10, 6};
//+
Line(18) = {12, 7};
//+
Line(19) = {13, 8};
//+
Line(20) = {14, 9};
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
Curve Loop(1) = {1, 11, 12, -3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {3, 13, 14, -5};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {15, 16, -7, 5};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {9, 10, -1, 7};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {2, 21, -17, -11};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {17, 22, -4, -12};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {23, -18, -13, 4};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {18, 24, -6, -14};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {6, 25, -19, -15};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {16, 8, -26, -19};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {9, 20, -27, -8};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {20, 28, -2, -10};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {14, 13, 3, 11, 12, 1, 10, 9, 7, 16, 15, 5, 25, 26, 27, 28, 21, 22, 23, 24} = 21 Using Progression 1;
//+
Transfinite Curve {4, 18, 6, 19, 8, 20, 2, 17} = 17 Using Progression 1;
//+
Transfinite Surface {1} = {1, 15, 10, 18};
//+
Transfinite Surface {2} = {1, 18, 12, 16};
//+
Transfinite Surface {3} = {16, 13, 17, 1};
//+
Transfinite Surface {4} = {1, 17, 14, 15};
//+
Transfinite Surface {5} = {10, 15, 2, 6};
//+
Transfinite Surface {6} = {18, 10, 6, 3};
//+
Transfinite Surface {7} = {3, 7, 12, 18};
//+
Transfinite Surface {8} = {7, 4, 16, 12};
//+
Transfinite Surface {9} = {4, 8, 13, 16};
//+
Transfinite Surface {10} = {13, 8, 5, 17};
//+
Transfinite Surface {11} = {14, 17, 5, 9};
//+
Transfinite Surface {12} = {15, 14, 9, 2};
//+
Recombine Surface {7, 8, 2, 6, 1, 9, 3, 5, 4, 10, 11, 12};
//+
Physical Surface("PLATE", 29) = {6, 7, 5, 1, 2, 8, 4, 3, 12, 11, 9, 10};
