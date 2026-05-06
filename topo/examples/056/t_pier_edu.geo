a1=24.;
a2=8.;
b1=24.;
b2=9.;
b3=1.;
Point(1)={-a2/2,0.0,0.0};
Point(2)={ a2/2,0.0,0.0};
Point(3)={-a2/2,b1-b2,0.0};
Point(4)={ a2/2,b1-b2,0.0};
Point(5)={-a2/2,b1-b3,0.0};
Point(6)={ a2/2,b1-b3,0.0};
Point(7)={-a2/2,b1,0.0};
Point(8)={ a2/2,b1,0.0};
Point(9)={-a1/2,b1,0.0};
Point(10)={ a1/2,b1,0.0};
Point(11)={-a1/2,b1-b3,0.0};
Point(12)={ a1/2,b1-b3,0.0};
Point(13)={-a1/2,b1-b2,0.0};
Point(14)={ a1/2,b1-b2,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 14};
//+
Line(4) = {14, 12};
//+
Line(5) = {12, 10};
//+
Line(6) = {10, 8};
//+
Line(7) = {8, 7};
//+
Line(8) = {7, 9};
//+
Line(9) = {9, 11};
//+
Line(10) = {11, 13};
//+
Line(11) = {13, 3};
//+
Line(12) = {3, 1};
//+
Line(13) = {3, 4};
//+
Line(14) = {3, 5};
//+
Line(15) = {5, 7};
//+
Line(16) = {4, 6};
//+
Line(17) = {6, 8};
//+
Line(18) = {11, 5};
//+
Line(19) = {5, 6};
//+
Line(20) = {6, 12};
//+
Curve Loop(1) = {12, 1, 2, -13};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {11, 14, -18, 10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {14, 19, -16, -13};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {3, 4, -20, -16};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {6, -17, 20, 5};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {19, 17, 7, -15};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {8, 9, 18, 15};
//+
Plane Surface(7) = {7};
//+
Transfinite Curve {1, 13, 19, 7, 11, 18, 8, 20, 6, 3, 4, 16, 14, 10} = 41 Using Progression 1;
//+
Transfinite Curve {12, 2} = 76 Using Progression 1;
//+
Transfinite Curve {9, 15, 17, 5} = 6 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 4, 3};
//+
Transfinite Surface {2} = {13, 3, 5, 11};
//+
Transfinite Surface {3} = {3, 4, 6, 5};
//+
Transfinite Surface {4} = {4, 14, 12, 6};
//+
Transfinite Surface {5} = {6, 12, 10, 8};
//+
Transfinite Surface {6} = {5, 6, 8, 7};
//+
Transfinite Surface {7} = {11, 5, 7, 9};
//+
Recombine Surface {7, 6, 5, 2, 3, 4, 1};
//+
Physical Surface("FROZEN", 21) = {7, 6, 5};
//+
Physical Surface("DESIGN", 22) = {1, 2, 3, 4};
