a=12.5;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={2*a,0.0,0.0};
Point(4)={2*a,a,0.0};
Point(5)={a,a,0.0};
Point(6)={a,2*a,0.0};
Point(7)={0.0,2*a,0.0};
Point(8)={0.0,a,0.0};
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
Curve Loop(1) = {7, -10, 5, 6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, -9, 2, 3};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, 8, 1, 9};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {3, 10, 9, 8, 7, 6, 5, 4, 2, 1} = 26 Using Progression 1;
//+
Transfinite Surface {3} = {1, 2, 5, 8};
//+
Transfinite Surface {2} = {2, 3, 4, 5};
//+
Transfinite Surface {1} = {8, 5, 6, 7};
//+
Recombine Surface {1, 3, 2};
//+
Extrude {0, 0, 0.2} {
  Surface{1}; Surface{3}; Surface{2}; Layers {3}; Recombine;
}
//+
Physical Volume("L_BEAM", 77) = {3, 1, 2};
