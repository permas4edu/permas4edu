xh=30.0;
yh=20.0;
r=40/3;
a=90.;
b=40.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
Point(5)={xh,0.0,0.0};
Point(6)={a,yh,0.0};
Point(7)={xh,b,0.0};
Point(8)={0.0,yh,0.0};
Point(9)={xh,yh,0.0};
Point(10)={xh+r,yh,0.0};
Point(11)={xh-r,yh,0.0};
Point(12)={xh,yh+r,0.0};
Point(13)={xh,yh-r,0.0};
Point(14)={2*xh,0.0,0.0};
Point(15)={2*xh,yh,0.0};
Point(16)={2*xh,b,0.0};
Point(17)={xh+r*Cos(45*Pi/180),yh+r*Sin(45*Pi/180),0.0};
Point(18)={xh+r*Cos(3*45*Pi/180),yh+r*Sin(3*45*Pi/180),0.0};
Point(19)={xh+r*Cos(5*45*Pi/180),yh+r*Sin(5*45*Pi/180),0.0};
Point(20)={xh+r*Cos(7*45*Pi/180),yh+r*Sin(7*45*Pi/180),0.0};//+
Line(1) = {1, 5};
//+
Line(2) = {5, 14};
//+
Line(3) = {14, 2};
//+
Line(4) = {2, 6};
//+
Line(5) = {6, 3};
//+
Line(6) = {3, 16};
//+
Line(7) = {16, 7};
//+
Line(8) = {7, 4};
//+
Line(9) = {4, 8};
//+
Line(10) = {8, 1};
//+
Line(11) = {8, 11};
//+
Line(12) = {12, 7};
//+
Line(13) = {10, 15};
//+
Line(14) = {15, 6};
//+
Line(15) = {13, 5};
//+
Line(16) = {15, 14};
//+
Line(17) = {15, 16};
//+
Line(18) = {17, 16};
//+
Line(19) = {18, 4};
//+
Line(20) = {19, 1};
//+
Line(21) = {20, 14};
//+
Circle(22) = {10, 9, 17};
//+
Circle(23) = {17, 9, 12};
//+
Circle(24) = {12, 9, 18};
//+
Circle(25) = {18, 9, 11};
//+
Circle(26) = {11, 9, 19};
//+
Circle(27) = {19, 9, 13};
//+
Circle(28) = {13, 9, 20};
//+
Circle(29) = {20, 9, 10};
//+
Curve Loop(1) = {11, -25, 19, 9};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {24, 19, -8, -12};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, -12, -23, 18};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {17, -18, -22, 13};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {21, -16, -13, -29};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {21, -2, -15, 28};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {15, -1, -20, 27};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {20, -10, 11, 26};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {14, 5, 6, -17};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {14, -4, -3, -16};
//+
Plane Surface(10) = {10};
//+
Transfinite Curve {3, 14, 6} = 21 Using Progression 1;
//+
Transfinite Curve {5, 4, 16, 17, 7, 8, 9, 10, 1, 2} = 11 Using Progression 1;
//+
Transfinite Curve {19, 11, 20, 15, 21, 13, 18, 12} = 11 Using Progression 1;
//+
Transfinite Surface {9} = {15, 6, 3, 16};
//+
Transfinite Surface {10} = {14, 2, 6, 15};
//+
Transfinite Surface {5} = {20, 14, 15, 10};
//+
Transfinite Surface {4} = {17, 10, 15, 16};
//+
Transfinite Surface {3} = {12, 17, 16, 7};
//+
Transfinite Surface {6} = {13, 5, 14, 20};
//+
Transfinite Surface {7} = {19, 1, 5, 13};
//+
Transfinite Surface {2} = {4, 18, 12, 7};
//+
Transfinite Surface {1} = {4, 8, 11, 18};
//+
Transfinite Surface {8} = {8, 1, 19, 11};
//+
Transfinite Curve {22, 23, 24, 25, 26, 27, 28, 29} = 11 Using Progression 1;
//+
Recombine Surface {8, 1, 7, 2, 6, 3, 5, 4, 10, 9};
//+
Extrude {0, 0, 30} {
  Surface{9}; Surface{3}; Surface{4}; Surface{2}; Surface{10}; Surface{5}; Surface{1}; Surface{6}; Surface{8}; Surface{7}; Layers {10}; Recombine;
}
//+
Physical Volume("BEAM", 250) = {1, 5, 2, 3, 4, 6, 7, 8, 9, 10};
