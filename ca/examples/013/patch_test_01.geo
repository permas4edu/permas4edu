a=0.1;
b=0.1;
c=0.1;
eps=0.001;
Point(1)={-a/2,-b/2,0.0};
Point(2)={ a/2,-b/2,0.0};
Point(3)={ a/2, b/2,0.0};
Point(4)={-a/2, b/2,0.0};
Point(5)={-a/2,-b/2,2*c+eps};
Point(6)={ a/2,-b/2,2*c+eps};
Point(7)={ a/2, b/2,2*c+eps};
Point(8)={-a/2, b/2,2*c+eps};//+
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
Curve Loop(1) = {3, 4, 1, 2};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(1) = {1};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 4, 2, 3} = 13 Using Progression 1;
//+
Transfinite Curve {5, 8, 6, 7} = 16 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Surface {2} = {5, 6, 7, 8};
//+
Recombine Surface {2, 1};
//+
Extrude {0, 0, c} {
  Surface{1}; Layers {12}; Recombine;
}
//+
Extrude {0, 0, -c} {
  Surface{2}; Layers {15}; Recombine;
}
//+
Physical Volume("LOWER", 53) = {1};
//+
Physical Volume("UPPER", 54) = {2};
