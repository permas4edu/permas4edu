L=0.5;
W=0.2;
H=0.1;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={2*L,0.0,0.0};
Point(4)={3*L,0.0,0.0};
Point(5)={0.0,W,0.0};
Point(6)={L,W,0.0};
Point(7)={2*L,W,0.0};
Point(8)={3*L,W,0.0};
Point(9)={0.0,0.0,H};
Point(10)={L,0.0,H};
Point(11)={2*L,0.0,H};
Point(12)={3*L,0.0,H};
Point(13)={0.0,W,H};
Point(14)={L,W,H};
Point(15)={2*L,W,H};
Point(16)={3*L,W,H};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 8};
//+
Line(5) = {8, 7};
//+
Line(6) = {7, 6};
//+
Line(7) = {6, 5};
//+
Line(8) = {5, 1};
//+
Line(9) = {6, 2};
//+
Line(10) = {3, 7};
//+
Line(11) = {1, 9};
//+
Line(12) = {9, 10};
//+
Line(13) = {10, 2};
//+
Line(14) = {10, 11};
//+
Line(15) = {11, 3};
//+
Line(16) = {11, 12};
//+
Line(17) = {12, 4};
//+
Line(18) = {12, 16};
//+
Line(19) = {16, 8};
//+
Line(20) = {16, 15};
//+
Line(21) = {15, 7};
//+
Line(22) = {15, 14};
//+
Line(23) = {14, 6};
//+
Line(24) = {14, 13};
//+
Line(25) = {13, 9};
//+
Line(26) = {10, 14};
//+
Line(27) = {11, 15};
//+
Line(28) = {5, 13};
//+
Curve Loop(1) = {1, -9, 7, 8};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 10, 6, 9};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 4, 5, -10};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {24, 25, 12, 26};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {22, -26, 14, 27};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {20, -27, 16, 18};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {18, 19, -4, -17};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {20, 21, -5, -19};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {22, 23, -6, -21};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {24, -28, -7, -23};
//+
Plane Surface(10) = {10};

Curve Loop(11) = {13, -9, -23, -26};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {15, 10, -21, -27};
//+
Plane Surface(12) = {12};
//+
//+
Transfinite Curve {1, 7, 24, 12} = 6 Using Progression 1;
//+
Transfinite Curve {2, 6, 22, 14} = 6 Using Progression 1;
//+
Transfinite Curve {3, 5, 20, 16} = 6 Using Progression 1;
//+
Transfinite Curve {4, 18} = 7 Using Progression 1;
//+
Transfinite Curve {10, 27} = 7 Using Progression 1;
//+
Transfinite Curve {9, 26} = 7 Using Progression 1;
//+
Transfinite Curve {8, 25} = 7 Using Progression 1;
//+
Transfinite Curve {19, 17, 15, 21, 23, 13} = 4 Using Progression 1;
Transfinite Curve {28, 11, 13, 23, 15, 21, 17, 19} = 4 Using Progression 1;

//+
Transfinite Surface {1} = {1, 2, 6, 5};
//+
Transfinite Surface {2} = {2, 3, 7, 6};
//+
Transfinite Surface {3} = {3, 4, 8, 7};
//+
Transfinite Surface {4} = {9, 10, 14, 13};
//+
Transfinite Surface {5} = {10, 11, 15, 14};
//+
Transfinite Surface {6} = {11, 12, 16, 15};
//+
Transfinite Surface {7} = {4, 8, 16, 12};
//+
Transfinite Surface {8} = {8, 7, 15, 16};
//+
Transfinite Surface {9} = {7, 6, 14, 15};
//+
Transfinite Surface {10} = {6, 5, 13, 14};
//+

Transfinite Surface {11} = {2, 6, 14, 10};
//+
Transfinite Surface {12} = {3, 7, 15, 11};
//+
//+
Recombine Surface {2, 1, 3};
//+
Recombine Surface {6, 5, 4};
//+
Recombine Surface {11, 12, 7, 8, 9, 10};
//+
Physical Surface("BOXBEAM", 29) = {4, 1, 2, 5, 3, 6, 7, 8, 9, 10, 11, 12};
