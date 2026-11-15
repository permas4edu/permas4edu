Lx=0.17;
Ly=0.15;
Lz=0.31;
Point(1)={0.0,0.0,0.0};
Point(2)={Lx,0.0,0.0};
Point(3)={Lx,Ly,0.0};
Point(4)={0.0,Ly,0.0};
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
Transfinite Curve {1, 3} = 18 Using Progression 1;
//+
Transfinite Curve {4, 2} = 16 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Physical Surface("FSINTA", 5) = {1};
//+
Recombine Surface {1};
Extrude {0, 0, 0.31} {
  Surface{1}; Layers {31}; Recombine;
}
Physical Volume("CAVITY", 28) = {1};