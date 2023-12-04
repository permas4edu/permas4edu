L=500.;
W = 40.;
H = 60.;
Point(1)={-W/2,0.0,-H/2};
Point(2)={-W/2,0.0,+H/2};
Point(3)={-W/2,L,-H/2};
Point(4)={-W/2,L,+H/2};
//+
Line(1) = {1, 3};
//+
Line(2) = {3, 4};
//+
Line(3) = {4, 2};
//+
Line(4) = {2, 1};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 101 Using Progression 1;
//+
Transfinite Curve {4, 2} = 13 Using Progression 1;
//+
Transfinite Surface {1} = {1, 3, 4, 2};
//+
Recombine Surface {1};
//+
Extrude {40, 0, 0} {
  Surface{1}; Layers {8}; Recombine;
}
//+
Physical Volume(27) = {1};
