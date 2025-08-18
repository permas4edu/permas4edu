L=60.;
W=15.;
H=1.5;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={L,W,0.0};
Point(4)={0.0,W,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 61 Using Progression 1;
//+
Transfinite Curve {2, 4} = 16 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {0, 0, H} {
  Surface{1}; Layers {3}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
