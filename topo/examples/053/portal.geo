a1=4.;
a2=1.;
b1=2.;
b2=1.;
Point(1)={-a1/2-a2,0.0,0.0};
Point(2)={-a1/2,0.0,0.0};
Point(3)={ a1/2+a2,0.0,0.0};
Point(4)={ a1/2,0.0,0.0};
Point(5)={-a1/2-a2,b1,0.0};
Point(6)={-a1/2-a2,b1+b2,0.0};
Point(7)={-a1/2,b1,0.0};
Point(8)={-a1/2,b1+b2,0.0};
Point(9)={ a1/2+a2,b1,0.0};
Point(10)={a1/2+a2,b1+b2,0.0};
Point(11)={a1/2,b1,0.0};
Point(12)={a1/2,b1+b2,0.0};
Point(13)={0.0,b1,0.0};
Point(14)={0.0,b1+b2,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 7};
//+
Line(3) = {7, 5};
//+
Line(4) = {5, 1};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 8};
//+
Line(7) = {8, 7};
//+
Line(8) = {7, 13};
//+
Line(9) = {13, 14};
//+
Line(10) = {14, 8};
//+
Line(11) = {13, 11};
//+
Line(12) = {11, 12};
//+
Line(13) = {12, 14};
//+
Line(14) = {11, 9};
//+
Line(15) = {9, 10};
//+
Line(16) = {10, 12};
//+
Line(17) = {11, 4};
//+
Line(18) = {4, 3};
//+
Line(19) = {3, 9};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, 3};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {8, 9, 10, 7};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {13, -9, 11, 12};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {16, -12, 14, 15};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {17, 18, 19, -14};
//+
Plane Surface(6) = {6};
//+
Transfinite Curve {1, 3, 6, 7, 5, 9, 12, 15, 16, 14, 18} = 31 Using Progression 1;
//+
Transfinite Curve {4, 2, 8, 10, 13, 11, 17, 19} = 61 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 7, 5};
//+
Transfinite Surface {2} = {5, 7, 8, 6};
//+
Transfinite Surface {3} = {7, 13, 14, 8};
//+
Transfinite Surface {4} = {13, 11, 12, 14};
//+
Transfinite Surface {6} = {4, 3, 9, 11};
//+
Transfinite Surface {5} = {11, 9, 10, 12};
//+
Recombine Surface {1, 2, 3, 4, 6, 5};
//+
Physical Surface("PORTAL", 20) = {2, 1, 3, 4, 5, 6};
