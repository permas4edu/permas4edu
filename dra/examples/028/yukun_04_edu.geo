L=1.2;
a=1.2;
r=0.5;
b=0.86603;
Theta=120*Pi/180.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,r,0.0};
Point(3)={r*Cos(Pi/2+Theta),r*Sin(Pi/2+Theta),0.0};
Point(4)={r*Cos(Pi/2+2*Theta),r*Sin(Pi/2+2*Theta),0.0};
//+
Circle(1) = {4, 1, 2};
//+
Circle(2) = {2, 1, 3};
//+
Circle(3) = {3, 1, 4};
//+
Line(4) = {3, 4};
//+
Transfinite Curve {1, 2, 3} = 31 Using Progression 1;
//+
Transfinite Curve {4} = 27 Using Progression 1;
//+
Extrude {0, 0, 0.5} {
  Curve{1}; Curve{2}; Curve{3}; Curve{4}; Layers {10}; Recombine;
}
//+
Extrude {0, 0, -0.5} {
  Curve{2}; Curve{3}; Curve{4}; Curve{1}; Layers {10}; Recombine;
}
//+
Physical Surface("PLATE", 37) = {32, 20};
//+
Physical Surface("CYLINDER", 38) = {8, 36, 24, 12, 16, 28};
