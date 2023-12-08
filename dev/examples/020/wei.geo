r=200.; // radius
h = 20.; // height and width
c=2;
Point(1)={0.0,0.0,0.0,c};
Point(2)={r-h/2,0.0,h/2,c};
Point(3)={r+h/2,0.0,h/2,c};
Point(4)={r-h/2,0.0,-h/2,c};
Point(5)={r+h/2,0.0,-h/2,c};
Line(1) = {2, 3};
Line(2) = {3, 5};
Line(3) = {5, 4};
Line(4) = {4, 2};
Curve Loop(1) = {1, 2, 3, 4};
Plane Surface(1) = {1};
Transfinite Surface {1} = {2, 3, 5, 4};
Recombine Surface {1};
Extrude {{0, 0, 1}, {0, 0, 0}, Pi} {
  Curve{1}; Curve{2}; Curve{3}; Curve{4}; Surface{1}; Layers{120}; Recombine;
}
Physical Volume(43) = {1};
