a=100.;
b=300.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,a,0.0};
Point(3)={0.0,a,a};
Point(4)={0.0,0.0,a};
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
Transfinite Curve {4, 1, 2, 3} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {100, 0, 0} {
  Surface{1}; Layers {10}; Recombine;
}
//+
Extrude {200, 0, 0} {
  Surface{26}; Layers {20}; Recombine;
}
//+
Extrude {0, 200, 0} {
  Surface{25}; Layers {20}; Recombine;
}
//+
Physical Volume("L_BEAM", 71) = {2, 3, 1};
