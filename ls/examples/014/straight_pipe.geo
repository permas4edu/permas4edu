L=5.;
R=0.5;
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
Transfinite Curve {1, 2, 3, 4} = 19 Using Progression 1;
//+
Extrude {0, 0, L} {
  Curve{1}; Curve{2}; Curve{3}; Curve{4}; Layers {30}; Recombine;
}//+
Physical Surface("PIPE", 21) = {20, 16, 12, 8};
