b = 0.3;
c = 0.4;
Point(1)={0.0,-b/2,-c/2};
Point(2)={0.0, b/2,-c/2};
Point(3)={0.0, b/2, c/2};
Point(4)={0.0,-b/2, c/2};//+
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
Transfinite Curve {1, 3} = 6 Using Progression 1;
Transfinite Curve {4, 2} = 8 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {3.7, 0, 0} {
  Surface{1}; Layers {74}; Recombine;
}
//+
Extrude {0.3, 0, 0} {
  Surface{26}; Layers {6}; Recombine;
}
//+
Extrude {0, 3.7, 0} {
  Surface{47}; Layers {74}; Recombine;
}
//+
Physical Volume(93) = {3, 2, 1};
