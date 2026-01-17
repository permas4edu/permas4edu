L1=50;
L2=50;
L3=50;
L4=50;
h1=40;
h2=20;
h3=50;
h4=30;
R=100;
Point(1)={0.0,R+h1/2,0.0};
Point(2)={0.0,R-h1/2,0.0};
Point(3)={L1,R+h1/2,0.0};
Point(4)={L1,R-h1/2,0.0};
//
Point(5)={L1,R+h2/2,0.0};
Point(6)={L1,R-h2/2,0.0};
Point(7)={L1+L2,R+h2/2,0.0};
Point(8)={L1+L2,R-h2/2,0.0};
//
Point(9)={L1+L2,R+h3/2,0.0};
Point(10)={L1+L2,R-h3/2,0.0};
Point(11)={L1+L2+L3,R+h3/2,0.0};
Point(12)={L1+L2+L3,R-h3/2,0.0};
//
Point(13)={L1+L2+L3,R+h4/2,0.0};
Point(14)={L1+L2+L3,R-h4/2,0.0};
Point(15)={L1+L2+L3+L4,R+h4/2,0.0};
Point(16)={L1+L2+L3+L4,R-h4/2,0.0};

//+
Line(1) = {1, 3};
//+
Line(2) = {3, 5};
//+
Line(3) = {5, 7};
//+
Line(4) = {7, 9};
//+
Line(5) = {9, 11};
//+
Line(6) = {11, 13};
//+
Line(7) = {13, 15};
//+
Line(8) = {15, 16};
//+
Line(9) = {16, 14};
//+
Line(10) = {14, 12};
//+
Line(11) = {12, 10};
//+
Line(12) = {10, 8};
//+
Line(13) = {8, 6};
//+
Line(14) = {6, 4};
//+
Line(15) = {4, 2};
//+
Line(16) = {2, 1};
//+
Line(17) = {6, 5};
//+
Line(18) = {8, 7};
//+
Line(19) = {14, 13};
//+
Curve Loop(1) = {16, 1, 2, -17, 14, 15};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {13, 17, 3, -18};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {4, 5, 6, -19, 10, 11, 12, 18};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {19, 7, 8, 9};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {16} = 9 Using Progression 1;
//+
Transfinite Curve {2, 14, 10, 6} = 3 Using Progression 1;
//+
Transfinite Curve {17, 18} = 5 Using Progression 1;
//+
Transfinite Curve {4, 12} = 4 Using Progression 1;
//+
Transfinite Curve {19, 8} = 7 Using Progression 1;
//+
Transfinite Curve {15, 1, 13, 3, 11, 5, 7, 9} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {2, 4, 3, 1};
//+
Transfinite Surface {2} = {6, 8, 7, 5};
//+
Transfinite Surface {3} = {10, 12, 11, 9};
//+
Transfinite Surface {4} = {14, 16, 15, 13};
//+
Recombine Surface {4, 3, 2, 1};
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{4}; Surface{3}; Surface{2}; Surface{1}; Layers{10}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{137}; Surface{105}; Surface{83}; Surface{41}; Layers{10}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{169}; Surface{191}; Surface{233}; Surface{255}; Layers{10}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{287}; Surface{309}; Surface{351}; Surface{373}; Layers{10}; Recombine;
}
//+
Physical Volume("C", 484) = {2, 1, 4, 3, 16, 8, 15, 7, 14, 6, 13, 5, 12, 10, 11, 9};
