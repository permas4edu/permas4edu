L1=10.;
W1=10.;
H1=10.;
L2=24.;
W2=10.;
H2=2.02;
L3=10.;
H3=5.0;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1,W1,0.0};
Point(4)={0.0,W1,0.0};
Point(5)={0.0,0.0,H1+H2};
Point(6)={L1+L2,0.0,H1+H2};
Point(7)={L1+L2,W1,H1+H2};
Point(8)={0.0,W1,H1+H2};
Point(9)={L1+L2,0.0,H1+H2+H3};
Point(10)={L1+L2,W1,H1+H2+H3};
Point(11)={L1+L2-L3,W1,H1+H2+H3};
Point(12)={L1+L2-L3,0.0,H1+H2+H3};
//+
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
Line(9) = {12, 9};
//+
Line(10) = {9, 10};
//+
Line(11) = {10, 11};
//+
Line(12) = {11, 12};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {12, 9, 10, 11};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {1, 4, 2, 3} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Curve {5, 7} = 35 Using Progression 1;
//+
Transfinite Curve {8, 6} = 11 Using Progression 1;
//+
Transfinite Curve {12, 10} = 11 Using Progression 1;
//+
Transfinite Curve {11, 9} = 11 Using Progression 1;
//+
Transfinite Surface {2} = {5, 6, 7, 8};
//+
Transfinite Surface {3} = {12, 9, 10, 11};
//+
Recombine Surface {2, 3, 1};
//+
Extrude {0, 0, H1} {
  Surface{1}; Layers {10}; Recombine;
}
//+
Extrude {0, 0, -H2} {
  Surface{2}; Layers {3}; Recombine;
}
//+
Extrude {0, 0, -H3} {
  Surface{3}; Layers {5}; Recombine;
}
//+
Physical Volume("PART_01", 79) = {1};
//+
Physical Volume("PART_02", 80) = {2};
//+
Physical Volume("PART_03", 81) = {3};
