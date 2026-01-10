a=0.3048;
b=0.1524;
c=0.1524;
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
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 31 Using Progression 1;
//+
Transfinite Curve {2, 4} = 16 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Physical Surface("PANEL", 5) = {1};
//+
Extrude {0, 0, -c} {
  Surface{1}; Layers {15}; Recombine;
}
//+
Physical Volume("CAVITY", 28) = {1};
