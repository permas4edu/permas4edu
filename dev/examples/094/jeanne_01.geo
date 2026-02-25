L=100.;
w=70.;
h=22.5;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={L,w,0.0};
Point(4)={0.0,w,0.0};
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
Transfinite Curve {1, 3} = 6 Using Progression 1;
//+
Transfinite Curve {2, 4} = 5 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {0, 0, h} {
  Surface{1}; Layers {2}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
