R=15.;
L=160.;
H=80.;
d=25.;
Point(1)={0.0,0.0,0.0};
Point(2)={R,0.0,0.0};
Point(3)={0.0,R,0.0};
Point(4)={-R,0.0,0.0};
Point(5)={0.0,-R,0.0};
Point(6)={-R-d,0.0,0.0};
Point(7)={L-R-d,0.0,0.0};
Point(8)={-R-d,-H/2,0.0};
Point(9)={L-R-d,-H/2,0.0};
Point(10)={-R-d,H/2,0.0};
Point(11)={L-R-d,H/2,0.0};
Point(12)={0.0,H/2,0.0};
Point(13)={0.0,-H/2,0.0};
Point(14)={+R+d,-H/2,0.0};
Point(15)={+R+d, H/2,0.0};
Point(16)={+R+d, 0.0,0.0};//+
Line(1) = {3, 12};
//+
Line(2) = {4, 6};
//+
Line(3) = {6, 10};
//+
Line(4) = {10, 12};
//+
Line(5) = {12, 15};
//+
Line(6) = {15, 16};
//+
Line(7) = {16, 2};
//+
Line(8) = {5, 13};
//+
Line(9) = {13, 14};
//+
Line(10) = {14, 16};
//+
Line(11) = {13, 8};
//+
Line(12) = {8, 6};
//+
Line(13) = {16, 7};
//+
Line(14) = {7, 11};
//+
Line(15) = {11, 15};
//+
Line(16) = {14, 9};
//+
Line(17) = {9, 7};
//+
Circle(18) = {2, 1, 3};
//+
Circle(19) = {3, 1, 4};
//+
Circle(20) = {4, 1, 5};
//+
Circle(21) = {5, 1, 2};
//+
Curve Loop(1) = {2, 3, 4, -1, 19};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {12, -2, 20, 8, 11};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {8, 9, 10, 7, -21};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, 18, 1, 5, 6};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {13, 14, 15, 6};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {10, 13, -17, -16};
//+
Plane Surface(6) = {6};
//+
Transfinite Curve {16, 13, 15} = 81 Using Progression 1;
//+
Transfinite Curve {6, 14, 17, 10} = 41 Using Progression 1;
//+
Transfinite Curve {8, 7, 1, 2} = 26 Using Progression 1;
//+
Transfinite Curve {5, 4, 3, 12, 11, 9} = 41 Using Progression 1;
//+
Transfinite Curve {20, 19, 18, 21} = 81 Using Progression 1;
//+
Transfinite Surface {2} = {13, 5, 4, 6};
//+
Transfinite Surface {1} = {4, 3, 12, 6};
//+
Transfinite Surface {4} = {3, 2, 16, 12};
//+
Transfinite Surface {3} = {2, 5, 13, 16};
//+
Transfinite Surface {5} = {16, 7, 11, 15};
//+
Transfinite Surface {6} = {14, 9, 7, 16};
//+
Recombine Surface {2, 3, 4, 1, 5, 6};
//+
Physical Surface("PLATE", 22) = {1, 4, 5, 6, 3, 2};
