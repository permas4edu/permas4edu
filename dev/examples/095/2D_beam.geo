a=1200.;
b=200.;
Point(1)={-a/2,-b/2,0.0};
Point(2)={ a/2,-b/2,0.0};
Point(3)={ a/2, b/2,0.0};
Point(4)={-a/2, b/2,0.0};
Point(5)={-a/2,0.0,0.0};
Point(6)={ a/2,0.0,0.0};
Point(7)={0.0,0.0,0.0};
Point(8)={0.0,-b/2,0.0};
Point(9)={0.0,b/2,0.0};
//+
Line(1) = {1, 8};
//+
Line(2) = {8, 2};
//+
Line(3) = {2, 6};
//+
Line(4) = {6, 3};
//+
Line(5) = {3, 9};
//+
Line(6) = {9, 4};
//+
Line(7) = {4, 5};
//+
Line(8) = {5, 1};
//+
Line(9) = {8, 7};
//+
Line(10) = {7, 9};
//+
Line(11) = {5, 7};
//+
Line(12) = {7, 6};
//+
Transfinite Curve {8, 7, 4, 3} = 11 Using Progression 1;
//+
Transfinite Curve {1, 11, 6, 5, 12, 2} = 61 Using Progression 1;
//+
Transfinite Curve {10, 9} = 11 Using Progression 1;
//+
Curve Loop(1) = {6, 7, 11, 10};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {1, 9, -11, 8};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {12, -3, -2, 9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {12, 4, 5, -10};
//+
Plane Surface(4) = {4};
//+
Transfinite Surface {1} = {5, 7, 9, 4};
//+
Transfinite Surface {2} = {1, 8, 7, 5};
//+
Transfinite Surface {4} = {7, 6, 3, 9};
//+
Transfinite Surface {3} = {8, 2, 6, 7};
//+
Recombine Surface {1, 2, 4, 3};
//+
Physical Surface("BEAM", 13) = {1, 2, 4, 3};
