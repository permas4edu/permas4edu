R=101.6;
L=203.2;
Point(1)={0.0,0.0,0.0};
Point(2)={R,0.0,0.0};
Point(3)={0.0,R,0.0};
Point(4)={-R,0.0,0.0};
Point(5)={0.0,-R,0.0};
//+
Circle(1) = {2, 1, 3};
//+
Circle(2) = {3, 1, 4};
//+
Circle(3) = {4, 1, 5};
//+
Circle(4) = {5, 1, 2};
//+
Transfinite Curve {3, 2, 1, 4} = 33 Using Progression 1;
//+
Extrude {0, 0, L} {
  Curve{2}; Curve{3}; Curve{1}; Curve{4}; Layers {41}; Recombine;
}
//+
Physical Surface("CYLINDER", 21) = {16, 20, 8, 12};
