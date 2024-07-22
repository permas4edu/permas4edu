a=90.;
b=30.;
c=30.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,b,0.0};
Point(3)={0.0,b,c};
Point(4)={0.0,0.0,c};

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
Transfinite Curve {1, 2, 3, 4} = 16 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {90, 0, 0} {
  Surface{1}; Layers {45}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
