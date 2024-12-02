ri=10.;
ro=20.;
Point(1)={ri,0.0,0.0};
Point(3)={-ri,0.0,0.0};
Point(4)={0.0,0.0,0.0};
Point(5)={ro,0.0,0.0};
Point(7)={-ro,0.0,0.0};
//+
Circle(1) = {3, 4, 1};
//+
Circle(3) = {7, 4, 5};
//+
//+
Line(4) = {3, 7};
//+
Line(5) = {1, 5};
//+
Curve Loop(1) = {3, -5, -1, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {4, 5} = 8 Using Progression 1;
//+
Transfinite Curve {1, 3} = 32 Using Progression 1;
//+
Transfinite Surface {1} = {7, 3, 1, 5};
//+
Recombine Surface {1};
//+
Extrude {0, 0, 10} {
  Surface{1}; Layers {7}; Recombine;
}
//+
Point(20) = {-20, -20, 0, 1.0};
//+
Point(21) = { 20, -20, 0, 1.0};
Point(22) = {-20, -20, 10, 1.0};
Point(23) = { 20, -20, 10, 1.0};
//+
Line(22) = {20, 21};
//+
Line(23) = {21, 23};
//+
Line(24) = {23, 22};
//+
Line(25) = {22, 20};
//+
Curve Loop(2) = {24, 25, 22, 23};
//+
Plane Surface(28) = {2};
//+
Transfinite Curve {24, 22} = 2 Using Progression 1;
//+
Transfinite Curve {25, 23} = 2 Using Progression 1;
//+
Transfinite Surface {28} = {22, 23, 21, 20};
//+
Recombine Surface {28};
//+
Physical Volume("RING", 29) = {1};
//+
Physical Surface("GROUND", 30) = {28};
