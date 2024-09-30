a=200.0;
b=200.0;
Point(1)={0*a,0.0,0.0};
Point(2)={1*a,0.0,0.0};
Point(3)={2*a,0.0,0.0};
Point(4)={3*a,0.0,0.0};
Point(5)={4*a,0.0,0.0};
//
Point(6)={0*a,b,0.0};
Point(7)={1*a,b,0.0};
Point(8)={2*a,b,0.0};
Point(9)={3*a,b,0.0};
Point(10)={4*a,b,0.0};
//
Point(11)={0*a,2*b,0.0};
Point(12)={1*a,2*b,0.0};
Point(13)={2*a,2*b,0.0};
Point(14)={3*a,2*b,0.0};
Point(15)={4*a,2*b,0.0};
//
Point(16)={0*a,3*b,0.0};
Point(17)={1*a,3*b,0.0};
Point(18)={2*a,3*b,0.0};
Point(19)={3*a,3*b,0.0};
Point(20)={4*a,3*b,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {6, 7};
//+
Line(6) = {7, 8};
//+
Line(7) = {8, 9};
//+
Line(8) = {9, 10};
//+
Line(9) = {11, 12};
//+
Line(10) = {12, 13};
//+
Line(11) = {13, 14};
//+
Line(12) = {14, 15};
//+
Line(13) = {16, 17};
//+
Line(14) = {17, 18};
//+
Line(15) = {18, 19};
//+
Line(16) = {19, 20};
//+
Line(17) = {1, 6};
//+
Line(18) = {6, 11};
//+
Line(19) = {11, 16};
//+
Line(20) = {2, 7};
//+
Line(21) = {7, 12};
//+
Line(22) = {12, 17};
//+
Line(23) = {3, 8};
//+
Line(24) = {8, 13};
//+
Line(25) = {13, 18};
//+
Line(26) = {4, 9};
//+
Line(27) = {9, 14};
//+
Line(28) = {14, 19};
//+
Line(29) = {5, 10};
//+
Line(30) = {10, 15};
//+
Line(31) = {15, 20};
//+
Transfinite Curve {13, 19, 14, 22, 9, 18, 15, 25, 10, 5, 21, 16, 17, 28, 11, 6, 24, 20, 1, 31, 12, 27, 7, 2, 23, 30, 8, 3, 26, 4, 29} = 11 Using Progression 1;
//+
Curve Loop(1) = {17, 5, -20, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {20, 6, -23, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {23, 7, -26, -3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {8, -29, -4, 26};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {18, 9, -21, -5};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {21, 10, -24, -6};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {24, 11, -27, -7};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {27, 12, -30, -8};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {19, 13, -22, -9};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {22, 14, -25, -10};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {25, 15, -28, -11};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {28, 16, -31, -12};
//+
Plane Surface(12) = {12};
//+
Transfinite Surface {1} = {1, 2, 7, 6};
//+
Transfinite Surface {2} = {2, 3, 8, 7};
//+
Transfinite Surface {3} = {3, 4, 9, 8};
//+
Transfinite Surface {4} = {4, 5, 10, 9};
//+
Transfinite Surface {5} = {6, 7, 12, 11};
//+
Transfinite Surface {6} = {7, 8, 13, 12};
//+
Transfinite Surface {7} = {8, 9, 14, 13};
//+
Transfinite Surface {8} = {9, 10, 15, 14};
//+
Transfinite Surface {9} = {11, 12, 17, 16};
//+
Transfinite Surface {10} = {12, 13, 18, 17};
//+
Transfinite Surface {11} = {13, 14, 19, 18};
//+
Transfinite Surface {12} = {14, 15, 20, 19};
//+
Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
//+
Physical Surface("PANEL", 32) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
//+
Physical Curve("STIFFENER_01", 33) = {5, 6, 7, 8};
//+
Physical Curve("STIFFENER_02", 34) = {9, 10, 11, 12};
//+
Physical Curve("STIFFENER_03", 35) = {20, 21, 22};
//+
Physical Curve("STIFFENER_04", 36) = {23, 24, 25};
//+
Physical Curve("STIFFENER_05", 37) = {26, 27, 28};
