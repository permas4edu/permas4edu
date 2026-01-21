a=2;
b=1;
r=0.25;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
Point(5)={a/2,0.0,0.0};
Point(6)={a,b/2,0.0};
Point(7)={a/2,b,0.0};
Point(8)={0.0,b/2,0.0};
Point(9)={a/2,b/2,0.0}; // Center of circle
Point(10)={a/2+r,b/2,0.0};
Point(11)={a/2,b/2+r,0.0};
Point(12)={a/2-r,b/2,0.0};
Point(13)={a/2,b/2-r,0.0};
Point(14)={a/2+2*r,b/2,0.0};
Point(15)={a/2-2*r,b/2,0.0};
Point(16)={a/2+2*r,0.0,0.0};
Point(17)={a/2-2*r,0.0,0.0};
Point(18)={a/2+2*r,b,0.0};
Point(19)={a/2-2*r,b,0.0};//+
Line(1) = {1, 17};
//+
Line(2) = {17, 5};
//+
Line(3) = {5, 16};
//+
Line(4) = {16, 2};
//+
Line(5) = {2, 6};
//+
Line(6) = {6, 3};
//+
Line(7) = {3, 18};
//+
Line(8) = {18, 7};
//+
Line(9) = {7, 19};
//+
Line(10) = {19, 4};
//+
Line(11) = {4, 8};
//+
Line(12) = {8, 1};
//+
Line(13) = {8, 15};
//+
Line(14) = {15, 12};
//+
Line(15) = {10, 14};
//+
Line(16) = {14, 6};
//+
Line(17) = {14, 18};
//+
Line(18) = {14, 16};
//+
Line(19) = {13, 5};
//+
Line(20) = {11, 7};
//+
Line(21) = {15, 19};
//+
Line(22) = {15, 17};
//+
Circle(23) = {10, 9, 11};
//+
Circle(24) = {11, 9, 12};
//+
Circle(25) = {12, 9, 13};
//+
Circle(26) = {13, 9, 10};
//+
Curve Loop(1) = {12, 1, -22, -13};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {13, 21, 10, 11};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {21, -9, -20, 24, -14};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {14, 25, 19, -2, -22};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {26, 15, 18, -3, -19};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {16, -5, -4, -18};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {6, 7, -17, 16};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {15, 17, 8, -20, -23};
//+
Plane Surface(8) = {8};
//+
Physical Surface("BEAM", 27) = {1, 2, 3, 4, 5, 6, 7, 8};
//+
//Transfinite Curve {11, 10, 21, 13, 12, 1, 22, 2, 3, 4, 5, 6, 7, 17, 16, 8, 18, 9} = 51 Using Progression 1;
Transfinite Curve {11, 10, 21, 13, 12, 1, 22, 2, 3, 4, 5, 6, 7, 17, 16, 8, 18, 9} = 41 Using Progression 1;
//+
Transfinite Curve {20, 14, 19, 15} = 21 Using Progression 1;
//+
//Transfinite Curve {23, 24, 25, 26} = 101 Using Progression 1;
Transfinite Curve {23, 24, 25, 26} = 81 Using Progression 1;
//+
Transfinite Surface {2} = {8, 15, 19, 4};
//+
Transfinite Surface {1} = {1, 17, 15, 8};
//+
Transfinite Surface {3} = {12, 11, 7, 15};
//+
Transfinite Surface {4} = {13, 12, 15, 5};
//+
Transfinite Surface {8} = {11, 10, 14, 7};
//+
Transfinite Surface {5} = {10, 13, 5, 14};
//+
Transfinite Surface {7} = {14, 6, 3, 18};
//+
Transfinite Surface {6} = {16, 2, 6, 14};
//+
Recombine Surface {1, 4, 5, 6, 2, 3, 8, 7};
