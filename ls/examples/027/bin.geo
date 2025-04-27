a=0.4;
b=0.2;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={2*a,0.0,0.0};
Point(4)={3*a,0.0,0.0};
Point(5)={0.0,b,0.0};
Point(6)={a,b,0.0};
Point(7)={2*a,b,0.0};
Point(8)={3*a,b,0.0};
Point(9)={0.0,2*b,0.0};
Point(10)={a,2*b,0.0};
Point(11)={2*a,2*b,0.0};
Point(12)={3*a,2*b,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {5, 6};
//+
Line(5) = {6, 7};
//+
Line(6) = {7, 8};
//+
Line(7) = {9, 10};
//+
Line(8) = {10, 11};
//+
Line(9) = {11, 12};
//+
Line(10) = {1, 5};
//+
Line(11) = {5, 9};
//+
Line(12) = {2, 6};
//+
Line(13) = {6, 10};
//+
Line(14) = {3, 7};
//+
Line(15) = {7, 11};
//+
Line(16) = {4, 8};
//+
Line(17) = {8, 12};
//+
Curve Loop(1) = {1, 12, -4, -10};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, -14, -2, 12};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 16, -6, -14};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 13, -7, -11};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {5, 15, -8, -13};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {6, 17, -9, -15};
//+
Plane Surface(6) = {6};
//+
Transfinite Curve {1, 2, 3, 4, 5, 6, 7, 8, 9} = 17 Using Progression 1;
//+
Transfinite Curve {10, 11, 12, 13, 14, 15, 16, 17} = 9 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 6, 5};
//+
Transfinite Surface {2} = {2, 3, 7, 6};
//+
Transfinite Surface {3} = {3, 4, 8, 7};
//+
Transfinite Surface {4} = {5, 6, 10, 9};
//+
Transfinite Surface {5} = {6, 7, 11, 10};
//+
Transfinite Surface {6} = {7, 8, 12, 11};
//+
Recombine Surface {1, 2, 3, 4, 5, 6};
//+
Physical Surface("PLATE", 18) = {1, 2, 3, 4, 5, 6};
