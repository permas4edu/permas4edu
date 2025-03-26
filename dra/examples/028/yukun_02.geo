r_1=0.65;
r_2=0.5;
Theta=Pi/2;
L_1=1.;
L_2=2.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,0.0,r_1};
Point(3)={0.0, r_1*Sin(Theta/2),r_1*Cos(Theta/2)};
Point(4)={0.0,-r_1*Sin(Theta/2),r_1*Cos(Theta/2)};
Point(5)={0.0,0.0,r_2};
Point(6)={0.0, r_2*Sin(Theta/2),r_2*Cos(Theta/2)};
Point(7)={0.0,-r_2*Sin(Theta/2),r_2*Cos(Theta/2)};
//+
Circle(1) = {3, 1, 2};
//+
Circle(2) = {2, 1, 4};

Circle(3) = {6, 1, 5};
//+
Circle(4) = {5, 1, 7};
//+
Transfinite Curve {4, 3} = 26 Using Progression 1;
//+
Transfinite Curve {2, 1} = 26 Using Progression 1;
//+
Extrude {0.5, 0, 0} {
  Curve{4}; Curve{3}; Layers {25}; Recombine;
}
//+
Extrude {0.5, 0, 0} {
  Curve{2}; Curve{1}; Layers {25}; Recombine;
}
//+
Extrude {-0.5, 0, 0} {
  Curve{4}; Curve{3}; Layers {25}; Recombine;
}
//+
Extrude {-0.5, 0, 0} {
  Curve{2}; Curve{1}; Layers {25}; Recombine;
}
//+
Physical Surface("LOWER", 37) = {28, 24, 12, 8};
//+
Physical Surface("UPPER", 38) = {20, 16, 36, 32};
