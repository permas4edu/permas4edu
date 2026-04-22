L=10.;
t=1.;
r=0.5;
Point(1)={0.0,0.0,0.0};
Point(2)={-r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={0.0,-r,0.0};
Point(5)={L,r,0.0};
Point(6)={L,-r,0.0};
Point(7)={L,r+t,0.0};
Point(8)={L,-r-t,0.0};
Point(9)={0.0,r+t,0.0};
Point(10)={0.0,-r-t,0.0};
Point(11)={-r-t,0.0,0.0};//+
Circle(1) = {3, 1, 2};
//+
Circle(2) = {2, 1, 4};
//+
Circle(3) = {9, 1, 11};
//+
Circle(4) = {11, 1, 10};
//+
Line(5) = {10, 8};
//+
Line(6) = {8, 6};
//+
Line(7) = {6, 4};
//+
Line(8) = {3, 5};
//+
Line(9) = {5, 7};
//+
Line(10) = {7, 9};
//+
Line(11) = {9, 3};
//+
Line(12) = {4, 10};
//+
Line(13) = {2, 11};
//+
Curve Loop(1) = {3, -13, -1, -11};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, 11, 8, 9};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {13, 4, -12, -2};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, 12, 5, 6};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {10, 8, 7, 5} = 81 Using Progression 1;
//+
Transfinite Curve {11, 13, 12, 6, 9} = 7 Using Progression 1;
//+
Transfinite Curve {3, 1, 4, 2} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {9, 11, 2, 3};
//+
Transfinite Surface {3} = {2, 11, 10, 4};
//+
Transfinite Surface {2} = {7, 9, 3, 5};
//+
Transfinite Surface {4} = {4, 10, 8, 6};
//+
Recombine Surface {1, 3, 2, 4};
//+
Extrude {0, 0, 1} {
  Surface{2}; Surface{1}; Surface{4}; Surface{3}; Layers {6}; Recombine;
}
//+
Physical Volume("LOWER_FLANGE", 102) = {3};
//+
Physical Volume("UPPER_FLANGE", 103) = {1};
//+
Physical Volume("ANNULUS", 104) = {2, 4};
