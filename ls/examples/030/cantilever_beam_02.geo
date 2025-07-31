a=2000.;
b=100.;
c=100.;
Point(1)={0.0,-b/2,-c/2};
Point(2)={0.0, b/2,-c/2};
Point(3)={0.0, b/2, c/2};
Point(4)={0.0,-b/2, c/2};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 2, 3, 4} = 6 Using Progression 1;
//+
Extrude {a, 0, 0} {
  Surface{1}; Layers {100}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
