SetOrder 2;
r1=3.;
r2=6.;
Point(1)={0.0,0.0,0.0};
Point(2)={r1,0.0,0.0};
Point(3)={0.0,r1,0.0};
Point(4)={r2,0.0,0.0};
Point(5)={0.0,r2,0.0};
//+
Line(1) = {2, 4};
//+
Line(2) = {3, 5};
//+
Circle(3) = {2, 1, 3};
//+
Circle(4) = {4, 1, 5};
//+
Curve Loop(1) = {3, 2, -4, -1};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 2} = 9 Using Progression 1;
//+
Transfinite Curve {3, 4} = 17 Using Progression 1;
//+
Transfinite Surface {1} = {2, 4, 5, 3};
//+
Recombine Surface {1};
//+
Extrude {0, 0, 0.5} {
  Surface{1}; Layers {1}; Recombine;
}//+
Physical Volume("CYLINDER", 27) = {1};
