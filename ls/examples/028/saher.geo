rm=0.5;
Point(1)={0.0,0.0,0.0};
Point(2)={rm,0.0,0.0};
Point(3)={0.0,rm,0.0};
Point(4)={-rm,0.0,0.0};
Point(5)={0.0,-rm,0.0};
//+
Circle(1) = {2, 1, 3};
//+
Circle(2) = {3, 1, 4};
//+
Circle(3) = {4, 1, 5};
//+
Circle(4) = {5, 1, 2};
//+
Transfinite Curve {1, 2, 3, 4} = 19 Using Progression 1;
//+
n=10;
Extrude {0, 0, 0.5} {
  Curve{3}; Curve{4}; Curve{1}; Curve{2}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{9}; Curve{5}; Curve{17}; Curve{13}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{29}; Curve{25}; Curve{33}; Curve{21}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{37}; Curve{45}; Curve{49}; Curve{41}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{53}; Curve{65}; Curve{57}; Curve{61}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{77}; Curve{69}; Curve{73}; Curve{81}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{85}; Curve{89}; Curve{93}; Curve{97}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{101}; Curve{105}; Curve{109}; Curve{113}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{117}; Curve{121}; Curve{125}; Curve{129}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{137}; Curve{141}; Curve{145}; Curve{133}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{153}; Curve{149}; Curve{161}; Curve{157}; Layers {n}; Recombine;
}
//+
Extrude {0, 0, 0.5} {
  Curve{165}; Curve{169}; Curve{173}; Curve{177}; Layers {n}; Recombine;
}
//+
Physical Surface("CYLINDER", 197) = {20, 32, 192, 176, 164, 136, 120, 104, 88, 80, 60, 40, 48, 36, 16, 188, 172, 152, 140, 124, 108, 92, 72, 56, 196, 180, 160, 184, 148, 168, 132, 156, 116, 144, 100, 128, 84, 112, 64, 96, 52, 76, 24, 68, 12, 44, 28, 8};
