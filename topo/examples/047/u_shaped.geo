x1=200;
y1=160;
x2=100;
y2=60;
y3=100;
Point(1)={0.0,0.0,0.0};
Point(2)={x2,0.0,0.0};
Point(3)={x1,0.0,0.0};
Point(4)={x1,y2,0.0};
Point(5)={x2,y2,0.0};
Point(6)={x2,y3,0.0};
Point(7)={x1,y3,0.0};
Point(8)={x1,y1,0.0};
Point(9)={x2,y1,0.0};
Point(10)={0.0,y1,0.0};
Point(11)={0.0,y3,0.0};
Point(12)={0.0,y2,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 5};
//+
Line(3) = {5, 12};
//+
Line(4) = {12, 1};
//+
Line(5) = {2, 3};
//+
Line(6) = {3, 4};
//+
Line(7) = {4, 5};
//+
Line(8) = {5, 6};
//+
Line(9) = {6, 11};
//+
Line(10) = {11, 12};
//+
Line(11) = {6, 9};
//+
Line(12) = {9, 10};
//+
Line(13) = {10, 11};
//+
Line(14) = {6, 7};
//+
Line(15) = {7, 8};
//+
Line(16) = {8, 9};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -7, -6, -5};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {8, 9, 10, -3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {13, -9, 11, 12};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {11, -16, -15, -14};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {1, 3, 9, 12, 14, 16, 7, 5} = 51 Using Progression 1;
//+
Transfinite Curve {4, 2, 6, 15, 11, 13} = 31 Using Progression 1;
//+
Transfinite Curve {10, 8} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 5, 12};
//+
Transfinite Surface {2} = {2, 3, 4, 5};
//+
Transfinite Surface {3} = {12, 5, 6, 11};
//+
Transfinite Surface {4} = {11, 6, 9, 10};
//+
Transfinite Surface {5} = {6, 7, 8, 9};
//+
Recombine Surface {1, 3, 4, 2, 5};
//+
Physical Surface("U_SHAPED", 17) = {4, 1, 3, 2, 5};
