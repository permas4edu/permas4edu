Point(1)={0.0,0.0,0.0};
Point(2)={48.0,44.0,0.0};
Point(3)={48.0,60.0,0.0};
Point(4)={0.0,44.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 33 Using Progression 1;
//+
Transfinite Curve {4, 2} = 33 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {0, 0, 1} {
  Surface{1}; Layers {4}; Recombine;
}
//+
Physical Volume("BEAM", 49) = {1};
