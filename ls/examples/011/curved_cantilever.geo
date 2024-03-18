r = 12.;
h = 1.2; // 0.12 0.012
r_i=r-h/2;
r_o=r_i+h;
w=1.;
Point(1)={r_i,0.0,0.0}; 
Point(2)={0.0,r_i,0.0}; 
Point(3)={r_o,0.0,0.0}; 
Point(4)={0.0,r_o,0.0}; 
Point(5)={r_i*Cos(45*Pi/180),r_i*Sin(45*Pi/180),0.0};
Point(6)={r_o*Cos(45*Pi/180),r_o*Sin(45*Pi/180),0.0};
Point(7)={0.0,0.0,0.0};
//+
Circle(1) = {1, 7, 5};
//+
Circle(2) = {5, 7, 2};
//+
Circle(3) = {3, 7, 6};
//+
Circle(4) = {6, 7, 4};
//+
Line(5) = {2, 4};
//+
Line(6) = {5, 6};
//+
Line(7) = {1, 3};
//+
Curve Loop(1) = {1, 6, -3, -7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 5, -4, -6};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 2} = 65 Using Progression 1;
//+
Transfinite Curve {3, 4} = 65 Using Progression 1;
//+
Transfinite Curve {5, 6, 7} = 5 Using Progression 1;
//+
Transfinite Surface {1} = {5, 1, 3, 6};
//+
Transfinite Surface {2} = {2, 5, 6, 4};
//+
Recombine Surface {2, 1};
//+
Extrude {0, 0, w} {
  Surface{2}; Surface{1}; Layers {4}; Recombine;
}
//+
Physical Volume("BEAM", 52) = {1, 2};
