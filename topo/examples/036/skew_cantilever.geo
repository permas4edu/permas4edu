L=2.;
H=1.;
Point(1)={0.0,0.0,0.0};
Point(2)={L/8,0.0,0.0};
Point(3)={L/8+L/4,0.0,0.0};
Point(4)={L/2,0.0,0.0};
Point(5)={L,0.0,0.0};
Point(6)={L,H/2,0.0};
Point(7)={L/2,H,0.0};
Point(8)={L/8+L/4,H,0.0};
Point(9)={L/8,H,0.0};
Point(10)={0.0,H,0.0};
Point(11)={L/8,L/8,0.0};
Point(12)={0.0,L/8,0.0};
Point(13)={0.0,L/8+L/4,0.0};
Point(14)={L/8+L/4,L/8,0.0};
Point(15)={L/8+L/4,L/8+L/4,0.0};
Point(16)={L/8,L/8+L/4,0.0};
Point(17)={L/2,L/8,0.0};
Point(18)={L/2,L/8+L/4,0.0};
Point(19)={L,L/12,0.0};
Point(20)={L,H/2-L/12,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 11};
//+
Line(3) = {11, 12};
//+
Line(4) = {12, 1};
//+
Line(5) = {2, 3};
//+
Line(6) = {3, 14};
//+
Line(7) = {14, 11};
//+
Line(8) = {3, 4};
//+
Line(9) = {4, 17};
//+
Line(10) = {17, 14};
//+
Line(11) = {14, 15};
//+
Line(12) = {15, 18};
//+
Line(13) = {18, 17};
//+
Line(14) = {18, 7};
//+
Line(15) = {7, 8};
//+
Line(16) = {8, 15};
//+
Line(17) = {15, 16};
//+
Line(18) = {16, 9};
//+
Line(19) = {9, 8};
//+
Line(20) = {9, 10};
//+
Line(21) = {10, 13};
//+
Line(22) = {13, 16};
//+
Line(23) = {16, 11};
//+
Line(24) = {12, 13};
//+
Line(25) = {18, 20};
//+
Line(26) = {20, 6};
//+
Line(27) = {6, 7};
//+
Line(28) = {17, 19};
//+
Line(29) = {19, 20};
//+
Line(30) = {19, 5};
//+
Line(31) = {5, 4};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, -2, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -6, 8, 9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {28, 30, 31, 9};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {28, 29, -25, 13};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {25, 26, 27, -14};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {12, 14, 15, 16};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {19, 16, 17, 18};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {18, 20, 21, 22};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {24, 22, 23, 3};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {11, 12, 13, 10};
//+
Plane Surface(11) = {11};
//+
Transfinite Curve {4, 2, 6, 9, 30, 21, 18, 16, 14, 26, 1, 3, 22, 20, 15, 12, 10, 8} = 26 Using Progression 1;
//+
Transfinite Curve {24, 23, 11, 13, 29, 5, 7, 17, 19} = 41 Using Progression 1;
//+
Transfinite Curve {31, 28, 25, 27} = 91 Using Progression 1;
//+
Transfinite Surface {5} = {17, 19, 20, 18};
//+
Transfinite Surface {4} = {4, 5, 19, 17};
//+
Transfinite Surface {6} = {20, 6, 7, 18};
//+
Transfinite Surface {1} = {1, 2, 11, 12};
//+
Transfinite Surface {2} = {2, 3, 14, 11};
//+
Transfinite Surface {3} = {3, 4, 17, 14};
//+
Transfinite Surface {11} = {14, 17, 18, 15};
//+
Transfinite Surface {7} = {15, 18, 7, 8};
//+
Transfinite Surface {8} = {16, 15, 8, 9};
//+
Transfinite Surface {9} = {13, 16, 9, 10};
//+
Transfinite Surface {10} = {12, 11, 16, 13};
//+
Recombine Surface {6, 7, 8, 5, 9, 11, 4, 3, 10, 2, 1};
//+
Physical Surface("BEAM", 32) = {4, 3, 2, 1, 5, 11, 10, 9, 8, 7, 6};
