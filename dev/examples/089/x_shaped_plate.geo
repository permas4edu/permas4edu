a=1;
R=a/2;
Point(1)={a/2,0.0,0.0};
Point(2)={-a/2,0.0,0.0};
Point(3)={0.0,a/2,0.0};
//Point(4)={a/2,-a/2,0.0};
Point(5)={a,a,0.0};
Point(6)={-a,a,0.0};
Point(7)={-a,-a,0.0};
Point(8)={a,-a,0.0};
Point(9)={a/2,a,0.0};
Point(10)={-a/2,a,0.0};
Point(11)={-a/2,-a,0.0};
Point(12)={a/2,-a,0.0};
Point(13)={0.0,a/2,0.0};
Point(14)={0.0,-a/2,0.0};
Point(15)={0.0,a,0.0};
Point(16)={0.0,-a,0.0};
//+
Line(1) = {1, 3};
//+
Line(2) = {3, 2};
//+
Line(3) = {2, 14};
//+
Line(4) = {14, 1};
//+
Line(5) = {1, 5};
//+
Line(6) = {5, 9};
//+
Line(7) = {10, 6};
//+
Line(8) = {6, 2};
//+
Line(9) = {7, 2};
//+
Line(10) = {7, 11};
//+
Line(11) = {1, 8};
//+
Line(12) = {8, 12};
//+
Circle(13) = {10, 15, 3};
//+
Circle(14) = {3, 15, 9};
//+
Circle(15) = {12, 16, 14};
//+
Circle(16) = {14, 16, 11};
//+
Curve Loop(1) = {8, -2, -13, 7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {1, 14, -6, -5};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {1, 2, 3, 4};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {3, 16, -10, 9};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {4, 11, 12, 15};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {1, 2, 3, 4, 7, 6, 12, 10} = 11 Using Progression 1;
//+
Transfinite Curve {9, 16, 15, 11, 5, 14, 13, 8} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {2, 3, 10, 6};
//+
Transfinite Surface {2} = {3, 1, 5, 9};
//+
Transfinite Surface {3} = {2, 14, 1, 3};
//+
Transfinite Surface {4} = {7, 11, 14, 2};
//+
Transfinite Surface {5} = {14, 12, 8, 1};
//+
Recombine Surface {1, 2, 3, 4, 5};
//+
Extrude {0, 0, 0.1} {
  Surface{5}; Surface{2}; Surface{3}; Surface{4}; Surface{1}; Layers {6}; Recombine;
}
//+
Physical Volume("X_SHAPE", 127) = {1, 4, 3, 2, 5};
