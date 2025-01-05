a=1.;
b=0.2;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,a,0.0};
Point(4)={0.0,a,0.0};
Point(5)={a/2-b/2,a/2-b/2,0.0};
Point(6)={a/2+b/2,a/2-b/2,0.0};
Point(7)={a/2+b/2,a/2+b/2,0.0};
Point(8)={a/2-b/2,a/2+b/2,0.0};
Point(9)={a/2-b/2,0.0,0.0};
Point(10)={a/2+b/2,0.0,0.0};
Point(11)={a/2-b/2,a,0.0};
Point(12)={a/2+b/2,a,0.0};
Point(13)={a,a/2-b/2,0.0};
Point(14)={a,a/2+b/2,0.0};
Point(15)={0.0,a/2-b/2,0.0};
Point(16)={0.0,a/2+b/2,0.0};
//+
Line(1) = {1, 9};
//+
Line(2) = {9, 5};
//+
Line(3) = {5, 15};
//+
Line(4) = {15, 1};
//+
Line(5) = {9, 10};
//+
Line(6) = {10, 6};
//+
Line(7) = {6, 5};
//+
Line(8) = {10, 2};
//+
Line(9) = {2, 13};
//+
Line(10) = {13, 6};
//+
Line(11) = {6, 7};
//+
Line(12) = {7, 14};
//+
Line(13) = {14, 13};
//+
Line(14) = {8, 5};
//+
Line(15) = {15, 16};
//+
Line(16) = {16, 8};
//+
Line(17) = {8, 11};
//+
Line(18) = {11, 4};
//+
Line(19) = {4, 16};
//+
Line(20) = {8, 7};
//+
Line(21) = {7, 12};
//+
Line(22) = {12, 11};
//+
Line(23) = {12, 3};
//+
Line(24) = {3, 14};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -7, -6, -5};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -6, 8, 9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {3, 15, 16, 14};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {11, 12, 13, 10};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {21, 23, 24, -12};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {17, -22, -21, -20};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {18, 19, 16, 17};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {1, 8, 9, 6, 2, 4, 3, 10, 12, 16, 19, 17, 21, 24, 23, 18} = 41 Using Progression 1;
//+
Transfinite Curve {5, 7, 14, 15, 11, 13, 20, 22} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 9, 5, 15};
//+
Transfinite Surface {2} = {9, 10, 6, 5};
//+
Transfinite Surface {3} = {10, 2, 13, 6};
//+
Transfinite Surface {4} = {15, 5, 8, 16};
//+
Transfinite Surface {5} = {6, 13, 14, 7};
//+
Transfinite Surface {8} = {16, 8, 11, 4};
//+
Transfinite Surface {7} = {8, 7, 12, 11};
//+
Transfinite Surface {6} = {7, 14, 3, 12};
//+
Recombine Surface {1, 2, 4, 3, 8, 5, 7, 6};
//+
Physical Surface("PLANE", 25) = {1, 2, 4, 3, 8, 5, 7, 6};
