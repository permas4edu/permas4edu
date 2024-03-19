Lx=4.;
Ly=3.;
Lz=2.5;
c=343.;
P=2.;
fmax=100.;
h=c*P/(10*fmax);
Point(1)={0.0,0.0,0.0,h};
Point(2)={Lx,0.0,0.0,h};
Point(3)={Lx,Ly,0.0,h};
Point(4)={0.0,Ly,0.0,h};
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
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {0, 0, Lz} {
  Surface{1}; Layers {Lz/h}; Recombine;
}
//+
Physical Volume("ROOM", 27) = {1};
