r1=30.;
r2=60.;
t=20.;
Point(1)={0.0,0.0,0.0};
Point(2)={-r1,0.0,0.0};
Point(3)={-r2,0.0,0.0};
Point(4)={0.0,r1,0.0};
Point(5)={0.0,r2,0.0};
//+
Circle(1) = {4, 1, 2};
//+
Circle(2) = {5, 1, 3};
//+
Line(3) = {2, 3};
//+
Line(4) = {4, 5};
//+
Transfinite Curve {2, 1} = 71 Using Progression 1;
//+
Transfinite Curve {4, 3} = 20 Using Progression 1;
//+
Curve Loop(1) = {2, -3, -1, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Surface {1} = {4, 5, 3, 2};
//+
Recombine Surface {1};
//+
Extrude {0, 0, t} {
  Surface{1}; Layers {10}; Recombine;
}
//+
Physical Volume("DESIGN", 27) = {1};
