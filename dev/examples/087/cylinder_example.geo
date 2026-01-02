R=0.5;
L=12.;
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
Transfinite Curve {2, 3, 1, 4} = 7 Using Progression 1;
Extrude {0, 0, L/4} {
  Curve{3}; Curve{2}; Curve{4}; Curve{1}; Layers {24}; Recombine;
}
//+
Extrude {0, 0, L/4} {
  Curve{9}; Curve{17}; Curve{5}; Curve{13}; Layers {24}; Recombine;
}
//+
Extrude {0, 0, L/4} {
  Curve{21}; Curve{29}; Curve{33}; Curve{25}; Layers {24}; Recombine;
}
//+
Extrude {0, 0, L/4} {
  Curve{49}; Curve{37}; Curve{41}; Curve{45}; Layers {24}; Recombine;
}
//+
Physical Surface("OMEGA_1", 69) = {8, 12, 16, 20};
//+
Physical Surface("OMEGA_2", 70) = {32, 24, 36, 28};
//+
Physical Surface("OMEGA_3", 71) = {44, 40, 48, 52};
//+
Physical Surface("OMEGA_4", 72) = {64, 60, 68, 56};
