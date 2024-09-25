a1=2.;
b1=1.;
a2=3.25;
b2=2.75;
Point(1)={0.0,0.0,0.0};
Point(2)={a1,0.0,0.0};
Point(3)={a2,0.0,0.0};
Point(4)={0.0,b1,0.0};
Point(5)={0.0,b2,0.0};
//+
//+
Ellipse(1) = {3, 1, 3, 5};
//+
Ellipse(2) = {2, 1, 2, 4};
//+
Line(3) = {4, 5};
//+
Line(4) = {2, 3};
//+
Curve Loop(1) = {2, 3, -1, -4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {3, 4} = 21 Using Progression 1;
//+
Transfinite Curve {2, 1} = 41 Using Progression 1;
//+
Transfinite Surface {1} = {4, 2, 3, 5};
//+
Recombine Surface {1};
//+
Extrude {0, 0, 0.6} {
  Surface{1}; Layers {10}; Recombine;
}
//+
Physical Volume("ELLIPTIC_PLATE", 27) = {1};
