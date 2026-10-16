a=40.;
b=40.;
ap=70.;
bp=70.;
Point(1)={-a/2,-b/2,0.0};
Point(2)={ a/2,-b/2,0.0};
Point(3)={ a/2, b/2,0.0};
Point(4)={-a/2, b/2,0.0};
Point(5)={-ap/2,-bp/2,0.0};
Point(6)={ ap/2,-bp/2,0.0};
Point(7)={ ap/2, bp/2,0.0};
Point(8)={-ap/2, bp/2,0.0};
Point(9)={-ap/2,-b/2,0.0};
Point(10)={ ap/2,-b/2,0.0};
Point(11)={ ap/2, b/2,0.0};
Point(12)={-ap/2, b/2,0.0};
Point(13)={-a /2,-bp/2,0.0};
Point(14)={ a/2,-bp/2,0.0};
Point(15)={ a/2, bp/2,0.0};
Point(16)={-a/2, bp/2,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {3, 11};
//+
Line(6) = {11, 7};
//+
Line(7) = {7, 15};
//+
Line(8) = {15, 3};
//+
Line(9) = {15, 16};
//+
Line(10) = {16, 4};
//+
Line(11) = {4, 12};
//+
Line(12) = {12, 8};
//+
Line(13) = {8, 16};
//+
Line(14) = {12, 9};
//+
Line(15) = {9, 1};
//+
Line(16) = {1, 13};
//+
Line(17) = {13, 5};
//+
Line(18) = {5, 9};
//+
Line(19) = {13, 14};
//+
Line(20) = {14, 2};
//+
Line(21) = {2, 10};
//+
Line(22) = {10, 6};
//+
Line(23) = {6, 14};
//+
Line(24) = {10, 11};
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, -24, -21, 2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {4, -15, -14, -11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {18, 15, 16, 17};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {1, -20, -19, -16};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {21, 22, 23, 20};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {6, 7, 8, 5};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {9, 10, -3, -8};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {13, 10, 11, 12};
//+
Plane Surface(9) = {9};
//+
Transfinite Curve {4, 3, 2, 1, 19, 24, 9, 14} = 9 Using Progression 1;
//+
Transfinite Curve {18, 17, 16, 15, 20, 23, 22, 21, 5, 7, 6, 8, 10, 13, 12, 11} = 4 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Surface {2} = {2, 10, 11, 3};
//+
Transfinite Surface {7} = {3, 11, 7, 15};
//+
Transfinite Surface {8} = {4, 3, 15, 16};
//+
Transfinite Surface {9} = {16, 8, 12, 4};
//+
Transfinite Surface {3} = {9, 1, 4, 12};
//+
Transfinite Surface {4} = {5, 13, 1, 9};
//+
Transfinite Surface {5} = {13, 14, 2, 1};
//+
Transfinite Surface {6} = {14, 6, 10, 2};
//+
Recombine Surface {6, 5, 4, 2, 1, 3, 7, 8, 9};
//+
Physical Surface("PLATE", 25) = {6, 5, 4, 2, 1, 3, 7, 8, 9};
//+
Extrude {0, 0, 600} {
  Curve{4}; Curve{1}; Curve{2}; Curve{3}; Layers {100}; Recombine;
}
//+
Extrude {0, 0, -1200} {
  Curve{1}; Curve{4}; Curve{3}; Curve{2}; Layers {200}; Recombine;
}
//+
Physical Surface("LOWER", 58) = {45, 49, 57, 53};
//+
Physical Surface("UPPER", 59) = {33, 29, 37, 41};
