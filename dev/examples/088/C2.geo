L1=50;
L2=50;
L3=50;
L4=50;
h1=40;
h2=40;
h3=40;
h4=40;
R=100;
Point(1)={0.0,R+h1/2,0.0};
Point(2)={0.0,R-h1/2,0.0};
Point(3)={L1,R+h1/2,0.0};
Point(4)={L1,R-h1/2,0.0};
//
Point(7)={L1+L2,R+h2/2,0.0};
Point(8)={L1+L2,R-h2/2,0.0};
//

Point(11)={L1+L2+L3,R+h3/2,0.0};
Point(12)={L1+L2+L3,R-h3/2,0.0};
//

Point(15)={L1+L2+L3+L4,R+h4/2,0.0};
Point(16)={L1+L2+L3+L4,R-h4/2,0.0};

//+
Line(1) = {2, 4};
//+
Line(2) = {4, 8};
//+
Line(3) = {8, 12};
//+
Line(4) = {12, 16};
//+
Line(5) = {16, 15};
//+
Line(6) = {15, 11};
//+
Line(7) = {11, 7};
//+
Line(8) = {7, 3};
//+
Line(9) = {3, 1};
//+
Line(10) = {1, 2};
//+
Line(11) = {4, 3};
//+
Line(12) = {8, 7};
//+
Line(13) = {12, 11};
//+
Curve Loop(1) = {10, 1, 11, 9};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {11, -8, -12, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {12, -7, -13, -3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {6, -13, 4, 5};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {10, 11, 12, 13, 5} = 9 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4, 6, 7, 8, 9} = 6 Using Progression 1;
//+
Transfinite Surface {1} = {2, 4, 3, 1};
//+
Transfinite Surface {2} = {4, 8, 7, 3};
//+
Transfinite Surface {3} = {8, 12, 11, 7};
//+
Transfinite Surface {4} = {12, 16, 15, 11};
//+
Recombine Surface {4, 3, 2, 1};
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{4}; Surface{3}; Surface{2}; Surface{1}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{101}; Surface{79}; Surface{57}; Surface{35}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{123}; Surface{145}; Surface{167}; Surface{189}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{211}; Surface{233}; Surface{255}; Surface{277}; Layers{18}; Recombine;
}
//+
Physical Volume("C", 362) = {16, 15, 1, 14, 2, 12, 13, 3, 11, 8, 4, 10, 7, 9, 6, 5};
