a=80;
b=50;
c=20;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
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
Transfinite Curve {1, 3} = 41 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Curve {2, 4} = 26 Using Progression 1;
//+
Recombine Surface {1};
//+
Extrude {0, 0, c} {
  Surface{1}; Layers {10}; Recombine;
}
//+
Physical Volume("BEAM", 27) = {1};
