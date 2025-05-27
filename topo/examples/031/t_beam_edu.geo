w=300.;
h=300.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,h,0.0};
Point(3)={-w/2,h,0.0};
Point(4)={ w/2,h,0.0};
//+
Line(1) = {3, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {1, 2};
//+
Transfinite Curve {1, 2} = 13 Using Progression 1;
//+
Transfinite Curve {3} = 25 Using Progression 1;
//+
Extrude {0, 0, 250.} {
  Curve{2}; Curve{3}; Curve{1}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 250.} {
  Curve{12}; Curve{4}; Curve{8}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 250.} {
  Curve{16}; Curve{20}; Curve{24}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 250.} {
  Curve{28}; Curve{32}; Curve{36}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 250.} {
  Curve{40}; Curve{44}; Curve{48}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 250.} {
  Curve{52}; Curve{56}; Curve{60}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 250.} {
  Curve{64}; Curve{68}; Curve{72}; Layers {20}; Recombine;
}
//+
Extrude {0, 0, 250.} {
  Curve{76}; Curve{80}; Curve{84}; Layers {20}; Recombine;
}
//+
Physical Surface("WEB", 100) = {99, 87, 75, 63, 51, 39, 27, 11};
//+
Physical Surface("FLANGE", 101) = {15, 19, 31, 43, 55, 67, 79, 91, 7, 23, 35, 47, 59, 71, 83, 95};
