R1=30.;
R2=60.;
Point(1)={0.0,0.0,0.0};
Point(2)={R1*Cos(60*Pi/180),R1*Sin(60*Pi/180),0.0};
Point(3)={R1*Cos(2*60*Pi/180),R1*Sin(2*60*Pi/180),0.0};
Point(4)={R1*Cos(3*60*Pi/180),R1*Sin(3*60*Pi/180),0.0};
Point(5)={R1*Cos(4*60*Pi/180),R1*Sin(4*60*Pi/180),0.0};
Point(6)={R1*Cos(5*60*Pi/180),R1*Sin(5*60*Pi/180),0.0};
Point(7)={R1*Cos(6*60*Pi/180),R1*Sin(6*60*Pi/180),0.0};
//
Point(8)={R2*Cos(60*Pi/180),R2*Sin(60*Pi/180),0.0};
Point(9)={R2*Cos(2*60*Pi/180),R2*Sin(2*60*Pi/180),0.0};
Point(10)={R2*Cos(3*60*Pi/180),R2*Sin(3*60*Pi/180),0.0};
Point(11)={R2*Cos(4*60*Pi/180),R2*Sin(4*60*Pi/180),0.0};
Point(12)={R2*Cos(5*60*Pi/180),R2*Sin(5*60*Pi/180),0.0};
Point(13)={R2*Cos(6*60*Pi/180),R2*Sin(6*60*Pi/180),0.0};//+
Circle(1) = {7, 1, 2};
//+
Circle(2) = {2, 1, 3};
//+
Circle(3) = {3, 1, 4};
//+
Circle(4) = {4, 1, 5};
//+
Circle(5) = {5, 1, 6};
//+
Circle(6) = {6, 1, 7};
//+
Circle(7) = {13, 1, 8};
//+
Circle(8) = {8, 1, 9};
//+
Circle(9) = {9, 1, 10};
//+
Circle(10) = {10, 1, 11};
//+
Circle(11) = {11, 1, 12};
//+
Circle(12) = {12, 1, 13};
//+
Line(13) = {7, 13};
//+
Line(14) = {2, 8};
//+
Line(15) = {3, 9};
//+
Line(16) = {4, 10};
//+
Line(17) = {5, 11};
//+
Line(18) = {6, 12};
//+
Curve Loop(1) = {1, 14, -7, -13};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {14, 8, -15, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {9, -16, -3, 15};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {16, 10, -17, -4};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {17, 11, -18, -5};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {18, 12, -13, -6};
//+
Plane Surface(6) = {6};
//+
Transfinite Curve {1, 2, 3, 4, 5, 6} = 31 Using Progression 1;
//+
Transfinite Curve {7, 8, 9, 10, 11, 12} = 31 Using Progression 1;
//+
Transfinite Curve {13, 14, 15, 16, 17, 18} = 16 Using Progression 1;
//+
Transfinite Surface {1} = {7, 13, 8, 2};
//+
Transfinite Surface {2} = {2, 8, 9, 3};
//+
Transfinite Surface {3} = {9, 10, 4, 3};
//+
Transfinite Surface {4} = {10, 11, 5, 4};
//+
Transfinite Surface {5} = {5, 11, 12, 6};
//+
Transfinite Surface {6} = {6, 12, 13, 7};
//+
Recombine Surface {1, 2, 3, 4, 5, 6};
//+
Extrude {0, 0, 30} {
  Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Layers {15}; Recombine;
}
//+
Extrude {0, 0, 50} {
  Curve{23}; Curve{27}; Curve{19}; Curve{39}; Curve{35}; Curve{31}; Layers {25}; Recombine;
}
//+
Point(38) = {-35, 0, 30};
//+
Point(39) = {-60, 0, 5};
Point(40) = {-60, 0,30};
Point(41) = {-60+25*Cos(45*Pi/180), 0,30-25*Sin(45*Pi/180)};//+
Circle(64) = {39, 40, 41};
//+
Circle(65) = {41, 40, 38};
//+
Line(66) = {38, 22};
//+
Line(67) = {39, 10};
//+
Line(68) = {41, 4};
//+
Transfinite Curve {64, 65} = 16 Using Progression 1;
//+
Transfinite Curve {66, 68, 67} = 5 Using Progression 1;
//+
Curve Loop(7) = {65, 66, -29, -68};
//+
Plane Surface(67) = {7};
//+
Curve Loop(8) = {64, 68, 16, -67};
//+
Plane Surface(68) = {8};
//+
Transfinite Surface {68} = {39, 10, 4, 41};
//+
Transfinite Surface {67} = {41, 4, 22, 38};
//+
Recombine Surface {68, 67};
//+//+
Physical Surface("CYLINDER", 69) = {66, 62, 58, 42, 38, 34, 50, 30, 46, 26, 54, 22};
//+
Physical Surface("ANNULUS", 70) = {6, 1, 5, 4, 3, 2};
//+
Physical Surface("RIB", 71) = {67, 68};
