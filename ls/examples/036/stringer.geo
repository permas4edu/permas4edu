a=30.05;
h=45.2;
L=1100.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,a,0.0};
Point(3)={0.0,a,h};
Point(4)={0.0,0.0,h};
//+
Line(1) = {1, 2};
//+
Line(2) = {1, 4};
//+
Line(3) = {4, 3};
//+
Transfinite Curve {3, 1} = 4 Using Progression 1;
//+
Transfinite Curve {2} = 5 Using Progression 1;
//+
Extrude {L, 0, 0} {
  Curve{3}; Curve{1}; Curve{2}; Layers {55}; Recombine;
}
//+
Physical Surface("STRINGER", 16) = {7, 11, 15};
