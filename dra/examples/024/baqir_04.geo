R1=0.13;
R2=0.1;
H=0.05;
Point(1)={0.0,0.0,0.0};
Point(2)={R1,0.0,0.0};
Point(3)={0.0,R1,0.0};
Point(4)={-R1,0.0,0.0};
Point(5)={0.0,-R1,0.0};
//
Point(6)={R2,0.0,0.0};
Point(7)={0.0,R2,0.0};
Point(8)={-R2,0.0,0.0};
Point(9)={0.0,-R2,0.0};
//+
Circle(1) = {2, 1, 3};
//+
Circle(2) = {3, 1, 4};
//+
Circle(3) = {4, 1, 5};
//+
Circle(4) = {5, 1, 2};
//+
Circle(5) = {6, 1, 7};
//+
Circle(6) = {7, 1, 8};
//+
Circle(7) = {8, 1, 9};
//+
Circle(8) = {9, 1, 6};
//+
Line(9) = {6, 2};
//+
Line(10) = {7, 3};
//+
Line(11) = {8, 4};
//+
Line(12) = {9, 5};
//+
Transfinite Curve {1, 2, 3, 4} = 11 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8} = 11 Using Progression 1;
//+
Transfinite Curve {9, 10, 11, 12} = 4 Using Progression 1;
//+
Curve Loop(1) = {5, 10, -1, -9};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, 11, -2, -10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, -12, -7, 11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {8, 9, -4, -12};
//+
Plane Surface(4) = {4};
//+
Transfinite Surface {1} = {6, 2, 3, 7};
//+
Transfinite Surface {2} = {7, 3, 4, 8};
//+
Transfinite Surface {3} = {8, 4, 5, 9};
//+
Transfinite Surface {4} = {9, 5, 2, 6};
//+
Recombine Surface {2, 1, 3, 4};
//+
Extrude {0, 0, H} {
  Surface{2}; Surface{1}; Surface{3}; Surface{4}; Layers {5}; Recombine;
}
//+
Physical Volume("RING", 101) = {2, 1, 4, 3};
