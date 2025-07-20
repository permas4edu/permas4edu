R=40.;
H=100.;
s=0.4;
Point(1)={0.0,0.0,0.0};
Point(2)={ R,0.0,0.0};
Point(3)={-R,0.0,0.0};
Point(4)={0.0, R,0.0};
Point(5)={0.0,-R,0.0};
Point(6)={ s*R,0.0,0.0};
Point(7)={-s*R,0.0,0.0};
Point(8)={0.0, s*R,0.0};
Point(9)={0.0,-s*R,0.0};
Point(10)={ s*R,s*R,0.0};
Point(11)={ -s*R,s*R,0.0};
Point(12)={ -s*R,-s*R,0.0};
Point(13)={ s*R,-s*R,0.0};
Point(14)={ R*Cos(45*Pi/180),R*Sin(45*Pi/180),0.0};
Point(15)={ R*Cos(3*45*Pi/180),R*Sin(3*45*Pi/180),0.0};
Point(16)={ R*Cos(5*45*Pi/180),R*Sin(5*45*Pi/180),0.0};
Point(17)={ R*Cos(7*45*Pi/180),R*Sin(7*45*Pi/180),0.0};
//+
Line(1) = {1, 6};
//+
Line(2) = {6, 2};
//+
Line(3) = {10, 14};
//+
Line(4) = {8, 4};
//+
Line(5) = {11, 15};
//+
Line(6) = {7, 3};
//+
Line(7) = {12, 16};
//+
Line(8) = {9, 5};
//+
Line(9) = {13, 17};
//+
//+
Line(10) = {6, 10};
//+
Line(11) = {10, 8};
//+
Line(12) = {1, 8};
//+
Line(13) = {8, 11};
//+
Line(14) = {11, 7};
//+
Line(15) = {7, 12};
//+
Line(16) = {12, 9};
//+
Line(17) = {9, 1};
//+
Line(18) = {1, 7};
//+
Line(19) = {9, 13};
//+
Line(20) = {13, 6};
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
Curve Loop(1) = {10, 11, -12, 1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {12, 13, 14, -18};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {15, 16, 17, 18};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {17, 1, -20, -19};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {3, -21, -2, 10};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {3, 22, -4, -11};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {13, 5, -23, -4};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {24, -6, -14, 5};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {6, 25, -7, -15};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {7, 26, -8, -16};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {8, 27, -9, -19};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {9, 28, -2, -20};
//+
Plane Surface(12) = {12};
//+
Transfinite Surface {1} = {1, 6, 10, 8};
//+
Transfinite Surface {2} = {1, 8, 11, 7};
//+
Transfinite Surface {3} = {1, 7, 12, 9};
//+
Transfinite Surface {4} = {1, 9, 13, 6};
//+
Transfinite Surface {5} = {6, 2, 14, 10};
//+
Transfinite Surface {6} = {10, 14, 4, 8};
//+
Transfinite Surface {7} = {4, 15, 11, 8};
//+
Transfinite Surface {8} = {15, 3, 7, 11};
//+
Transfinite Surface {9} = {3, 16, 12, 7};
//+
Transfinite Surface {10} = {12, 16, 5, 9};
//+
Transfinite Surface {11} = {13, 9, 5, 17};
//+
Transfinite Surface {12} = {6, 13, 17, 2};
//+
Transfinite Curve {2, 3, 4, 5, 6, 7, 8, 9} = 25 Using Progression 1;
//+
Transfinite Curve {21, 22, 23, 24, 25, 26, 27, 28} = 13 Using Progression 1;
//+
Transfinite Curve {10, 11, 13, 14, 15, 16, 19, 20} = 13 Using Progression 1;
//+
Transfinite Curve {12, 18, 17, 1} = 13 Using Progression 1;
//+
Recombine Surface {8, 7, 2, 9, 6, 3, 1, 4, 10, 5, 11, 12};
//+
Physical Surface("DISC", 29) = {5, 6, 12, 1, 4, 2, 7, 11, 3, 8, 10, 9};
//+

