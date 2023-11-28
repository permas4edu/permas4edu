a=1.2;
b=1.0;
// Table 9
// Cutout ratios 
a_c1=a/6;
b_c1=0.1*b;
// Cutout position
r_x1=2*a/3;
r_y1=0.5*b;
//
//
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0,b,0.0};
//
Point(5)={r_x1,r_y1,0.0};
Point(6)={r_x1+a_c1,r_y1,0.0};
Point(7)={r_x1+a_c1,r_y1+b_c1,0.0};
Point(8)={r_x1,r_y1+b_c1,0.0};
//
Point(9)={r_x1,0.0,0.0};
Point(10)={r_x1+a_c1,0.0,0.0};
Point(11)={a,r_y1,0.0};
Point(12)={a,r_y1+b_c1,0.0};
Point(13)={r_x1,b,0.0};
Point(14)={r_x1+a_c1,b,0.0};
Point(15)={0.0,r_y1,0.0};
Point(16)={0.0,r_y1+b_c1,0.0};
//+
Line(1) = {1, 9};
//+
Line(2) = {9, 5};
//+
Line(3) = {5, 15};
//+
Line(4) = {15, 1};
//+
Line(5) = {9, 10};
//+
Line(6) = {10, 6};
//+
Line(7) = {6, 5};
//+
Line(8) = {10, 2};
//+
Line(9) = {2, 11};
//+
Line(10) = {11, 6};
//+
Line(11) = {15, 16};
//+
Line(12) = {16, 8};
//+
Line(13) = {8, 5};
//+
Line(14) = {7, 6};
//+
Line(15) = {7, 12};
//+
Line(16) = {12, 11};
//+
Line(17) = {16, 4};
//+
Line(18) = {4, 13};
//+
Line(19) = {13, 8};
//+
Line(20) = {8, 7};
//+
Line(21) = {7, 14};
//+
Line(22) = {14, 13};
//+
Line(23) = {14, 3};
//+
Line(24) = {3, 12};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -7, -6, -5};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {6, -10, -9, -8};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {3, 11, 12, 13};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {15, 16, 10, -14};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {17, 18, 19, -12};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {19, 20, 21, 22};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {21, 23, 24, -15};
//+
Plane Surface(8) = {8};
//+
Physical Surface("PLATE", 25) = {1, 2, 3, 4, 5, 6, 7, 8};
//+
MeshSize {1, 9, 10, 2, 15, 5, 6, 11, 16, 8, 7, 12, 4, 13, 14, 3} = 0.02;
//+
Transfinite Surface {1} = {1, 9, 5, 15};
//+
Transfinite Surface {2} = {9, 10, 6, 5};
//+
Transfinite Surface {3} = {10, 2, 11, 6};
//+
Transfinite Surface {4} = {15, 5, 8, 16};
//+
Transfinite Surface {5} = {6, 11, 12, 7};
//+
Transfinite Surface {6} = {16, 8, 13, 4};
//+
Transfinite Surface {7} = {8, 7, 14, 13};
//+
Transfinite Surface {8} = {7, 12, 3, 14};
//+
Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8};
