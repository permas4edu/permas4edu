b=150.;
h=300.;
t=10.;
Point(1)={0.0,0.0,0.0};
Point(2)={b-t,0.0,0.0};
Point(3)={b-t,h-t/2,0.0};
Point(4)={0.0,h-t/2,0.0};
//+
Line(1) = {1, 4};
//+
Line(2) = {4, 3};
//+
Line(3) = {3, 2};
//+
Transfinite Curve {2} = 29 Using Progression 1;
//+
Transfinite Curve {1, 3} = 60 Using Progression 1;
//+
Extrude {0, 0, 150} {
  Curve{1}; Curve{2}; Curve{3}; Layers {30}; Recombine;
}
//+
Physical Surface("BEAM", 16) = {7, 11, 15};
