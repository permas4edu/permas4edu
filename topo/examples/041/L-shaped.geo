x1=20.;
x2=60.;
y1=20.;
y2=60.;
Point(1)={0.0,0.0,0.0};
Point(2)={x1,0.0,0.0};
Point(3)={x2,0.0,0.0};
Point(4)={x2,y1,0.0};
Point(5)={x1,y1,0.0};
Point(6)={x1,y2,0.0};
Point(7)={0.0,y2,0.0};
Point(8)={0.0,y1,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 1};
//+
Line(9) = {2, 5};
//+
Line(10) = {5, 8};
//+
Curve Loop(1) = {8, 1, 9, 10};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, -9, 2, 3};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {5, 6, 7, -10};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {1, 8, 9, 3, 10, 6} = 11 Using Progression 1;
//+
Transfinite Curve {7, 5, 4, 2} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 5, 8};
//+
Transfinite Surface {2} = {2, 3, 4, 5};
//+
Transfinite Surface {3} = {8, 5, 6, 7};
//+
Recombine Surface {1, 2, 3};
//+
Extrude {0, 0, 10} {
  Point{5}; Point{8}; Point{2}; Point{1}; Curve{4}; Curve{5}; Curve{7}; Curve{10}; Curve{9}; Curve{2}; Curve{8}; Curve{1}; Surface{3}; Surface{2}; Surface{1}; Layers {5}; Recombine;
}
//+
Physical Volume("L_BEAM", 113) = {1, 3, 2};
