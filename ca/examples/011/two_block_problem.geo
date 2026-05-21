a1=9.;
b1=4.;
c1=3.;
a2=1.;
b2=1.;
c2=1.;
Point(1)={-a1/2,-b1/2,0.0};
Point(2)={ a1/2,-b1/2,0.0};
Point(3)={ a1/2, b1/2,0.0};
Point(4)={-a1/2, b1/2,0.0};
//
Point(5)={-a1/2+1,-b2/2,c1};
Point(6)={-a1/2+1, b2/2,c1};
Point(7)={-a1/2+1+a2,-b2/2,c1};
Point(8)={-a1/2+1+a2, b2/2,c1};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {5, 7};
//+
Line(6) = {7, 8};
//+
Line(7) = {8, 6};
//+
Line(8) = {6, 5};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 3} = 41 Using Progression 1;
//+
Transfinite Curve {4, 2} = 13 Using Progression 1;
//+
Transfinite Curve {5, 8, 6, 7} = 9 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Surface {2} = {5, 7, 8, 6};
//+
Recombine Surface {1, 2};
//+
Extrude {0, 0, c2} {
  Surface{2}; Layers {8}; Recombine;
}
//+
Extrude {0, 0, c1} {
  Surface{1}; Layers {6}; Recombine;
}
//+
Physical Volume("LARGE_BLOCK", 53) = {2};
//+
Physical Volume("SMALL_BLOCK", 54) = {1};
