Point(1)={0.0,0.0,0.0};
Point(2)={5.0,0.0,0.0};
Point(3)={10.0,0.0,0.0};
Point(4)={10.0,2.5,0.0};
Point(5)={10.0,5.0,0.0};
Point(6)={7.5,5.0,0.0};
Point(7)={5.0,5.0,0.0};
Point(8)={5.0,7.5,0.0};
Point(9)={5.0,10.0,0.0};
Point(10)={2.5,10.0,0.0};
Point(11)={0.0,10.0,0.0};
Point(12)={0.0,5.0,0.0};
Point(13)={2.5,2.5,0.0};
Point(14)={2.5,6.25,0.0};
Point(15)={6.25,2.5,0.0};//+
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
Line(7) = {7, 8};
//+
Line(8) = {8, 9};
//+
Line(9) = {9, 10};
//+
Line(10) = {10, 11};
//+
Line(11) = {11, 12};
//+
Line(12) = {12, 1};
//+
Line(13) = {4, 15};
//+
Line(14) = {15, 13};
//+
Line(15) = {13, 14};
//+
Line(16) = {14, 10};
//+
Line(17) = {12, 14};
//+
Line(18) = {14, 8};
//+
Line(19) = {7, 13};
//+
Line(20) = {13, 1};
//+
Line(21) = {2, 15};
//+
Line(22) = {15, 6};
//+
Curve Loop(1) = {12, -20, 15, -17};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {20, 1, 21, 14};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {21, -13, -3, -2};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {16, 10, 11, 17};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {9, -16, 18, 8};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {15, 18, -7, 19};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {19, -14, 22, 6};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {5, -22, -13, 4};
//+
Plane Surface(8) = {8};
//+
Physical Surface("PLATE", 23) = {3, 2, 8, 7, 1, 6, 5, 4};
//+
Transfinite Curve {12, 15, 7} = 26 Using Progression 1;
//+
Transfinite Curve {11, 16, 8} = 26 Using Progression 1;
//+
Transfinite Curve {1, 14, 6} = 26 Using Progression 1;
//+
Transfinite Curve {5, 13, 2} = 26 Using Progression 1;
//+
Transfinite Curve {10, 17, 20, 21, 3} = 26 Using Progression 1;
//+
Transfinite Curve {4, 22, 19, 18, 9} = 26 Using Progression 1;
//+
Transfinite Surface {1} = {12, 1, 13, 14};
//+
Transfinite Surface {4} = {11, 12, 14, 10};
//+
Transfinite Surface {2} = {13, 1, 2, 15};
//+
Transfinite Surface {3} = {15, 2, 3, 4};
//+
Transfinite Surface {8} = {6, 15, 4, 5};
//+
Transfinite Surface {7} = {7, 13, 15, 6};
//+
Transfinite Surface {6} = {8, 14, 13, 7};
//+
Transfinite Surface {5} = {10, 14, 8, 9};
//+
Recombine Surface {2, 1, 7, 6, 3, 4, 8, 5};
