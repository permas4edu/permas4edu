ri=15.;
ro=150.;
Point(1)={0.0,0.0,0.0};
Point(2)={ri,0.0,0.0};
Point(3)={0.0,ri,0.0};
Point(4)={-ri,0.0,0.0};
Point(5)={0.0,-ri,0.0};
Point(6)={ro,0.0,0.0};
Point(7)={0.0,ro,0.0};
Point(8)={-ro,0.0,0.0};
Point(9)={0.0,-ro,0.0};//+
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
Line(9) = {2, 6};
//+
Line(10) = {3, 7};
//+
Line(11) = {4, 8};
//+
Line(12) = {5, 9};
//+
Transfinite Curve {9, 10, 11, 12} = 28 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8} = 21 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4} = 21 Using Progression 1;
//+
Curve Loop(1) = {9, 5, -10, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, -11, -2, 10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, -12, -3, 11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {12, 8, -9, -4};
//+
Plane Surface(4) = {4};
//+
Transfinite Surface {1} = {6, 7, 3, 2};
//+
Transfinite Surface {2} = {7, 8, 4, 3};
//+
Transfinite Surface {3} = {8, 9, 5, 4};
//+
Transfinite Surface {4} = {5, 9, 6, 2};
//+
Recombine Surface {1, 2, 3, 4};
//+
Extrude {0, 0, 2} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Layers {5}; Recombine;
}
//+
Physical Volume("DISK", 101) = {1, 2, 3, 4};
