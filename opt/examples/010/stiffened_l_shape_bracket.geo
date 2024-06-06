L=100.;
R=30.;
Point(1)={0.0,0.0,0.0};
Point(2)={-R,0.0,0.0};
Point(3)={0.0,-R,0.0};
Point(4)={L,-R,0.0};
Point(5)={-R,L,0.0};
//+
Line(1) = {3, 4};
//+
Line(2) = {2, 5};
//+
//+
Circle(3) = {3, 1, 2};
//+
Transfinite Curve {2, 1} = 51 Using Progression 1;
//+
Transfinite Curve {3} = 22 Using Progression 1;
//+
Extrude {0, 0, 40} {
  Curve{2}; Curve{3}; Curve{1}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 40} {
  Curve{4}; Curve{8}; Curve{12}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 40} {
  Curve{16}; Curve{20}; Curve{24}; Layers {20}; Recombine;
}
//+
Extrude {10, 0, 0} {
  Curve{28}; Curve{16}; Curve{4}; Curve{2}; Layers {5}; Recombine;
}
//+
Extrude {0, 10, 0} {
  Curve{36}; Curve{24}; Curve{12}; Curve{1}; Layers {5}; Recombine;
}
//+
Circle(71) = {24, 21, 32};
//+
Circle(72) = {26, 15, 34};
//+
Circle(73) = {28, 9, 36};
//+
Circle(74) = {30, 1, 38};
//+
Curve Loop(1) = {71, -57, 32, 41};
//+
Plane Surface(72) = {1};
//+
Curve Loop(2) = {72, -61, 20, 45};
//+
Plane Surface(73) = {2};
//+
Curve Loop(3) = {73, -65, 8, 49};
//+
Plane Surface(74) = {3};
//+
Curve Loop(4) = {53, 74, -69, 3};
//+
Plane Surface(75) = {4};
//+
Transfinite Curve {71, 72, 73, 74} = 22 Using Progression 1;
//+
Transfinite Curve {41, 45, 49, 53, 57, 61, 65, 69} = 6 Using Progression 1;
//+
Transfinite Surface {72} = {18, 20, 32, 24};
//+
Transfinite Surface {73} = {12, 14, 34, 26};
//+
Transfinite Surface {74} = {6, 8, 36, 28};
//+
Transfinite Surface {75} = {2, 3, 38, 30};
//+
Recombine Surface {72, 73, 74, 75};
//+
Physical Surface("PANEL", 76) = {31, 19, 7, 11, 23, 35, 39, 27, 15};
//+
Physical Surface("STIFFENER", 77) = {55, 75, 71, 67, 74, 51, 47, 73, 63, 59, 72, 43};
