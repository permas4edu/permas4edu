W=50.;
H=50.;
a=10.;
b=5.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={0.0,b,0.0};
Point(4)={W,0.0,0.0};
Point(5)={W,H,0.0};
Point(6)={0.0,H,0.0};
Point(7)={a*Cos(45*Pi/180),b*Sin(45*Pi/180),0.0};
//+
Ellipse(1) = {2, 1, 3, 7};
//+
Ellipse(2) = {7, 1, 3, 3};
//+
Line(3) = {3, 6};
//+
Line(4) = {7, 5};
//+
Line(5) = {2, 4};
//+
Line(6) = {4, 5};
//+
Line(7) = {5, 6};
//+
Curve Loop(1) = {3, -7, -4, 2};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, -6, -5, 1};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {3, 4, 5} = 51 Using Progression 1;
//+
Transfinite Curve {7, 2} = 31 Using Progression 1;
//+
Transfinite Curve {6, 1} = 31 Using Progression 1;
//+
Transfinite Surface {1} = {7, 5, 6, 3};
//+
Transfinite Surface {2} = {7, 2, 4, 5};
//+
Recombine Surface {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1}; Surface{2}; Layers {4}; Recombine;
}
//+
Physical Volume("PLATE", 52) = {2, 1};
