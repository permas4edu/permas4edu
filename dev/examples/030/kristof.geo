lc=2.5;
L1=100.;
L2=250.;
L3=300.;
L4=500.;
w=30.;
h=15.;
t=2.;
h_n=7.0;
Point(1)={0.0,0.0,0.0,lc};
Point(2)={0.0,h,0.0,lc};
Point(3)={L1,0.0,0.0,lc};
Point(4)={L1,h,0.0,lc};
Point(5)={L2,0.0,0.0,lc};
Point(6)={L2,h,0.0,lc};
Point(7)={L3,0.0,0.0,lc};
Point(8)={L3,h,0.0,lc};
Point(9)={L4,0.0,0.0,lc};
Point(10)={L4,h,0.0,lc};
Point(11)={L2-0.5*t,0.0,0.0,lc};
Point(12)={L2+0.5*t,h,0.0,lc};
Point(13)={L2+0.5*t,0.0,0.0,lc};
Point(14)={L2-0.5*t,h,0.0,lc};
Point(15)={L2-0.5*t,0.0,0.0,lc};
Point(16)={L2+0.5*t,h_n,0.0,lc};
Point(17)={L2+0.5*t,0.0,0.0,lc};
Point(18)={L2-0.5*t,h_n,0.0,lc};
Point(19)={0.0,h_n,0.0,lc};
Point(20)={L1,h_n,0.0,lc};
Point(21)={L2,h_n,0.0,lc};
Point(22)={L3,h_n,0.0,lc};
Point(23)={L4,h_n,0.0,lc};//+
Line(1) = {1, 3};
//+
Line(2) = {3, 20};
//+
Line(3) = {20, 19};
//+
Line(4) = {19, 1};
//+
Line(5) = {19, 2};
//+
Line(6) = {20, 4};
//+
Line(7) = {4, 2};
//+
Line(8) = {3, 11};
//+
Line(9) = {11, 18};
//+
Line(10) = {18, 16};
//+
Line(11) = {16, 13};
//+
Line(12) = {13, 7};
//+
Line(13) = {7, 22};
//+
Line(14) = {22, 16};
//+
Line(15) = {16, 12};
//+
Line(16) = {12, 8};
//+
Line(17) = {8, 22};
//+
Line(18) = {18, 14};
//+
Line(19) = {14, 12};
//+
Line(20) = {18, 20};
//+
Line(21) = {4, 14};
//+
Curve Loop(1) = {3, 5, -7, -6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {1, 2, 3, 4};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {20, 6, 21, -18};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {8, 9, 20, -2};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {18, 19, -15, -10};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {16, 17, 14, 15};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {14, 11, 12, 13};
//+
Plane Surface(7) = {7};
//+
Line(22) = {7, 9};
//+
Line(23) = {9, 23};
//+
Line(24) = {23, 22};
//+
Line(25) = {23, 10};
//+
Line(26) = {10, 8};
//+
Curve Loop(8) = {24, -17, -26, -25};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {22, 23, 24, -13};
//+
Plane Surface(9) = {9};
//+
Transfinite Surface {2} = {1, 3, 20, 19};
//+
Transfinite Surface {1} = {19, 20, 4, 2};
//+
Transfinite Surface {4} = {3, 11, 18, 20};
//+
Transfinite Surface {3} = {20, 18, 14, 4};
//+
Transfinite Surface {5} = {18, 16, 12, 14};
//+
Transfinite Surface {6} = {16, 22, 8, 12};
//+
Transfinite Surface {7} = {13, 7, 22, 16};
//+
Transfinite Surface {8} = {22, 23, 10, 8};
//+
Transfinite Surface {9} = {7, 9, 23, 22};
//+
Recombine Surface {3, 4, 7, 6, 8, 9, 5, 1, 2};
//+
Extrude {0, 0, -w} {
  Surface{9}; Surface{8}; Surface{6}; Surface{7}; Surface{5}; Surface{3}; Surface{4}; Surface{2}; Surface{1}; Layers {6}; Recombine;
}
//+
Physical Volume("BEAM", 225) = {8, 9, 6, 7, 5, 4, 3, 2, 1};
