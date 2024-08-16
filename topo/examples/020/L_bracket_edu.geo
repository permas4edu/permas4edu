Point(1)={0.0,0.0,0.0};
Point(2)={80.0,0.0,0.0};
Point(3)={200.0,0.0,0.0};
Point(4)={200.0,80.0,0.0};
Point(5)={80.0,80.0,0.0};
Point(6)={80.0,200.0,0.0};
Point(7)={0.0,200.0,0.0};
Point(8)={0.0,80.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 1};
//+
Line(10) = {8, 5};
//+
Line(11) = {5, 2};
//+
//+
Curve Loop(1) = {8, 1, -11, -10};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 11, 2, 3};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {5, 6, 7, 10};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {1, 11, 3, 8, 10, 6} = 41 Using Progression 1;
//+
Transfinite Curve {2, 4, 5, 7} = 61 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 5, 8};
//+
Transfinite Surface {2} = {2, 3, 4, 5};
//+
Transfinite Surface {3} = {8, 5, 6, 7};
//+
Recombine Surface {3, 1, 2};
//+
Physical Surface("BRACKET", 12) = {3, 1, 2};
