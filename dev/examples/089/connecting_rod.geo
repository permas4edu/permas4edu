a=0.2;
h0=0.1;
R1=1.2*a;
R2=0.8*a;
R3=0.8*a;
R4=0.4*a;
Point(1)={2*a,0.0,0.0}; //
Point(2)={2*a+R3,0.0,0.0}; //
Point(3)={2*a+R4,0.0,0.0}; //
Point(4)={2*a,R3,0.0}; //
Point(5)={2*a,R4,0.0}; //
Point(7)={2*a,-R3,0.0}; //
Point(8)={2*a,-R4,0.0}; //
Point(9)= {2*a-R3*Cos(30*Pi/180),R3*Sin(30*Pi/180),0.0};
Point(10)={2*a-R3*Cos(30*Pi/180),-R3*Sin(30*Pi/180),0.0};
Point(11)={-2*a,0.0,0.0};
Point(12)={-2*a,R1,0.0};
Point(13)={-2*a,R2,0.0};
Point(14)={-2*a,-R1,0.0};
Point(15)={-2*a,-R2,0.0};
Point(16)={-2*a+R2*Cos(45*Pi/180),R2*Sin(45*Pi/180),0.0};
Point(17)={-2*a+R1*Cos(45*Pi/180),R1*Sin(45*Pi/180),0.0};
Point(18)={-2*a+R2*Cos(45*Pi/180),-R2*Sin(45*Pi/180),0.0};
Point(19)={-2*a+R1*Cos(45*Pi/180),-R1*Sin(45*Pi/180),0.0};
Point(20)= {2*a-R4*Cos(30*Pi/180),R4*Sin(30*Pi/180),0.0};
Point(21)={2*a-R4*Cos(30*Pi/180),-R4*Sin(30*Pi/180),0.0};//+
Circle(1) = {17, 11, 19};
//+
Circle(2) = {18, 11, 16};
//+
Circle(3) = {9, 1, 10};
//+
Circle(4) = {21, 1, 20};
//+
Circle(5) = {3, 1, 5};
//+
Circle(6) = {5, 1, 20};
//+
Circle(7) = {21, 1, 8};
//+
Circle(8) = {8, 1, 3};
//+
Circle(9) = {2, 1, 4};
//+
Circle(10) = {4, 1, 9};
//+
Circle(11) = {10, 1, 7};
//+
Circle(12) = {7, 1, 2};
//+
Circle(13) = {16, 11, 13};
//+
Circle(14) = {17, 11, 12};
//+
Circle(15) = {15, 11, 18};
//+
Circle(16) = {14, 11, 19};
//+
Line(17) = {17, 9};
//+
Line(18) = {10, 19};
//+
Line(19) = {19, 18};
//+
Line(20) = {16, 17};
//+
Line(21) = {13, 12};
//+
Line(22) = {15, 14};
//+
Line(23) = {7, 8};
//+
Line(24) = {21, 10};
//+
Line(25) = {20, 9};
//+
Line(26) = {5, 4};
//+
Line(27) = {3, 2};
//+
Curve Loop(1) = {15, -19, -16, -22};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {1, 19, 2, 20};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {13, 21, -14, -20};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {17, 3, 18, -1};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {24, -3, -25, -4};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {10, -25, -6, 26};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {9, -26, -5, 27};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {8, 27, -12, 23};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {7, -23, -11, -24};
//+
Plane Surface(9) = {9};
//+
Transfinite Curve {2, 1, 3, 4} = 19 Using Progression 1;
//+
Transfinite Curve {9, 12, 8, 5} = 11 Using Progression 1;
//+
Transfinite Curve {25, 26, 27, 23, 24} = 5 Using Progression 1;
//+
Transfinite Curve {20, 21, 19, 22} = 5 Using Progression 1;
//+
Transfinite Curve {15, 16, 13, 14} = 10 Using Progression 1;
//+
Transfinite Curve {18, 17} = 26 Using Progression 1;
//+
Transfinite Curve {10, 6, 7, 11} = 9 Using Progression 1;
//+
Transfinite Surface {4} = {19, 10, 9, 17};
//+
Transfinite Surface {3} = {13, 16, 17, 12};
//+
Transfinite Surface {2} = {18, 19, 17, 16};
//+
Transfinite Surface {1} = {18, 15, 14, 19};
//+
Transfinite Surface {5} = {9, 10, 21, 20};
//+
Transfinite Surface {6} = {4, 9, 20, 5};
//+
Transfinite Surface {9} = {21, 10, 7, 8};
//+
Transfinite Surface {8} = {8, 7, 2, 3};
//+
Transfinite Surface {7} = {4, 5, 3, 2};
//+
Recombine Surface {1, 9, 2, 8, 4, 5, 3, 6, 7};
//+
Physical Surface("ROD", 28) = {7, 6, 8, 5, 9, 3, 4, 2, 1};
//+
Extrude {0, 0, 0.3*h0} {
  Surface{4}; Surface{1}; Surface{2}; Surface{3}; Surface{5}; Surface{9}; Surface{6}; Surface{7}; Surface{8}; Layers {3}; Recombine;
}
//+
Extrude {0, 0, -0.3*h0} {
  Surface{1}; Surface{2}; Surface{3}; Surface{5}; Surface{6}; Surface{7}; Surface{9}; Surface{8}; Surface{4}; Layers {3}; Recombine;
}
//+
Extrude {0, 0, 0.2*h0} {
  Surface{116}; Surface{94}; Surface{72}; Surface{182}; Surface{204}; Surface{160}; Surface{138}; Surface{226}; Layers {2}; Recombine;
}
//+
Extrude {0, 0, -0.2*h0} {
  Surface{292}; Surface{270}; Surface{248}; Surface{380}; Surface{402}; Surface{314}; Surface{336}; Surface{358}; Layers {2}; Recombine;
}
//+
Physical Volume("PATCH_01", 777) = {27, 12, 4, 19, 28, 11, 3, 20, 21, 2, 10, 29};
//+
Physical Volume("PATCH_02", 778) = {18, 1};
//+
Physical Volume("PATCH_03", 779) = {33, 34, 14, 15, 7, 8, 32, 22, 23, 13, 5, 31, 25, 30, 17, 16, 9, 6, 26, 24};
