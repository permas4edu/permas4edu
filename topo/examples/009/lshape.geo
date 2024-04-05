lc=0.5;
L=100.;
H=50.;
H1=27.5;
L1=55.;
Point(1)={0.0,0.0,0.0,lc};
Point(2)={L,0.0,0.0,lc};
Point(3)={L,H-H1,0.0,lc};
Point(4)={L-L1,H-H1,0.0,lc};
Point(5)={L-L1,H,0.0,lc};
Point(6)={0.0,H,0.0,lc};
Point(7)={0.0,H-H1,0.0,lc};
Point(8)={L-L1,0.0,0.0,lc};//+
Line(1) = {1, 8};
//+
Line(2) = {8, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 4};
//+
Line(5) = {4, 5};
//+
Line(6) = {5, 6};
//+
Line(7) = {6, 7};
//+
Line(8) = {7, 1};
//+
Line(9) = {4, 8};
//+
Line(10) = {4, 7};
//+
Curve Loop(1) = {7, -10, 5, 6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, 1, -9, 10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {4, 9, 2, 3};
//+
Plane Surface(3) = {3};
//+
Transfinite Surface {2} = {1, 8, 4, 7};
//+
Transfinite Surface {3} = {8, 2, 3, 4};
//+
Transfinite Surface {1} = {7, 4, 5, 6};
//+
Recombine Surface {2, 3, 1};
//+
Physical Surface("LSHAPE", 11) = {2, 3, 1};
