a=200.;
w=100.;
c=20.;
Point(1)={0.0,0.0,0.0};
Point(2)={w,0.0,0.0};
Point(3)={w,c,0.0};
Point(4)={0.0,c,0.0};
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
Transfinite Curve {4, 2} = 5 Using Progression 1;
//+
Transfinite Curve {3, 1} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {0, 0, a} {
  Surface{1}; Layers {40}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
