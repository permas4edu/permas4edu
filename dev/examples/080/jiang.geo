di=0.2;
do=1.;
t=0.05;
Point(1)={0.0,0.0,0.0};
Point(2)={di/2,0.0,0.0};
Point(3)={-di/2,0.0,0.0};
Point(4)={0.0,di/2,0.0};
Point(5)={0.0,-di/2,0.0};
Point(6)={do/2,0.0,0.0};
Point(7)={-do/2,0.0,0.0};
Point(8)={0.0,do/2,0.0};
Point(9)={0.0,-do/2,0.0};//+
Line(1) = {2, 6};
//+
Line(2) = {4, 8};
//+
Line(3) = {3, 7};
//+
Line(4) = {5, 9};
//+
Circle(5) = {2, 1, 4};
//+
Circle(6) = {4, 1, 3};
//+
Circle(7) = {3, 1, 5};
//+
Circle(8) = {5, 1, 2};
//+
Circle(9) = {6, 1, 8};
//+
Circle(10) = {8, 1, 7};
//+
Circle(11) = {7, 1, 9};
//+
Circle(12) = {9, 1, 6};
//+
Curve Loop(1) = {1, 9, -2, -5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, -3, -6, 2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {11, -4, -7, 3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 12, -1, -8};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {9, 10, 11, 12} = 37 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8} = 37 Using Progression 1;
//+
Transfinite Curve {2, 3, 4, 1} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {4, 2, 6, 8};
//+
Transfinite Surface {2} = {3, 4, 8, 7};
//+
Transfinite Surface {3} = {5, 3, 7, 9};
//+
Transfinite Surface {4} = {2, 5, 9, 6};
//+
Recombine Surface {1, 4, 2, 3};
//+
Extrude {0, 0, t} {
  Surface{1}; Surface{4}; Surface{2}; Surface{3}; Layers {4}; Recombine;
}
//+
Physical Volume("DISC", 101) = {2, 1, 4, 3};
