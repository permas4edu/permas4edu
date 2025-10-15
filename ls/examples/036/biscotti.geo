a=960.;
h=460.;
L=3000.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,a,0.0};
Point(3)={0.0,a,h};
Point(4)={0.0,0.0,h};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Transfinite Curve {1, 3} = 7 Using Progression 1;
//+
Transfinite Curve {2, 4} = 4 Using Progression 1;
//+
Extrude {L, 0, 0} {
  Curve{2}; Curve{3}; Curve{1}; Curve{4}; Layers {18}; Recombine;
}
//+
Physical Surface("WINGBOX", 21) = {8, 12, 16, 20};
