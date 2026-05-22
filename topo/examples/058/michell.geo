H=4.;
L=5.;
r=1.;
Point(1)={0.0,0.0,0.0};
Point(2)={r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={0.0,-r,0.0};
Point(5)={0.0,H/2,0.0};
Point(6)={0.0,-H/2,0.0};
Point(7)={L,0.0,0.0};
Point(8)={L,H/2,0.0};
Point(9)={L,-H/2,0.0};
Point(10)={H/2,0.0,0.0};
Point(11)={H/2,H/2,0.0};
Point(12)={H/2,-H/2,0.0};
//+
Line(1) = {4, 6};
//+
Line(2) = {6, 12};
//+
Line(3) = {12, 9};
//+
Line(4) = {9, 7};
//+
Line(5) = {7, 8};
//+
Line(6) = {8, 11};
//+
Line(7) = {11, 5};
//+
Line(8) = {5, 3};
//+
Line(9) = {2, 10};
//+
Line(10) = {10, 11};
//+
Line(11) = {10, 12};
//+
Line(12) = {10, 7};
//+
Circle(13) = {4, 1, 2};
//+
Circle(14) = {2, 1, 3};
//+
Curve Loop(1) = {1, 2, -11, -9, -13};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {12, -4, -3, -11};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -6, -5, -12};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, 8, -14, 9, 10};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {3, 12, 6} = 31 Using Progression 1;
//+
Transfinite Curve {11, 4, 5, 10, 2, 7} = 21 Using Progression 1;
//+
Transfinite Curve {8, 9, 1} = 11 Using Progression 1;
//+
Transfinite Curve {13, 14} = 41 Using Progression 1;
//+
Transfinite Surface {1} = {6, 12, 10, 2};
//+
Transfinite Surface {2} = {12, 9, 7, 10};
//+
Transfinite Surface {3} = {10, 7, 8, 11};
//+
Transfinite Surface {4} = {3, 2, 10, 5};
//+
Transfinite Surface {1} = {4, 6, 10, 2};
//+
Recombine Surface {1, 2, 4, 3};
//+
Extrude {0, 0, 0.1} {
  Surface{4}; Surface{3}; Surface{1}; Surface{2}; Layers {3}; Recombine;
}
//+
Physical Volume("MITCHELL", 113) = {1, 2, 3, 4};
