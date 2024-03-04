r_i= 10.0; // inner radius
r_o=  50.0; // outer radius 
r_1= 30.0; // inner radius of slot
r_2= 40.0; // outer radius of slot
t=10.; // Thickness of disc
Point(1)={0.0,0.0,0.0};
Point(2)={r_i,0.0,0.0};
Point(3)={r_o,0.0,0.0};
Point(4)={r_1,0.0,0.0};
Point(5)={r_2,0.0,0.0};
Point(6)={r_i*Cos(Pi/2),r_i*Sin(Pi/2),0.0};
Point(7)={r_o*Cos(Pi/2),r_o*Sin(Pi/2),0.0};
Point(8)={r_1*Cos(Pi/2),r_1*Sin(Pi/2),0.0};
Point(9)={r_2*Cos(Pi/2),r_2*Sin(Pi/2),0.0};
Point(10)={r_i*Cos(Pi),r_i*Sin(Pi),0.0};
Point(11)={r_o*Cos(Pi),r_o*Sin(Pi),0.0};
Point(12)={r_1*Cos(Pi),r_1*Sin(Pi),0.0};
Point(13)={r_2*Cos(Pi),r_2*Sin(Pi),0.0};
Point(14)={r_i*Cos(3*Pi/2),r_i*Sin(3*Pi/2),0.0};
Point(15)={r_o*Cos(3*Pi/2),r_o*Sin(3*Pi/2),0.0};
Point(16)={r_1*Cos(3*Pi/2),r_1*Sin(3*Pi/2),0.0};
Point(17)={r_2*Cos(3*Pi/2),r_2*Sin(3*Pi/2),0.0};
//+
Line(1) = {2, 4};
//+
Line(2) = {6, 8};
//+
Line(3) = {10, 12};
//+
Line(4) = {14, 16};
//+
Circle(5) = {4, 1, 8};
//+
Circle(6) = {5, 1, 9};
//+
Circle(7) = {3, 1, 7};
//+
Line(8) = {8, 9};
//+
Line(9) = {9, 7};
//+
Line(10) = {5, 3};
//+
Line(11) = {4, 5};
//+
Circle(12) = {8, 1, 12};
//+
Circle(13) = {9, 1, 13};
//+
Circle(14) = {7, 1, 11};
//+
Circle(15) = {12, 1, 16};
//+
Circle(16) = {13, 1, 17};
//+
Circle(17) = {11, 1, 15};
//+
Circle(18) = {16, 1, 4};
//+
Circle(19) = {17, 1, 5};
//+
Circle(20) = {15, 1, 3};
//+
Line(21) = {12, 13};
//+
Line(22) = {13, 11};
//+
Line(23) = {16, 17};
//+
Line(24) = {17, 15};
//+
Circle(25) = {2, 1, 6};
//+
Circle(26) = {6, 1, 10};
//+
Circle(27) = {10, 1, 14};
//+
Circle(28) = {14, 1, 2};
//+
Curve Loop(1) = {1, 5, -2, -25};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {12, -3, -26, 2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {12, 21, -13, -8};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {14, -22, -13, 9};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {6, 9, -7, -10};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {4, 18, -1, -28};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {27, 4, -15, -3};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {15, 23, -16, -21};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {16, 24, -17, -22};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {19, 10, -20, -24};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {11, -19, -23, 18};
//+
Plane Surface(11) = {11};
//+
Transfinite Curve {25, 5, 6, 7} = 11 Using Progression 1;
//+
Transfinite Curve {26, 12, 13, 14} = 11 Using Progression 1;
//+
Transfinite Curve {27, 15, 16, 17} = 11 Using Progression 1;
//+
Transfinite Curve {28, 18, 19, 20} = 11 Using Progression 1;
//+
Transfinite Curve {3, 4, 1, 2} = 11 Using Progression 1;
//+
Transfinite Curve {9, 22, 24, 10} = 7 Using Progression 1;
//+
Transfinite Curve {8, 21, 23, 11} = 7 Using Progression 1;
//+
Transfinite Surface {1} = {6, 2, 4, 8};
//+
Transfinite Surface {5} = {9, 5, 3, 7};
//+
Recombine Surface {1, 5};
//+
Transfinite Surface {2} = {10, 6, 8, 12};
//+
Recombine Surface {2};
//+
Transfinite Surface {7} = {14, 10, 12, 16};
//+
Recombine Surface {7};
//+
Transfinite Surface {6} = {2, 14, 16, 4};
//+
Recombine Surface {6};
//+
Transfinite Surface {3} = {12, 8, 9, 13};
//+
Transfinite Surface {4} = {9, 7, 11, 13};
//+
Recombine Surface {3, 4};
//+
Transfinite Surface {8} = {12, 13, 17, 16};
//+
Recombine Surface {8};
//+
Transfinite Surface {9} = {13, 11, 15, 17};
//+
Transfinite Surface {11} = {16, 17, 5, 4};
//+
Transfinite Surface {10} = {17, 15, 3, 5};
//+
Recombine Surface {8, 9, 11, 10};
//+
Extrude {0, 0, t} {
  Surface{7}; Surface{6}; Surface{1}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Surface{11}; Surface{10}; Surface{8}; Surface{9}; Layers {4}; Recombine;
}
//+
//+
Physical Volume("DISC", 271) = {1, 10, 11, 2, 8, 9, 3, 7, 4, 5, 6};
