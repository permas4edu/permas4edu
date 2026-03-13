r1i=0.1;
r1e=0.25;
r2i=0.25;
r2e=0.35;
r3i=0.35;
r3e=0.75;
r4i=0.75;
r4e=0.80;
h1i=0.05;
h1e=0.0435;
h2i=0.0435;
h2e=0.0435;
h3i=0.0435;
h3e=0.0570;
h4i=0.0570;
h4e=0.0570;
Point(1) ={r1i,-h1i/2,0.0};
Point(2) ={r1i, h1i/2,0.0};
Point(3) ={r2i,-h2i/2,0.0};
Point(4) ={r2i, h2i/2,0.0};
Point(5) ={r3i,-h3i/2,0.0};
Point(6) ={r3i, h3i/2,0.0};
Point(7) ={r4i,-h4i/2,0.0};
Point(8) ={r4i, h4i/2,0.0};
Point(9) ={r4e,-h4e/2,0.0};
Point(10)={r4e, h4e/2,0.0};//+
Line(1) = {1, 3};
//+
Line(2) = {3, 5};
//+
Line(3) = {5, 7};
//+
Line(4) = {7, 9};
//+
Line(5) = {9, 10};
//+
Line(6) = {10, 8};
//+
Line(7) = {8, 6};
//+
Line(8) = {6, 4};
//+
Line(9) = {4, 2};
//+
Line(10) = {2, 1};
//+
Line(11) = {3, 4};
//+
Line(12) = {5, 6};
//+
Line(13) = {7, 8};
//+
Curve Loop(1) = {1, 11, 9, 10};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, -11, 2, 12};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, -12, 3, 13};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {6, -13, 4, 5};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {10, 11, 12, 13, 5} = 5 Using Progression 1;
//+
Transfinite Curve {6, 4} = 5 Using Progression 1;
//+
Transfinite Curve {7, 3} = 23 Using Progression 1;
//+
Transfinite Curve {2, 8} = 10 Using Progression 1;
//+
Transfinite Curve {9, 1} = 9 Using Progression 1;
//+
Transfinite Surface {1} = {1, 3, 4, 2};
//+
Transfinite Surface {2} = {3, 5, 6, 4};
//+
Transfinite Surface {3} = {5, 7, 8, 6};
//+
Transfinite Surface {4} = {7, 9, 10, 8};
//+
Recombine Surface {1, 2, 3, 4};
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Surface{4}; Surface{3}; Surface{2}; Surface{1}; Layers{18}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Surface{101}; Surface{79}; Surface{57}; Surface{35}; Layers{18}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Surface{189}; Surface{167}; Surface{145}; Surface{123}; Layers{18}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Surface{211}; Surface{233}; Surface{255}; Surface{277}; Layers{18}; Recombine;
}
//+
Physical Volume("DISK", 354) = {13, 14, 15, 9, 10, 16, 11, 12, 4, 3, 5, 2, 1, 6, 7, 8};
