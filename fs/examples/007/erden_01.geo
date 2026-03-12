d=570.; // diameter
r=d/2; // radius
s=0.4; // scaling factor
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={-r,0.0,0.0};
Point(5)={0.0,-r,0.0};
Point(6)={r*Cos(45*Pi/180),r*Sin(45*Pi/180),0.0};
Point(7)={r*Cos(3*45*Pi/180),r*Sin(3*45*Pi/180),0.0};
Point(8)={r*Cos(5*45*Pi/180),r*Sin(5*45*Pi/180),0.0};
Point(9)={r*Cos(7*45*Pi/180),r*Sin(7*45*Pi/180),0.0};
Point(10)={s*r,s*r,0.0};
Point(11)={-s*r,s*r,0.0};
Point(12)={-s*r,-s*r,0.0};
Point(13)={s*r,-s*r,0.0};
Point(14)={s*r,0.0,0.0};
Point(15)={-s*r,0.0,0.0};
Point(16)={0.0,s*r,0.0};
Point(17)={0.0,-s*r,0.0};
//+
Line(1) = {1, 14};
//+
Line(2) = {14, 10};
//+
Line(3) = {10, 16};
//+
Line(4) = {16, 1};
//+
Line(5) = {1, 15};
//+
Line(6) = {15, 11};
//+
Line(7) = {11, 16};
//+
Line(8) = {15, 12};
//+
Line(9) = {12, 17};
//+
Line(10) = {17, 1};
//+
Line(11) = {17, 13};
//+
Line(12) = {13, 14};
//+
Line(13) = {14, 2};
//+
Line(14) = {10, 6};
//+
Line(15) = {16, 3};
//+
Line(16) = {11, 7};
//+
Line(17) = {15, 4};
//+
Line(18) = {12, 8};
//+
Line(19) = {17, 5};
//+
Line(20) = {13, 9};
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
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, 4, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {5, 8, 9, 10};
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
Curve Loop(6) = {14, 22, -15, -3};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {23, -16, 7, 15};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {16, 24, -17, 6};
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
Curve Loop(11) = {11, 20, -27, -19};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {12, 13, -28, -20};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {9, 10, 8, 5, 6, 7, 4, 3, 2, 1, 12, 11, 25, 24, 23, 22, 21, 28, 27, 26} = 12 Using Progression 1;
//+
Transfinite Curve {17, 16, 15, 14, 13, 20, 19, 18} = 13 Using Progression 1;
//+
Transfinite Surface {1} = {1, 14, 10, 16};
//+
Transfinite Surface {2} = {15, 1, 16, 11};
//+
Transfinite Surface {3} = {1, 15, 12, 17};
//+
Transfinite Surface {4} = {17, 13, 14, 1};
//+
Transfinite Surface {5} = {14, 2, 6, 10};
//+
Transfinite Surface {6} = {16, 10, 6, 3};
//+
Transfinite Surface {7} = {11, 16, 3, 7};
//+
Transfinite Surface {8} = {7, 4, 15, 11};
//+
Transfinite Surface {9} = {4, 8, 12, 15};
//+
Transfinite Surface {10} = {12, 8, 5, 17};
//+
Transfinite Surface {11} = {13, 17, 5, 9};
//+
Transfinite Surface {12} = {14, 13, 9, 2};
//+
Transfinite Surface {5} = {10, 14, 2, 6};
//+
Transfinite Surface {6} = {3, 16, 10, 6};
//+
Recombine Surface {7, 8, 6, 2, 1, 9, 3, 5, 4, 10, 12, 11};
//+
Physical Surface("PLATE", 29) = {7, 6, 5, 4, 3, 2, 1, 8, 12, 11, 10, 9};
