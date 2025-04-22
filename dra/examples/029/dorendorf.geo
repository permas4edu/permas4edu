a=160.;
b=20.;
c=3.;
d=4.5;
r=d/2;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
//
Point(5)={a/2,b/2,0.0};
Point(6)={a/2+r,b/2,0.0};
Point(7)={a/2-r,b/2,0.0};
Point(8)={a/2,b/2+r,0.0};
Point(9)={a/2,b/2-r,0.0};
Point(10)={a/2,0.0,0.0};
Point(11)={a/2,b,0.0};
Point(12)={0,b/2,0.0};
Point(13)={a,b/2,0.0};
Point(14)={a/2+b/2,b/2,0.0};
Point(15)={a/2-b/2,b/2,0.0};
Point(16)={a/2+b/2,b,0.0};
Point(17)={a/2-b/2,b,0.0};
Point(18)={a/2+b/2,0.0,0.0};
Point(19)={a/2-b/2,0.0,0.0};//+
Line(1) = {1, 19};
//+
Line(2) = {19, 10};
//+
Line(3) = {10, 18};
//+
Line(4) = {18, 2};
//+
Line(5) = {2, 13};
//+
Line(6) = {13, 3};
//+
Line(7) = {3, 16};
//+
Line(8) = {16, 11};
//+
Line(9) = {11, 17};
//+
Line(10) = {17, 4};
//+
Line(11) = {4, 12};
//+
Line(12) = {12, 1};
//+
Line(13) = {12, 15};
//+
Line(14) = {15, 17};
//+
Line(15) = {15, 19};
//+
Line(16) = {18, 14};
//+
Line(17) = {14, 16};
//+
Line(18) = {14, 13};
//+
Line(19) = {6, 14};
//+
Line(20) = {8, 11};
//+
//+
Line(21) = {10, 9};
//+
Line(22) = {7, 15};
//+
Circle(23) = {6, 5, 8};
//+
Circle(24) = {8, 5, 7};
//+
Circle(25) = {7, 5, 9};
//+
Circle(26) = {9, 5, 6};
//+
Curve Loop(1) = {1, -15, -13, 12};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {13, 14, 10, 11};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {9, -14, -22, -24, 20};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {22, 15, 2, 21, -25};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {26, 19, -16, -3, 21};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {19, 17, 8, -20, -23};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {18, 6, 7, -17};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {18, -5, -4, 16};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {11, 12, 15, 14, 9, 8, 17, 16, 3, 2, 6, 5} = 11 Using Progression 1;
//+
Transfinite Curve {10, 13, 1, 4, 18, 7} = 71 Using Progression 1;
//+
Transfinite Curve {20, 22, 21, 19} = 11 Using Progression 1;
//+
Transfinite Curve {23, 24, 25, 26} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 19, 15, 12};
//+
Transfinite Surface {2} = {12, 15, 17, 4};
//+
Transfinite Surface {4} = {9, 7, 15, 10};
//+
Transfinite Surface {5} = {6, 9, 10, 14};
//+
Transfinite Surface {6} = {8, 6, 14, 11};
//+
Transfinite Surface {3} = {7, 8, 11, 15};
//+
Transfinite Surface {7} = {14, 13, 3, 16};
//+
Transfinite Surface {8} = {18, 2, 13, 14};
//+
Recombine Surface {2, 3, 1, 6, 4, 5, 7, 8};
//+
Extrude {0, 0, c} {
  Surface{7}; Surface{6}; Surface{8}; Surface{3}; Surface{5}; Surface{4}; Surface{2}; Surface{1}; Layers {3}; Recombine;
}
//+
Physical Volume("BEAM", 223) = {1, 3, 2, 5, 4, 6, 7, 8};
