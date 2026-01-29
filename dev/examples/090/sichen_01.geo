w=1.;
h=0.5;
L=10*w;
Point(1)={0.0,-w/2,0.0};
Point(2)={L,-w/2,0.0};
Point(3)={0.0,w/2,0.0};
Point(4)={L, w/2,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 1};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 101 Using Progression 1;
Transfinite Curve {2, 4} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 4, 3};
//+

//+
Recombine Surface {1};
//+
Extrude {0, 0, h} {
  Surface{1}; Layers {5}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
