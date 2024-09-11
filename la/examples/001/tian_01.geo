a=1.;
R=0.15;
b=0.1;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,a,0.0};
Point(4)={0.0,a,0.0};
//
Point(5)={a/2,0.0,0.0};
Point(6)={0.0,a/2,0.0};
Point(7)={a/2,a,0.0};
Point(8)={a,a/2,0.0};
//
Point(9)={a/2,a/2-b-R,0.0};
Point(10)={a/2,a/2+b+R,0.0};
//
Point(11)={a/2+R,a/2-b,0.0};
Point(12)={a/2+R,a/2+b,0.0};
Point(13)={a/2-R,a/2-b,0.0};
Point(14)={a/2-R,a/2+b,0.0};
//
Point(15)={a/2,a/2+b,0.0};
Point(16)={a/2,a/2-b,0.0};
//
Point(17)={a/2-R,a/2,0.0};
Point(18)={a/2+R,a/2,0.0};
//+
Line(1) = {1, 5};
//+
Line(2) = {5, 2};
//+
Line(3) = {2, 8};
//+
Line(4) = {8, 3};
//+
Line(5) = {3, 7};
//+
Line(6) = {7, 4};
//+
Line(7) = {4, 6};
//+
Line(8) = {6, 1};
//+
Line(9) = {13, 17};
//+
Line(10) = {17, 14};
//+
Line(11) = {11, 18};
//+
Line(12) = {18, 12};
//+
Line(13) = {10, 7};
//+
Line(14) = {9, 5};
//+
Line(15) = {18, 8};
//+
Line(16) = {17, 6};
//+
Circle(17) = {12, 15, 10};
//+
Circle(18) = {10, 15, 14};
//+
Circle(19) = {13, 16, 9};
//+
Circle(20) = {9, 16, 11};
//+
Curve Loop(1) = {15, 4, 5, -13, -17, -12};
//+
Plane Surface(1) = {1};
//+

//+
Curve Loop(2) = {16, -7, -6, -13, 18, -10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {8, 1, -14, -19, 9, 16};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {14, 2, 3, -15, -11, -20};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {16, 14} = 21 Using Progression 1;
//+
Transfinite Curve {6, 7} = 11 Using Progression 1;
//+
Transfinite Curve {10, 18} = 11 Using Progression 1;
//+
Transfinite Curve {8, 1} = 11 Using Progression 1;
//+
Transfinite Curve {19, 9} = 11 Using Progression 1;
//+
Transfinite Curve {2, 3} = 11 Using Progression 1;
//+
Transfinite Curve {11, 20} = 11 Using Progression 1;
Transfinite Curve {12, 17} = 11 Using Progression 1;
//+
Transfinite Curve {4, 5} = 11 Using Progression 1;
//+
Transfinite Curve {15, 13} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {10, 18, 8, 7};
//+
Transfinite Surface {2} = {10, 7, 6, 17};
//+
Transfinite Surface {3} = {17, 6, 5, 9};
//+
Transfinite Surface {4} = {18, 9, 5, 8};
//+
Recombine Surface {1, 2, 3, 4};
//+
Physical Surface("PLATE", 21) = {2, 3, 1, 4};
