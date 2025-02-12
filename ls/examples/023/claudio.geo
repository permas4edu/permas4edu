re=500.;
ri=300.;
ro=400.;
t=90.;
h=200.;
Point(1)={0.0,0.0,-ro};
Point(2)={0.0,t/2,-h/2};
Point(3)={0.0,t/2, h/2};
Point(4)={0.0,-t/2,-h/2};
Point(5)={0.0,-t/2,h/2};
//+
Line(1) = {2, 4};
//+
Line(2) = {4, 5};
//+
Line(3) = {5, 3};
//+
Line(4) = {3, 2};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 5 Using Progression 1;
//+
Transfinite Curve {4, 2} = 7 Using Progression 1;
//+
Transfinite Surface {1} = {2, 4, 5, 3};
//+
Recombine Surface {1};
//+
Extrude {{0, 1, 0}, {0, 0, -400}, Pi/4} {
  Surface{1}; Layers{9}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, -400}, Pi/4} {
  Surface{26}; Layers{9}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, -400}, Pi/4} {
  Surface{48}; Layers{9}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, -400}, Pi/4} {
  Surface{70}; Layers{9}; Recombine;
}
//+
Physical Volume("BEAM", 93) = {4, 1, 3, 2};
