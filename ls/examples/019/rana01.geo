L=300.;
W=120.;
T=30.;
D=60.;
R=D/2;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={L,W,0.0};
Point(4)={0.0,W,0.0};
Point(5)={L/2,W/2,0.0};
Point(6)={L/2,0.0,0.0};
Point(7)={0.0,W/2,0.0};
Point(8)={L,W/2,0.0};
Point(9)={L/2,W,0.0};
Point(10)={L/2+R,W/2,0.0};
Point(11)={L/2,W/2+R,0.0};
Point(12)={L/2-R,W/2,0.0};
Point(13)={L/2,W/2-R,0.0};
Point(14)={L/2+R+W/4,0.0,0.0};
Point(15)={L/2+R+W/4,W,0.0};
Point(16)={L/2+R+W/4,W/2,0.0};
Point(17)={L/2-R-W/4,0.0,0.0};
Point(18)={L/2-R-W/4,W,0.0};
Point(19)={L/2-R-W/4,W/2,0.0};//+
Line(1) = {1, 17};
//+
Line(2) = {17, 6};
//+
Line(3) = {6, 14};
//+
Line(4) = {14, 2};
//+
Line(5) = {2, 8};
//+
Line(6) = {8, 3};
//+
Line(7) = {3, 15};
//+
Line(8) = {15, 9};
//+
Line(9) = {9, 18};
//+
Line(10) = {18, 4};
//+
Line(11) = {4, 7};
//+
Line(12) = {7, 1};
//+
Line(13) = {17, 19};
//+
Line(14) = {19, 18};
//+
Line(15) = {19, 7};
//+
Line(16) = {19, 12};
//+
Line(17) = {6, 13};
//+
Line(18) = {11, 9};
//+
Line(19) = {10, 16};
//+
Line(20) = {16, 15};
//+
Line(21) = {16, 14};
//+
Line(22) = {16, 8};
//+
Circle(23) = {10, 5, 11};
//+
Circle(24) = {11, 5, 12};
//+
Circle(25) = {12, 5, 13};
//+
Circle(26) = {13, 5, 10};
//+
Curve Loop(1) = {12, 1, 13, 15};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 17, -25, -16, -13};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {26, 19, 21, -3, 17};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {21, 4, 5, -22};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {22, 6, 7, -20};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {19, 20, 8, -18, -23};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {9, -14, 16, -24, 18};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {14, 10, 11, -15};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {9, 8, 20, 21, 3, 2, 13, 14} = 31 Using Progression 1;
//+
Transfinite Curve {18, 16, 17, 19} = 16 Using Progression 1;
//+
Transfinite Curve {23, 24, 25, 26} = 61 Using Progression 1;
//+
Transfinite Curve {11, 12, 5, 6} = 31 Using Progression 1;
//+
Transfinite Curve {7, 22, 4, 1, 15, 10} = 46 Using Progression 1;
//+
Transfinite Surface {6} = {11, 10, 16, 9};
//+
Transfinite Surface {7} = {12, 11, 9, 19};
//+
Transfinite Surface {2} = {13, 12, 19, 6};
//+
Transfinite Surface {3} = {10, 13, 6, 16};
//+
Transfinite Surface {8} = {7, 19, 18, 4};
//+
Transfinite Surface {1} = {1, 17, 19, 7};
//+
Transfinite Surface {4} = {14, 2, 8, 16};
//+
Transfinite Surface {5} = {16, 8, 3, 15};
//+
Recombine Surface {5, 4, 6, 3, 7, 2, 8, 1};
//+
Physical Surface("PLATE", 27) = {5, 4, 6, 3, 7, 2, 8, 1};
