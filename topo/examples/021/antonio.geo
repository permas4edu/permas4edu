L1=1.;
L2=1.;
L3=0.6;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.5*L2,0.0};
Point(3)={L1,L2,0.0};
Point(4)={0.0,0.5*L2,0.0};
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
MeshSize {1, 2, 3, 4} = 0.03;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {0, 0, L3} {
  Surface{1}; Layers {20}; Recombine;
}
//+
Physical Volume("DESIGN", 27) = {1};
