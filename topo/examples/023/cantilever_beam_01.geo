R=50.;
a=150.;
b=150.;
Point(1)={0.0,0.0,0.0};
Point(2)={R,0.0,0.0};
Point(3)={0.0,R,0.0};
Point(4)={-R,0.0,0.0};
Point(5)={0.0,-R,0.0};
Point(6)={-a/2,0.0,0.0};
Point(7)={ a/2,0.0,0.0};
Point(8)={0.0, b/2,0.0};
Point(9)={0.0,-b/2,0.0};
Point(10)={-a/2,b/2,0.0};
Point(11)={ a/2,b/2,0.0};
Point(12)={a/2,-b/2,0.0};
Point(13)={-a/2,-b/2,0.0};//+
Line(1) = {2, 7};
//+
Line(2) = {3, 8};
//+
Line(3) = {4, 6};
//+
Line(4) = {5, 9};
//+
Line(5) = {7, 11};
//+
Line(6) = {11, 8};
//+
Line(7) = {8, 10};
//+
Line(8) = {10, 6};
//+
Line(9) = {6, 13};
//+
Line(10) = {13, 9};
//+
Line(11) = {9, 12};
//+
Line(12) = {12, 7};
//+
Circle(13) = {2, 1, 3};
//+
Circle(14) = {3, 1, 4};
//+
Circle(15) = {4, 1, 5};
//+
Circle(16) = {5, 1, 2};
//+
Curve Loop(1) = {13, 2, -6, -5, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 7, 8, -3, -14};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 9, 10, -4, -15};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, 12, -1, -16, 4};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {1, 2, 3, 4} = 26 Using Progression 1;
//+
Transfinite Curve {13, 14, 15, 16} = 151 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8, 9, 10, 11, 12} = 76 Using Progression 1;
//+
Transfinite Surface {1} = {7, 8, 3, 2};
//+
Transfinite Surface {2} = {8, 6, 4, 3};
//+
Transfinite Surface {3} = {4, 6, 9, 5};
//+
Transfinite Surface {4} = {5, 9, 7, 2};
//+

//+
Recombine Surface {1, 2, 3, 4};
//+
Physical Surface("BEAM", 17) = {1, 2, 3, 4};
