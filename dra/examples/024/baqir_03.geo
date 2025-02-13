R=0.5;
L=12.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,R,0.0};
Point(3)={0.0,0.0,R};
Point(4)={0.0,-R,0.0};
Point(5)={0.0,0.0,-R};
//+
Circle(1) = {2, 1, 3};
//+
Circle(2) = {3, 1, 4};
//+
Circle(3) = {4, 1, 5};
//+
Circle(4) = {5, 1, 2};
//+
Transfinite Curve {1, 2, 3, 4} = 7 Using Progression 1;
//+
Extrude {L, 0, 0} {
  Point{4}; Point{3}; Point{1}; Point{5}; Point{2}; Curve{2}; Curve{3}; Curve{1}; Curve{4}; Layers {24}; Recombine;
}
//+
Physical Surface("CYLINDER", 26) = {13, 17, 21, 25};
