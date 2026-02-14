x=400.;
y=500.;
Point(1)={0.0,0.0,0.0};
Point(2)={x,0.0,0.0};
Point(3)={2*x,0.0,0.0};
Point(4)={3*x,0.0,0.0};
Point(5)={4*x,0.0,0.0};
Point(6)={0.0,y,0.0};
Point(7)={x,y,0.0};
Point(8)={2*x,y,0.0};
Point(9)={3*x,y,0.0};
Point(10)={4*x,y,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 10};
//+
Line(6) = {10, 9};
//+
Line(7) = {9, 8};
//+
Line(8) = {8, 7};
//+
Line(9) = {7, 6};
//+
Line(10) = {6, 1};
//+
Line(11) = {2, 7};
//+
Line(12) = {3, 8};
//+
Line(13) = {4, 9};
//+
Curve Loop(1) = {10, 1, 11, 9};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {8, -11, 2, 12};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, -12, 3, 13};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {5, 6, -13, 4};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {1, 2, 3, 7, 4, 6, 9, 8} = 41 Using Progression 1;
//+
Transfinite Curve {10, 11, 12, 13, 5} = 51 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 7, 6};
//+
Transfinite Surface {2} = {2, 3, 8, 7};
//+
Transfinite Surface {3} = {3, 4, 9, 8};
//+
Transfinite Surface {4} = {4, 5, 10, 9};
//+
Recombine Surface {1, 2, 3, 4};
//+
Physical Surface("MBB", 14) = {1, 2, 3, 4};
