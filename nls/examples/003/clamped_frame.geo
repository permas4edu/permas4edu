L=0.1;
h=0.01;
t=0.01;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,L-h,0.0};
Point(3)={0.0,L,0.0};
Point(4)={h,L,0.0};
Point(5)={L,L,0.0};
Point(6)={L,L-h,0.0};
Point(7)={h,L-h,0.0};
Point(8)={h,0.0,0.0};

//+
Line(1) = {1, 2};
//+
Line(2) = {2, 7};
//+
Line(3) = {7, 8};
//+
Line(4) = {8, 1};
//+
Line(5) = {2, 3};
//+
Line(6) = {3, 4};
//+
Line(7) = {4, 7};
//+
Line(8) = {4, 5};
//+
Line(9) = {5, 6};
//+
Line(10) = {6, 7};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -7, 8, 9};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {4, 2, 6, 9, 7, 5} = 7 Using Progression 1;
//+
Transfinite Curve {1, 3, 10, 8} = 46 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 7, 8};
//+
Transfinite Surface {2} = {2, 3, 4, 7};
//+
Transfinite Surface {3} = {4, 5, 6, 7};
//+
Recombine Surface {1, 2, 3};
//+
Extrude {0, 0, t} {
  Surface{3}; Surface{2}; Surface{1}; Layers {6}; Recombine;
}
//+
Physical Volume("FRAME", 77) = {1, 2, 3};
