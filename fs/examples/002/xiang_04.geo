L1=1.75;
L = 5.0;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={-L1,0.0,0.0};
Point(4)={0.0,L1,0.0};
Point(5)={0.0,-L1,0.0};
Point(6)={0.4*L1,0.0,0.0};
Point(7)={-0.4*L1,0.0,0.0};
Point(8)={0.0,0.4*L1,0.0};
Point(9)={0.0,-0.4*L1,0.0};
Point(10)={0.4*L1,0.4*L1,0.0};
Point(11)={-0.4*L1,0.4*L1,0.0};
Point(12)={-0.4*L1,-0.4*L1,0.0};
Point(13)={0.4*L1,-0.4*L1,0.0};
Point(14)={L1*Cos(45*Pi/180),L1*Sin(45*Pi/180),0.0};
Point(15)={L1*Cos(3*45*Pi/180),L1*Sin(3*45*Pi/180),0.0};
Point(16)={L1*Cos(5*45*Pi/180),L1*Sin(5*45*Pi/180),0.0};
Point(17)={L1*Cos(7*45*Pi/180),L1*Sin(7*45*Pi/180),0.0};//+
Line(1) = {1, 6};
//+
Line(2) = {6, 10};
//+
Line(3) = {10, 8};
//+
Line(4) = {8, 1};
//+
Line(5) = {6, 2};
//+
Line(6) = {10, 14};
//+
Line(7) = {8, 4};
//+
Circle(8) = {2, 1, 14};
//+
Circle(9) = {14, 1, 4};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, -8, -5, 2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {6, 9, -7, -3};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {9, 8, 2, 3, 4, 1} = 14 Using Progression 1;
//+
Transfinite Curve {7, 6, 5} = 14 Using Progression 1;
//+
Transfinite Surface {1} = {1, 6, 10, 8};
//+
Transfinite Surface {3} = {8, 10, 14, 4};
//+
Transfinite Surface {2} = {6, 2, 14, 10};
//+
Recombine Surface {1, 2, 3};
//+
Extrude {0, 0, L} {
  Surface{2}; Surface{1}; Surface{3}; Layers {25}; Recombine;
}
//+
Physical Volume("CAVITY", 76) = {1, 2, 3};
