l=1.;
d=0.1;
h=0.3;
r=0.1;
Point(1)={0.0,0.0,0.0};
Point(2)={l/2,0.0,0.0};
Point(3)={l/2, r,0.0};
Point(4)={l/2,-r,0.0};
Point(5)={l/2-r,0.0,0.0};
Point(6)={l/2+r,0.0,0.0};
Point(7)={l/2, h/2,0.0};
Point(8)={l/2,-h/2,0.0};
Point(9)={0.0, h/2,0.0};
Point(10)={0.0, -h/2,0.0};
Point(11)={l/2+h/2, 0.0,0.0};
Point(12)={l/2-h/2,0.0,0.0};
Point(13)={l/2-h/2,h/2,0.0};
Point(14)={l/2-h/2,-h/2,0.0};
//+
Line(1) = {1, 9};
//+
Line(2) = {9, 13};
//+
Line(3) = {13, 12};
//+
Line(4) = {12, 1};
//+
Line(5) = {1, 10};
//+
Line(6) = {10, 14};
//+
Line(7) = {14, 12};
//+
Line(8) = {14, 8};
//+
Line(9) = {12, 5};
//+
Line(10) = {3, 7};
//+
Line(11) = {7, 13};
//+
Line(12) = {4, 8};
//+
Line(13) = {6, 11};
//+
Circle(14) = {11, 2, 7};
//+
Circle(15) = {6, 2, 3};
//+
Circle(16) = {3, 2, 5};
//+
Circle(17) = {5, 2, 4};
//+
Circle(18) = {4, 2, 6};
//+
Circle(19) = {8, 2, 11};
//+
Curve Loop(1) = {5, 6, 7, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 1, 2, 3};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 9, -16, 10, 11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {14, -10, -15, 13};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {18, 13, -19, -12};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {8, -12, -17, -9, -7};
//+
Plane Surface(6) = {6};
//+
Transfinite Curve {13, 10, 9, 12} = 6 Using Progression 1;
//+
Transfinite Curve {1, 3, 7, 5, 11, 8} = 16 Using Progression 1;
//+
//Transfinite Curve {2, 4, 6} = 36 Using Progression 1;
Transfinite Curve {2, 4, 6} = 18 Using Progression 1;
//+
Transfinite Curve {16, 15, 18, 17, 19, 14} = 31 Using Progression 1;
//+
Transfinite Surface {2} = {12, 13, 9, 1};
//+
Transfinite Surface {1} = {10, 14, 12, 1};
//+
Transfinite Surface {3} = {12, 5, 3, 7};
//+
Transfinite Surface {6} = {5, 12, 8, 4};
//+
Transfinite Surface {5} = {8, 11, 6, 4};
//+
Transfinite Surface {4} = {6, 11, 7, 3};
//+
Recombine Surface {2, 1, 6, 3, 4, 5};
//+
Extrude {0, 0, 0.1} {
  Surface{1}; Surface{2}; Surface{3}; Surface{6}; Surface{5}; Surface{4}; Layers {5}; Recombine;
}
//+
Physical Volume("ROD", 162) = {6, 5, 3, 4, 2, 1};
