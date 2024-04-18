L1=0.2;
L2=1.25;
W1=0.3;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1+L2,0.0,0.0};
Point(4)={L1+2*L2,0.0,0.0};
Point(5)={L1+3*L2,0.0,0.0};
Point(6)={L1+4*L2,0.0,0.0};
Point(7)={2*L1+4*L2,0.0,0.0};
Point(8)={0.0,W1,0.0};
Point(9)={L1,W1,0.0};
Point(10)={L1+L2,W1,0.0};
Point(11)={L1+2*L2,W1,0.0};
Point(12)={L1+3*L2,W1,0.0};
Point(13)={L1+4*L2,W1,0.0};
Point(14)={2*L1+4*L2,W1,0.0};
Point(15)={0.0,2*W1,0.0};
Point(16)={L1,2*W1,0.0};
Point(17)={L1+L2,2*W1,0.0};
Point(18)={L1+2*L2,2*W1,0.0};
Point(19)={L1+3*L2,2*W1,0.0};
Point(20)={L1+4*L2,2*W1,0.0};
Point(21)={2*L1+4*L2,2*W1,0.0};//+
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
Line(6) = {6, 7};
//+
Line(7) = {8, 9};
//+
Line(8) = {9, 10};
//+
Line(9) = {10, 11};
//+
Line(10) = {11, 12};
//+
Line(11) = {12, 13};
//+
Line(12) = {13, 14};
//+
Line(13) = {15, 16};
//+
Line(14) = {16, 17};
//+
Line(15) = {17, 18};
//+
Line(16) = {18, 19};
//+
Line(17) = {19, 20};
//+
Line(18) = {20, 21};
//+
Line(19) = {1, 8};
//+
Line(20) = {8, 15};
//+
Line(21) = {2, 9};
//+
Line(22) = {9, 16};
//+
Line(23) = {3, 10};
//+
Line(24) = {10, 17};
//+
Line(25) = {4, 11};
//+
Line(26) = {11, 18};
//+
Line(27) = {5, 12};
//+
Line(28) = {12, 19};
//+
Line(29) = {6, 13};
//+
Line(30) = {13, 20};
//+
Line(31) = {7, 14};
//+
Line(32) = {14, 21};
//+
Curve Loop(1) = {1, 21, -7, -19};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 23, -8, -21};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 25, -9, -23};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 27, -10, -25};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {5, 29, -11, -27};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {6, 31, -12, -29};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {7, 22, -13, -20};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {8, 24, -14, -22};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {9, 26, -15, -24};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {10, 28, -16, -26};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {11, 30, -17, -28};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {12, 32, -18, -30};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {1, 7, 13, 6, 12, 18} = 3 Using Progression 1;
//+
Transfinite Curve {19, 21, 23, 25, 27, 29, 31, 20, 22, 24, 26, 28, 30, 32} = 4 Using Progression 1;
//+
Transfinite Curve {2, 8, 14, 3, 9, 15, 4, 10, 16, 5, 11, 17} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 9, 8};
//+
Transfinite Surface {2} = {2, 3, 10, 9};
//+
Transfinite Surface {3} = {3, 4, 11, 10};
//+
Transfinite Surface {4} = {4, 5, 12, 11};
//+
Transfinite Surface {5} = {5, 6, 13, 12};
//+
Transfinite Surface {6} = {6, 7, 14, 13};
//+
Transfinite Surface {7} = {8, 9, 16, 15};
//+
Transfinite Surface {8} = {9, 10, 17, 16};
//+
Transfinite Surface {9} = {10, 11, 18, 17};
//+
Transfinite Surface {10} = {11, 12, 19, 18};
//+
Transfinite Surface {11} = {12, 13, 20, 19};
//+
Transfinite Surface {12} = {13, 14, 21, 20};
//+
Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
//+
Extrude {0, 0, 0.12} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Surface{6}; Surface{7}; Surface{8}; Surface{9}; Surface{10}; Surface{11}; Surface{12}; Layers {3}; Recombine;
}
//+
Physical Volume("BEAM", 297) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
