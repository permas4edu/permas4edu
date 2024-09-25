r=5.;
L=150.;
t=50.;
Point(1)={0.,0.0,0.0};
Point(2)={-r,0.0,0.0};
Point(3)={0.,r,0.0};
Point(4)={0.,-r,0.0};
Point(5)={r,0.0,0.0};
Point(6)={-L+t,0.0,0.0};
Point(7)={-L+t,t,0.0};
Point(8)={0.0,t,0.0};
Point(9)={t,t,0.0};
Point(10)={t,0.0,0.0};
Point(11)={t,-L+t,0.0};
Point(12)={0.0,-L+t,0.0};
Point(13)={t,-t,0.0};
Point(14)={0.0,-t,0.0};
Point(15)={-t,0.0,0.0};
Point(16)={-t,t,0.0};
//+
Circle(1) = {5, 1, 3};
//+
Circle(2) = {3, 1, 2};
//+
Circle(3) = {5, 1, 4};
//+
Line(4) = {3, 8};
//+
Line(5) = {2, 15};
//+
Line(6) = {15, 16};
//+
Line(7) = {16, 8};
//+
Line(8) = {8, 9};
//+
Line(9) = {9, 10};
//+
Line(10) = {10, 5};
//+
Line(11) = {4, 14};
//+
Line(12) = {14, 13};
//+
Line(13) = {13, 10};
//+
Line(14) = {13, 11};
//+
Line(15) = {11, 11};
//+
Line(16) = {11, 12};
//+
Line(17) = {12, 14};
//+
Line(18) = {15, 6};
//+
Line(19) = {6, 7};
//+
Line(20) = {7, 16};
//+
Curve Loop(1) = {18, 19, 20, -6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, 7, -4, 2, 5};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {8, 9, 10, 1, 4};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, 12, 13, 10, 3};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {17, 12, 14, 16};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {11, 10, 4, 5} = 17 Using Progression 1;
//+
Transfinite Curve {16, 12, 13, 9, 8, 6, 19, 7} = 17 Using Progression 1;
//+
Transfinite Curve {17, 14, 18, 20} = 17 Using Progression 1;
//+
Transfinite Curve {2, 1, 3} = 33 Using Progression 1;
//+
Transfinite Surface {1} = {6, 15, 16, 7};
//+
Transfinite Surface {2} = {2, 3, 8, 15};
//+
Transfinite Surface {3} = {3, 5, 10, 8};
//+
Transfinite Surface {4} = {5, 4, 14, 10};
//+
Transfinite Surface {5} = {12, 11, 13, 14};
//+

//+
Recombine Surface {1, 2, 3, 4, 5};
//+
Extrude {0, 0, 15} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Layers {6}; Recombine;
}
//+
Physical Volume("T_member", 146) = {3, 2, 1, 4, 5};
