a1=40.;
b1=40.;
c1=20.;
a2=20.;
b2=20.;
c2=10.;
Point(1)={-a1/2,-b1/2,-c1/2};
Point(2)={ a1/2,-b1/2,-c1/2};
Point(3)={ a1/2, b1/2,-c1/2};
Point(4)={-a1/2, b1/2,-c1/2};
Point(5)={-a2/2,-b2/2, c1/2+c2};
Point(6)={ a2/2,-b2/2, c1/2+c2};
Point(7)={ a2/2, b2/2, c1/2+c2};
Point(8)={-a2/2, b2/2, c1/2+c2};
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
Transfinite Curve {2, 3, 1, 4} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {0, 0, c1} {
  Surface{1}; Layers {10}; Recombine;
}
//+
Line(21) = {5, 6};
//+
Line(22) = {6, 7};
//+
Line(23) = {7, 8};
//+
Line(24) = {8, 5};
//+
Curve Loop(2) = {24, 21, 22, 23};
//+
Plane Surface(27) = {2};
//+
Transfinite Curve {24, 21, 22, 23} = 11 Using Progression 1;
//+
Transfinite Surface {27} = {5, 6, 7, 8};
//+
Recombine Surface {27};
//+
Extrude {0, 0, -c2} {
  Surface{27}; Layers {5}; Recombine;
}
//+
Physical Volume("SLAVE_BLOCK", 50) = {1};
//+
Physical Volume("MASTER_BLOCK", 51) = {2};
