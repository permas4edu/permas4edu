L=600.;
x1=100.;
x2=200.;
x3=200.;
x4=50.;
w=60.;
Point(1)={0.0,0.0,0.0};
Point(2)={x1,0.0,0.0};
Point(3)={x1+x2,0.0,0.0};
Point(4)={x1+x2+x3,0.0,0.0};
Point(5)={x1+x2+x3+x4,0.0,0.0};
Point(6)={L,0.0,0.0};
Point(7)={0.0,w,0.0};
Point(8)={x1,w,0.0};
Point(9)={x1+x2,w,0.0};
Point(10)={x1+x2+x3,w,0.0};
Point(11)={x1+x2+x3+x4,w,0.0};
Point(12)={L,w,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 12};
//+
Line(7) = {12, 11};
//+
Line(8) = {11, 10};
//+
Line(9) = {10, 9};
//+
Line(10) = {9, 8};
//+
Line(11) = {8, 7};
//+
Line(12) = {7, 1};
//+
Line(13) = {2, 8};
//+
Line(14) = {3, 9};
//+
Line(15) = {4, 10};
//+
Line(16) = {5, 11};
//+
Curve Loop(1) = {1, 13, 11, 12};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, -13, 2, 14};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {9, -14, 3, 15};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {8, -15, 4, 16};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {7, -16, 5, 6};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {1, 11} = 11 Using Progression 1;
//+
Transfinite Curve {2, 10, 3, 9} = 21 Using Progression 1;
//+
Transfinite Curve {4, 8, 5, 7} = 6 Using Progression 1;
//+
Transfinite Curve {12, 13, 14, 15, 16, 6} = 7 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 8, 7};
//+
Transfinite Surface {2} = {2, 3, 9, 8};
//+
Transfinite Surface {3} = {3, 4, 10, 9};
//+
Transfinite Surface {4} = {4, 5, 11, 10};
//+
Transfinite Surface {5} = {5, 6, 12, 11};
//+
Recombine Surface {1, 2, 3, 4, 5};
//+
Extrude {0, 0, 8} {
  Surface{5}; Surface{4}; Surface{3}; Surface{2}; Surface{1}; Layers {3}; Recombine;
}
//+
Physical Volume("BEAM", 127) = {1, 2, 3, 4, 5};
