// Inner cylinder
Hi=31.3;
Roi=6.0;
ti=0.25;
// Outer cylinder
Ho=28.8;
Roo=9.0;
to=0.25;
Point(1)={0.0,0.0,0.0};
Point(2)={Roi,0.0,0.0};
Point(3)={0.0,Roi,0.0};
Point(4)={-Roi,0.0,0.0};
Point(5)={0.0,-Roi,0.0};
//
Point(6)={Roo,0.0,0.0};
Point(7)={0.0,Roo,0.0};
Point(8)={-Roo,0.0,0.0};
Point(9)={0.0,-Roo,0.0};
//
Point(10)={Roi-ti,0.0,0.0};
Point(11)={0.0,Roi-ti,0.0};
Point(12)={-Roi+ti,0.0,0.0};
Point(13)={0.0,-Roi+ti,0.0};
//
Point(14)={Roo-to,0.0,0.0};
Point(15)={0.0,Roo-to,0.0};
Point(16)={-Roo+to,0.0,0.0};
Point(17)={0.0,-Roo+to,0.0};
//+
Circle(1) = {10, 1, 11};
//+
Circle(2) = {11, 1, 12};
//+
Circle(3) = {12, 1, 13};
//+
Circle(4) = {13, 1, 10};
//+
Circle(5) = {2, 1, 3};
//+
Circle(6) = {3, 1, 4};
//+
Circle(7) = {4, 1, 5};
//+
Circle(8) = {5, 1, 2};
//+
Circle(9) = {14, 1, 15};
//+
Circle(10) = {15, 1, 16};
//+
Circle(11) = {16, 1, 17};
//+
Circle(12) = {17, 1, 14};
//+
Circle(13) = {6, 1, 7};
//+
Circle(14) = {7, 1, 8};
//+
Circle(15) = {8, 1, 9};
//+
Circle(16) = {9, 1, 6};
//+
Line(17) = {10, 2};
//+
Line(18) = {14, 6};
//+
Line(19) = {11, 3};
//+
Line(20) = {15, 7};
//+
Line(21) = {12, 4};
//+
Line(22) = {16, 8};
//+
Line(23) = {13, 5};
//+
Line(24) = {17, 9};
//+
Curve Loop(1) = {1, 19, -5, -17};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 21, -6, -19};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, -23, -3, 21};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 17, -8, -23};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {9, 20, -13, -18};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {10, 22, -14, -20};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {15, -24, -11, 22};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {12, 18, -16, -24};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {1, 2, 3, 4} = 19 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8} = 19 Using Progression 1;
//+
Transfinite Curve {9, 10, 11, 12} = 19 Using Progression 1;
//+
Transfinite Curve {13, 14, 15, 16} = 19 Using Progression 1;
//+
Transfinite Curve {17, 19, 21, 23} = 4 Using Progression 1;
//+
Transfinite Curve {18, 20, 22, 24} = 4 Using Progression 1;
//+
Transfinite Surface {1} = {10, 2, 3, 11};
//+
Transfinite Surface {2} = {3, 11, 4, 12};
//+
Transfinite Surface {3} = {12, 4, 5, 13};
//+
Transfinite Surface {4} = {13, 5, 2, 10};
//+
Transfinite Surface {5} = {14, 6, 7, 15};
//+
Transfinite Surface {6} = {7, 15, 16, 8};
//+
Transfinite Surface {7} = {16, 8, 9, 17};
//+
Transfinite Surface {8} = {17, 9, 6, 14};
//+
Recombine Surface {6, 2, 7, 3, 1, 4, 5, 8};
//+
Extrude {0, 0, Ho} {
  Surface{5}; Surface{6}; Surface{7}; Surface{8}; Layers {22}; Recombine;
}
//+
Extrude {0, 0, Ho} {
  Surface{2}; Surface{1}; Surface{4}; Surface{3}; Layers {22}; Recombine;
}
//+
Extrude {0, 0, 2.5} {
  Surface{134}; Surface{156}; Surface{200}; Surface{178}; Layers {2}; Recombine;
}
//+
Physical Volume("INNER_CYLINDER", 289) = {8, 11, 7, 12, 6, 10, 9, 5};
//+
Physical Volume("OUTER_CYLINDER", 290) = {3, 2, 1, 4};
//+
Line(271) = {16, 4};
//+
Line(272) = {5, 17};
//+
Line(273) = {2, 14};
//+
Line(274) = {15, 3};
//+
Line(275) = {32, 50};
//+
Line(276) = {67, 18};
//+
Line(277) = {43, 79};
//+
Line(278) = {55, 20};
//+
Transfinite Curve {271, 272, 273, 274, 275, 277, 276, 278} = 4 Using Progression 1;
//+
Extrude {0, 0.5, 0} {
  Curve{271}; Curve{273}; Curve{276}; Curve{275}; Layers {1}; Recombine;
}
//+
Extrude {0, -0.5, 0} {
  Curve{271}; Curve{273}; Curve{276}; Curve{275}; Layers {1}; Recombine;
}
//+
Extrude {0.5, 0.0, 0} {
  Curve{278}; Curve{277}; Curve{274}; Curve{272}; Layers {1}; Recombine;
}
//+
Extrude {-0.5, 0.0, 0} {
  Curve{272}; Curve{274}; Curve{278}; Curve{277}; Layers {1}; Recombine;
}
//+
Extrude {0.0, 0.0, 1.0} {
  Surface{342}; Surface{338}; Surface{346}; Surface{334}; Layers {2}; Recombine;
}
//+
Extrude {0.0, 0.0, -1.0} {
  Surface{350}; Surface{326}; Surface{354}; Surface{330}; Layers {2}; Recombine;
}
//+
Extrude {0.0, 0.0, -1.0} {
  Surface{306}; Surface{322}; Surface{302}; Surface{318}; Layers {2}; Recombine;
}
//+
Extrude {0.0, 0.0, 1.0} {
  Surface{294}; Surface{310}; Surface{298}; Surface{314}; Layers {2}; Recombine;
}
//+
Physical Volume("INTERNAL_BLOCKS", 707) = {13, 14, 26, 25, 28, 27, 16, 15, 17, 18, 21, 22, 24, 23, 19, 20};
