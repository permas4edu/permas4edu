ri=3.;
ro=4.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,ri,0.0};
Point(3)={0.0,-ri,0.0};
Point(4)={0.0,ro,0.0};
Point(5)={0.0,-ro,0.0};
Point(6)={-ri,0.0,0.0};
Point(7)={-ro,0.0,0.0};
//+
Circle(1) = {2, 1, 6};
//+
Circle(2) = {4, 1, 7};
//+
Circle(3) = {7, 1, 5};
//+
Circle(4) = {6, 1, 3};
//+
Line(5) = {2, 4};
//+
Line(6) = {6, 7};
//+
Line(7) = {3, 5};
//+
Curve Loop(1) = {3, -7, -4, 6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 2, -6, -1};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {5, 6, 7} = 7 Using Progression 1;
//+
Transfinite Curve {2, 1, 3, 4} = 37 Using Progression 1;
//+
Transfinite Surface {2} = {7, 6, 2, 4};
//+
Transfinite Surface {1} = {6, 7, 5, 3};
//+
Recombine Surface {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{2}; Surface{1}; Layers {6}; Recombine;
}
//+
Physical Volume("RING", 52) = {1, 2};
