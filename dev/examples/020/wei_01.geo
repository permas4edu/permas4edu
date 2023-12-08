h=100.;
c=20.;
L1=2000.;
L2=500.;
Point(1)={0.0,-h/2,-h/2,c};
Point(2)={0.0,-h/2, h/2,c};
Point(3)={0.0, h/2,-h/2,c};
Point(4)={0.0, h/2, h/2,c};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 1};
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};
//+
Transfinite Surface {1} = {2, 1, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {L1, 0, 0} {
  Surface{1}; Layers {Round(L1/c)}; Recombine;
}
//+
Physical Volume("BEAM",27) = {1};
