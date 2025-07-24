a=50.;
b=50.;
c1=5.0;
c2=2.5;
Point(1)={-a/2,-b/2,-c1/2};
Point(2)={ a/2,-b/2,-c1/2};
Point(3)={ a/2, b/2,-c1/2};
Point(4)={-a/2, b/2,-c1/2};
Point(5)={-c2/2,-b/2,c1/2+0.0};
Point(6)={-c2/2, b/2,c1/2+0.0};
Point(7)={ c2/2,-b/2,c1/2+0.0};
Point(8)={ c2/2, b/2,c1/2+0.0};

//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 2, 3, 4} = 41 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};

//+
Line(5) = {5, 7};
//+
Line(6) = {7, 8};
//+
Line(7) = {8, 6};
//+
Line(8) = {6, 5};
//+
Curve Loop(2) = {6, 7, 8, 5};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {8, 6} = 41 Using Progression 1;
//+
Transfinite Curve {5, 7} = 3 Using Progression 1;
//+
Transfinite Surface {2} = {5, 7, 8, 6};
//+
Recombine Surface {2};
//+
Extrude {0, 0, c1} {
  Surface{1}; Layers {4}; Recombine;
}
//+
Extrude {0, 0, 50} {
  Surface{2}; Layers {40}; Recombine;
}
//+
Physical Volume("BASE_PLATE", 53) = {1};
//+
Physical Volume("VERTICAL_PLATE", 54) = {2};
