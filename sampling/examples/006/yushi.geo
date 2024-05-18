a1=40.;
a2=a1/4;
b1=a1;
b2=a2;
h=0.2*a1;
Point(1)={0.0,0.0,0.0};
Point(2)={a1,0.0,0.0};
Point(3)={a1+a2,0.0,0.0};
Point(4)={a1+a2,b1,0.0};
Point(5)={a1,b1,0.0};
Point(6)={a1,b1+b2,0.0};
Point(7)={0.0,b1+b2,0.0};
Point(8)={0.0,b1,0.0};
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
Curve Loop(2) = {9, -4, -3, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -7, -6, -5};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {1, 9, 10, 8, 6, 3} = 41 Using Progression 1;
//+
Transfinite Curve {2, 4, 5, 7} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 5, 8};
//+
Transfinite Surface {2} = {2, 3, 4, 5};
//+
Transfinite Surface {3} = {8, 5, 6, 7};
//+
Recombine Surface {1, 2, 3};
//+
Extrude {0, 0, h} {
  Surface{1}; Surface{2}; Surface{3}; Layers {4}; Recombine;
}
//+
Physical Volume("L_BEAM", 77) = {1, 2, 3};
