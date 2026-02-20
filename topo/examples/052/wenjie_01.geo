a=12.;
b=50.;
c=12.;
r=5.;
Point(1)={-a/2,0.0,-c/2};
Point(2)={ a/2,0.0,-c/2};
Point(3)={ a/2,0.0, c/2};
Point(4)={-a/2,0.0, c/2};
Point(5)={ a/2,b,c/2};
Point(6)={ a/2,b,c/2+r};
Point(7)={ a/2,b-r,c/2+r};
Point(8)={ a/2,b-r*Cos(45*Pi/180),c/2+r-r*Sin(45*Pi/180)};
Point(9)={ a/2,b-0.4*r,c/2+r};
Point(10)={ a/2,b,c/2+r-0.4*r};
Point(11)={ a/2,b-0.4*r,c/2+r-0.4*r};//+
Line(1) = {2, 1};
//+
Line(2) = {1, 4};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 2};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Line(5) = {6, 9};
//+
Line(6) = {9, 7};
//+
Line(7) = {6, 10};
//+
Line(8) = {10, 5};
//+
Line(9) = {11, 8};
//+
Line(10) = {11, 10};
//+
Line(11) = {11, 9};
//+
Circle(12) = {7, 6, 8};
//+
Circle(13) = {8, 6, 5};
//+
Curve Loop(2) = {12, -9, 11, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, -10, 11, -5};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {8, -13, -9, 10};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {3, 4, 1, 2} = 13 Using Progression 1;
//+
Transfinite Surface {1} = {2, 1, 4, 3};
//+
Recombine Surface {1};
//+
Extrude {0, b, 0} {
  Surface{1}; Layers {50}; Recombine;
}
//+
Transfinite Curve {12, 6, 9, 8, 13, 10, 11, 5, 7} = 9 Using Progression 1;
//+
Transfinite Surface {2} = {7, 8, 11, 9};
//+
Transfinite Surface {3} = {11, 10, 6, 9};
//+
Transfinite Surface {4} = {8, 5, 10, 11};
//+
Recombine Surface {2, 4, 3};

Extrude {-a, 0, 0} {
  Surface{2}; Surface{3}; Surface{4}; Layers {12}; Recombine;
}
//+

//+
Physical Volume("BEAM", 102) = {1};
//+
Physical Volume("BLOCK", 103) = {2, 3, 4};
