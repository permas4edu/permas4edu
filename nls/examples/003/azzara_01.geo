L=200.;
t=10.;
h=30.;
R=20.;
Point(1)={-t/2,0.0,-h/2};
Point(2)={ t/2,0.0,-h/2};
Point(3)={-t/2,L,-h/2};
Point(4)={ t/2,L,-h/2};
Point(5)={ t/2+R,L,-h/2};
Point(6)={ t/2+R,L+R,-h/2};
Point(7)={ t/2+R,L+R+t,-h/2};
Point(8)={L+t/2+R,L+R,-h/2};
Point(9)={L+t/2+R,L+R+t,-h/2};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 1};
//+
Line(5) = {6, 8};
//+
Line(6) = {8, 9};
//+
Line(7) = {9, 7};
//+
Line(8) = {7, 6};
//+
Circle(9) = {6, 5, 4};
//+
Circle(10) = {7, 5, 3};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {9, 3, -10, 8};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {5, 6, 7, 8};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {2, 4, 5, 7} = 81 Using Progression 1;
//+
Transfinite Curve {1, 3, 8, 6} = 5 Using Progression 1;
//+
Transfinite Curve {10, 9} = 17 Using Progression 1;
//+
Transfinite Surface {1} = {2, 4, 3, 1};
//+
Transfinite Surface {2} = {4, 6, 7, 3};
//+
Transfinite Surface {3} = {6, 8, 9, 7};
//+
Recombine Surface {1, 2, 3};
//+
Extrude {0, 0, h} {
  Surface{1}; Surface{3}; Surface{2}; Layers {12}; Recombine;
}
//+
Physical Volume("ANGLE_FRAME", 77) = {1, 2, 3};
