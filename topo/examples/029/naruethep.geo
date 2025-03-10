a=10.;
Point(1)={-a/2,-a/2,0.0};
Point(2)={ a/2,-a/2,0.0};
Point(3)={ a/2, a/2,0.0};
Point(4)={-a/2, a/2,0.0};
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
Transfinite Curve {1, 2, 3, 4} = 21 Using Progression 1;
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+

//+
Extrude {0, 0, a} {
  Surface{1}; Layers {20}; Recombine;
}
//+
Physical Volume("CUBE", 27) = {1};
