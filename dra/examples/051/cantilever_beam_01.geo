L=210.;
h=30.;
s=2.;
Point(1)={-h/2,0.0,0.0};
Point(2)={ h/2,0.0,0.0};
Point(3)={ h/2,L,0.0};
Point(4)={-h/2,L,0.0};
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
Transfinite Curve {4, 2} = 106 Using Progression 1;
//+
Transfinite Curve {1, 3} = 16 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
//+
Extrude {0, 0, s} {
  Surface{1}; Layers {3}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
