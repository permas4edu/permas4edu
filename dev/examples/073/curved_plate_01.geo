R=1.;
L=2.;
Point(1)={0.0,0.0,0.0};
Point(2)={R,0.0,0.0};
Point(3)={0.0,R,0.0};
//+
Circle(1) = {2, 1, 3};
//+
Transfinite Curve {1} = 61 Using Progression 1;
//+
Extrude {0, 0, L} {
  Curve{1}; Layers {81}; Recombine;
}
//+
Physical Surface("PLATE", 6) = {5};
