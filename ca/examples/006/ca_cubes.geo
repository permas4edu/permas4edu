a=10.;
Point(1)={0.,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,a,0.0};
Point(4)={0.,a,0.0};
Point(5)={0.,0.0,2*a+0.1};
Point(6)={a,0.0,2*a+0.1};
Point(7)={a,a,2*a+0.1};
Point(8)={0.,a,2*a+0.1};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 5};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 4, 2, 3} = 5 Using Progression 1;
//+
Transfinite Curve {5, 8, 6, 7} = 8 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Surface {2} = {5, 6, 7, 8};
//+
Recombine Surface {2, 1};
//+
Extrude {0, 0, a} {
  Surface{1}; Layers {4}; Recombine;
}
//+
Extrude {0, 0, -a} {
  Surface{2}; Layers {7}; Recombine;
}
//+
Physical Volume("UPPER", 52) = {2};
//+
Physical Volume("LOWER", 53) = {1};
