R=25;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,R,0.0};
Point(3)={R*Cos(50*Pi/180),R*Sin(50*Pi/180),0};
Point(4)={R*Cos(130*Pi/180),R*Sin(130*Pi/180),0};
//+
Circle(1) = {3, 1, 2};
//+
Circle(2) = {2, 1, 4};
//+
Transfinite Curve {1, 2} = 35 Using Progression 1;
//+
Extrude {0, 0, 25} {
  Curve{2}; Curve{1}; Layers {50}; Recombine;
}
//+
Extrude {0, 0, -25} {
  Curve{1}; Curve{2}; Layers {50}; Recombine;
}
//+
Physical Surface("SHELL", 19) = {10, 6, 14, 18};
