R1=95.5;
h1=3.5;
hTD=1.5;
hBD=1.5;

L1=100.;
L2=305.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,R1,0.0};
Point(3)={L1,R1,0.0};
Point(4)={L1+L2,R1,0.0};
Point(5)={L1+L2,R1+h1,0.0};
Point(6)={L1+L2,R1+h1+hTD,0.0};
Point(7)={L1,R1+h1+hTD,0.0};
Point(8)={L1,R1+h1,0.0};
Point(9)={0.0,R1+h1,0.0};
Point(10)={L1,R1-hBD,0.0};
Point(11)={L1+L2,R1-hBD,0.0};
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
Transfinite Curve {1, 3} = 11 Using Progression 1;
//+
Transfinite Curve {5, 7, 9} = 29 Using Progression 1;
//+
Transfinite Curve {10, 8} = 2 Using Progression 1;
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

//+
Line(11) = {3, 10};
//+
Line(12) = {10, 11};
//+
Line(13) = {11, 4};
//+
Curve Loop(5) = {12, 13, -5, 11};
//+
Plane Surface(5) = {5};

Transfinite Curve {12} = 29 Using Progression 1;
//+
Transfinite Curve {11, 13} = 2 Using Progression 1;//+
Recombine Surface {5};


Transfinite Surface {5} = {11, 4, 3, 10};//  

Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
Surface{5}; Surface{4}; Surface{3}; Surface{1}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{101}; Surface{57}; Surface{79}; Surface{35}; Layers{18}; Recombine;
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
Physical Volume("CYLINDER", 358) = {5, 9, 4, 13, 7, 6, 8, 11, 10, 12, 1, 2, 3, 16, 14, 15};
//+

//+

