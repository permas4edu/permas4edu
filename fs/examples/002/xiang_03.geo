L1=1.75;
L2=2.5;
L = 5.0;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L2,0.0,0.0};
Point(4)={0.0,L1,0.0};
Point(5)={0.0,L2,0.0};


//+
Line(1) = {2, 3};
//+
Line(2) = {4, 5};
//+
Circle(3) = {2, 1, 4};
//+
Circle(4) = {3, 1, 5};
//+
Curve Loop(1) = {3, 2, -4, -1};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {3, 4} = 37 Using Progression 1;
//+
Transfinite Curve {1, 2} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {4, 2, 3, 5};
//+
Recombine Surface {1};
//+
Extrude {0, 0, L} {
  Surface{1}; Layers {35}; Recombine;
}
//+
Physical Volume("CAVITY", 27) = {1};
