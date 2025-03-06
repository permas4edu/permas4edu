Lx=1.5;
Ly=3.;
Lz=0.15;
R=0.5;
Point(1)={0.0,0.0,0.0};
Point(2)={Lx,0.0,0.0};
Point(3)={Lx,Ly,0.0};
Point(4)={0.0,Ly,0.0};
Point(5)={Lx/2,Ly/2,0.0};
Point(6)={Lx/2+R,Ly/2,0.0};
Point(7)={Lx/2,Ly/2+R,0.0};
Point(8)={Lx/2-R,Ly/2,0.0};
Point(9)={Lx/2,Ly/2-R,0.0};
Point(10)={Lx/2+R*Cos(45*Pi/180),Ly/2+R*Sin(45*Pi/180),0.0};
Point(11)={Lx/2+R*Cos(3*45*Pi/180),Ly/2+R*Sin(3*45*Pi/180),0.0};
Point(12)={Lx/2+R*Cos(5*45*Pi/180),Ly/2+R*Sin(5*45*Pi/180),0.0};
Point(13)={Lx/2+R*Cos(7*45*Pi/180),Ly/2+R*Sin(7*45*Pi/180),0.0};
Point(14)={Lx/2,0.0,0.0};
Point(15)={Lx/2,Ly,0.0};
Point(16)={0.0,Ly/2,0.0};
Point(17)={Lx,Ly/2,0.0};
Point(18)={Lx/2,Ly/2+Lx/2,0.0};
Point(19)={Lx/2,Ly/2-Lx/2,0.0};
Point(20)={Lx,Ly/2+Lx/2,0.0};
Point(21)={Lx,Ly/2-Lx/2,0.0};
Point(22)={0.0,Ly/2+Lx/2,0.0};
Point(23)={0.0,Ly/2-Lx/2,0.0};//+
Line(1) = {1, 14};
//+
Line(2) = {14, 2};
//+
Line(3) = {2, 21};
//+
Line(4) = {21, 17};
//+
Line(5) = {17, 20};
//+
Line(6) = {20, 3};
//+
Line(7) = {3, 15};
//+
Line(8) = {15, 4};
//+
Line(9) = {4, 22};
//+
Line(10) = {22, 16};
//+
Line(11) = {16, 23};
//+
Line(12) = {23, 1};
//+
Line(13) = {14, 19};
//+
Line(14) = {19, 21};
//+
Line(15) = {19, 23};
//+
Line(16) = {22, 18};
//+
Line(17) = {18, 20};
//+
Line(18) = {10, 20};
//+
Line(19) = {7, 18};
//+
Line(20) = {11, 22};
//+
Line(21) = {8, 16};
//+
Line(22) = {12, 23};
//+
Line(23) = {19, 9};
//+
Line(24) = {13, 21};
//+
Line(25) = {6, 17};
//+
Circle(26) = {6, 5, 10};
//+
Circle(27) = {10, 5, 7};
//+
Circle(28) = {7, 5, 11};
//+
Circle(29) = {11, 5, 8};
//+
Circle(30) = {8, 5, 12};
//+
Circle(31) = {12, 5, 9};
//+
Circle(32) = {9, 5, 13};
//+
Circle(33) = {13, 5, 6};
//+
Line(34) = {18, 15};
//+
Curve Loop(1) = {12, 1, 13, 15};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {14, -3, -2, 13};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {24, -14, 23, 32};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {24, 4, -25, -33};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {26, 18, -5, -25};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {17, -18, 27, 19};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {19, -16, -20, -28};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {20, 10, -21, -29};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {11, -22, -30, 21};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {22, -15, 23, -31};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {16, 34, 8, 9};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {7, -34, 17, 6};
//+
Plane Surface(12) = {12};
//+
Transfinite Curve {7, 8, 34, 9, 16, 17, 6, 3, 14, 2, 13, 1, 15, 12, 11, 10, 5, 4} = 16 Using Progression 1;
//+
Transfinite Curve {33, 26, 27, 28, 29, 30, 31, 32} = 16 Using Progression 1;
//+
Transfinite Curve {18, 25, 24, 23, 22, 21, 20, 19} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 14, 19, 23};
//+
Transfinite Surface {2} = {14, 2, 21, 19};
//+
Transfinite Surface {10} = {19, 9, 12, 23};
//+
Transfinite Surface {3} = {13, 9, 19, 21};
//+
Transfinite Surface {4} = {6, 13, 21, 17};
//+
Transfinite Surface {9} = {8, 16, 23, 12};
//+
Transfinite Surface {8} = {11, 22, 16, 8};
//+
Transfinite Surface {7} = {7, 18, 22, 11};
//+
Transfinite Surface {6} = {20, 18, 7, 10};
//+
Transfinite Surface {5} = {20, 10, 6, 17};
//+
Transfinite Surface {11} = {18, 15, 4, 22};
//+
Transfinite Surface {12} = {3, 15, 18, 20};
//+
Recombine Surface {2, 1, 3, 10, 4, 9, 5, 6, 8, 7, 12, 11};
//+
Extrude {0, 0, Lz} {
  Surface{1}; Surface{10}; Surface{2}; Surface{9}; Surface{3}; Surface{8}; Surface{4}; Surface{7}; Surface{5}; Surface{6}; Surface{11}; Surface{12}; Layers {5}; Recombine;
}
//+
Physical Volume("PLATE", 299) = {1, 4, 2, 3, 6, 5, 8, 7, 11, 10, 9, 12};
