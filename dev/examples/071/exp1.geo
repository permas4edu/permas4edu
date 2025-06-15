R1=95.5;
h1=3.5;
hTE=10.;
L1=147.;
L2=158.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,R1,0.0};
Point(3)={L1,R1,0.0};
Point(4)={L1+L2,R1,0.0};
Point(5)={L1+L2,R1+h1,0.0};
Point(6)={L1+L2,R1+h1+hTE,0.0};
Point(7)={L1,R1+h1+hTE,0.0};
Point(8)={L1,R1+h1,0.0};
Point(9)={0.0,R1+h1,0.0};
//+
Line(1) = {2, 3};
//+
Line(2) = {3, 8};
//+
Line(3) = {8, 9};
//+
Line(4) = {9, 2};
//+
Line(5) = {3, 4};
//+
Line(6) = {4, 5};
//+
Line(7) = {5, 8};
//+
Line(8) = {5, 6};
//+
Line(9) = {6, 7};
//+
Line(10) = {7, 8};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(3) = {10, -7, 8, 9};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {1, 3} = 16 Using Progression 1;
//+
Transfinite Curve {5, 7, 9} = 17 Using Progression 1;
//+
Transfinite Curve {10, 8} = 4 Using Progression 1;
//+
Transfinite Curve {6, 2, 4} = 4 Using Progression 1;
//+
Transfinite Surface {3} = {8, 5, 6, 7};
//+
Transfinite Surface {1} = {2, 3, 8, 9};
//+
//+
Curve Loop(4) = {5, 6, 7, -2};
//+
Plane Surface(4) = {4};
//+
Transfinite Surface {4} = {3, 4, 5, 8};
//+
Recombine Surface {1, 3, 4};
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{1}; Surface{3}; Surface{4}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{54}; Surface{76}; Surface{32}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{98}; Surface{120}; Surface{142}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{164}; Surface{186}; Surface{208}; Layers{18}; Recombine;
}
//+
Physical Volume("STEPPED:CYLINDER", 272) = {12, 9, 1, 10, 11, 6, 7, 8, 3, 2, 5, 4};
