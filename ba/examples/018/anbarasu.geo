d=58.;
b1=40.;
d1=10.;
L=622.3;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0, d/2,0.0};
Point(3)={0.0,-d/2,0.0};
Point(4)={b1, d/2,0.0};
Point(5)={b1,-d/2,0.0};
Point(6)={b1, d/2-d1,0.0};
Point(7)={b1,-d/2+d1,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 6};
//+
Line(4) = {1, 3};
//+
Line(5) = {3, 5};
//+
Line(6) = {5, 7};
//+
Transfinite Curve {5, 2} = 9 Using Progression 1;
//+
Transfinite Curve {1, 4} = 7 Using Progression 1;
//+
Transfinite Curve {6, 3} = 3 Using Progression 1;
//+
Extrude {0, 0, L} {
  Point{1}; Point{2}; Point{3}; Point{4}; Point{5}; Point{6}; Point{7}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Layers {124}; Recombine;
}
//+
Physical Surface("SPECIMEN", 38) = {25, 37, 21, 33, 17, 29};
