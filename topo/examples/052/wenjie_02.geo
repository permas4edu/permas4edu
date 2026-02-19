a=100.;
b=100.;
d=40.;
r=42.5;
h=5.;
alpha=Asin(20/r);
Point(1)={0.0,0.0,0.0};
Point(2)={d,0.0,0.0};
Point(3)={a,0.0,0.0};
Point(4)={a,d,0.0};
Point(5)={d,d,0.0};
Point(6)={d,b,0.0};
Point(7)={0.0,b,0.0};
Point(8)={0.0,d,0.0};
Point(9)={a,d+r,0.0};  // Center of circle
Point(10)={a-r,d+r,0.0};
Point(11)={a+r,d+r,0.0};
Point(12)={a-r*Sin(alpha),d+r-r*Cos(alpha),0.0};
Point(13)={a+r*Sin(alpha),d+r-r*Cos(alpha),0.0};
Point(14)={a-r*Sin(alpha),d+r-r*Cos(alpha)+h,0.0};
Point(15)={a+r*Sin(alpha),d+r-r*Cos(alpha)+h,0.0};//+
Line(1) = {14, 15};
//+
Line(2) = {12, 14};
//+
Circle(3) = {13, 9, 12};
//+
Line(4) = {13, 15};
//+
Line(5) = {2, 3};
//+
Line(6) = {3, 4};
//+
Line(7) = {4, 5};
//+
Line(8) = {5, 2};
//+
Line(9) = {2, 1};
//+
Line(10) = {1, 8};
//+
Line(11) = {8, 5};
//+
Line(12) = {5, 6};
//+
Line(13) = {6, 7};
//+
Line(14) = {7, 8};
//+
Curve Loop(1) = {14, 11, 12, 13};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, 11, 8, 9};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, 8, 5, 6};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {3, 2, 1, -4};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {14, 12} = 41 Using Progression 1;
//+
Transfinite Curve {7, 5} = 41 Using Progression 1;
//+
Transfinite Curve {8, 11, 10, 9, 6, 13} = 41 Using Progression 1;
//+
Transfinite Curve {1, 3} = 41 Using Progression 1;
//+
Transfinite Curve {2, 4} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {8, 5, 6, 7};
//+
Transfinite Surface {2} = {1, 2, 5, 8};
//+
Transfinite Surface {3} = {2, 3, 5, 4};
//+
Transfinite Surface {4} = {14, 12, 13, 15};
//+
Recombine Surface {1, 2, 3, 4};
//+
Extrude {0, 0, 1} {
  Surface{2}; Surface{1}; Surface{3}; Surface{4}; Layers {2}; Recombine;
}
//+
Physical Volume("L_BEAM", 103) = {2, 1, 3};
//+
Physical Volume("BLOCK", 104) = {4};
