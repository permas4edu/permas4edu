l=3.;
w=2.;
Point(1)={0.0,0.0,0.0};
Point(2)={l,0.0,0.0};
Point(3)={l,w,0.0};
Point(4)={0.0,w,0.0};
//
Point(5)={l,0.0,0.0};
Point(6)={2*l,0.0,0.0};
Point(7)={2*l,w,0.0};
Point(8)={l,w,0.0};
//
Point(9)={2*l,0.0,0.0};
Point(10)={3*l,0.0,0.0};
Point(11)={3*l,w,0.0};
Point(12)={2*l,w,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 5};

Line(9) = {9, 10};
//+
Line(10) = {10, 11};
//+
Line(11) = {11, 12};
//+
Line(12) = {12, 9};
Curve Loop(1) = {1, 2, 3, 4};
Curve Loop(2) = {5, 6, 7, 8};
Curve Loop(3) = {9, 10, 11, 12};
//+
Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};
//+
Transfinite Curve {1, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
Transfinite Surface {2} = {5, 6, 7, 8};
Transfinite Surface {3} = {9,10,11,12};
//+
Physical Surface("PANEL_A", 13) = {1};
//+
Physical Surface("PANEL_B", 14) = {2};
//+
Physical Surface("PANEL_C", 15) = {3};
