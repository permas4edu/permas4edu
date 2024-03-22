L1=1.75;
L2=2.5;
L = 5.0;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L2,0.0,0.0};
Point(4)={-L1,0.0,0.0};
Point(5)={-L2,0.0,0.0};
Point(6)={0.0,L1,0.0};
Point(7)={0.0,L2,0.0};
Point(8)={0.0,-L1,0.0};
Point(9)={0.0,-L2,0.0};//+
Line(1) = {2, 3};
//+
Line(2) = {6, 7};
//+
Line(3) = {4, 5};
//+
Line(4) = {8, 9};
//+
Circle(5) = {2, 1, 6};
//+
Circle(6) = {3, 1, 7};
//+
Circle(7) = {6, 1, 4};
//+
Circle(8) = {7, 1, 5};
//+
Circle(9) = {4, 1, 8};
//+
Circle(10) = {5, 1, 9};
//+
Circle(11) = {8, 1, 2};
//+
Circle(12) = {9, 1, 3};
//+
Curve Loop(1) = {5, 2, -6, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, -3, -7, 2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 10, -4, -9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, 1, -12, -4};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {1, 2, 3, 4} = 8 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8, 9, 10, 11, 12} = 19 Using Progression 1;
//+
Transfinite Surface {1} = {6, 2, 3, 7};
//+
Transfinite Surface {2} = {6, 7, 5, 4};
//+
Transfinite Surface {3} = {4, 5, 9, 8};
//+
Transfinite Surface {4} = {8, 9, 3, 2};
//+
Recombine Surface {1, 2, 3, 4};
//+
Extrude {0, 0, 5} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Layers {25}; Recombine;
}
//+
Physical Volume(101) = {1, 2, 3, 4};
