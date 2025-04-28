ri=0.8;
ro=1.0;
Point(1)={0.0,0.0,0.0};
Point(2)={ri,0.0,0.0};
Point(3)={0.0,ri,0.0};
Point(4)={-ri,0.0,0.0};
Point(5)={0.0,-ri,0.0};
Point(6)={ro,0.0,0.0};
Point(7)={0.0,ro,0.0};
Point(8)={-ro,0.0,0.0};
Point(9)={0.0,-ro,0.0};
//+
Line(1) = {2, 6};
//+
Line(2) = {3, 7};
//+
Line(3) = {4, 8};
//+
Line(4) = {5, 9};
//+
Circle(5) = {2, 1, 3};
//+
Circle(6) = {3, 1, 4};
//+
Circle(7) = {4, 1, 5};
//+
Circle(8) = {5, 1, 2};
//+
Circle(9) = {6, 1, 7};
//+
Circle(10) = {7, 1, 8};
//+
Circle(11) = {8, 1, 9};
//+
Circle(12) = {9, 1, 6};
//+
Curve Loop(1) = {5, 2, -9, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, 3, -10, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {11, -4, -7, 3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {8, 1, -12, -4};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {5, 6, 7, 8} = 37 Using Progression 1;
//+
Transfinite Curve {9, 10, 11, 12} = 37 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4} = 6 Using Progression 1;
//+
Transfinite Surface {1} = {2, 6, 7, 3};
//+
Transfinite Surface {2} = {7, 8, 4, 3};
//+
Transfinite Surface {3} = {4, 8, 9, 5};
//+
Transfinite Surface {4} = {5, 9, 6, 2};
//+
Recombine Surface {2, 1, 3, 4};
//+
Physical Surface("ANNULUS", 13) = {2, 1, 3, 4};
