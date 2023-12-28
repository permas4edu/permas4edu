ri=0.1;
ro=0.13;
t=0.02;
Point(1)={ri,0.0,0.0};
Point(2)={ro,0.0,0.0};
Point(3)={ri,0.0,t};
Point(4)={ro,0.0,t};//+
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
Extrude {{0, 0, 1}, {0, 0, 0}, Pi} {
  Surface{1}; Layers{20}; Recombine;
}
//+
Transfinite Curve {3, 1} = 4 Using Progression 1;
//+
Transfinite Curve {2, 4} = 3 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 4, 3};
//+
Physical Volume("A", 27) = {1};
//+
Extrude {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Surface{26}; Layers{10}; Recombine;
}
//+
Extrude {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Surface{49}; Layers{10}; Recombine;
}
//+
Physical Volume("B", 71) = {2};
//+
Recombine Surface {26, 36, 49};
//+
Recombine Surface {26, 49, 1};
//+
Physical Volume("C", 72) = {3};
