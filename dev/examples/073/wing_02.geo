Point(1)={0.0,0.0,0.0};
Point(2)={1000.0,142.0,0.0};
Point(3)={990.0,217.0,0.0};
Point(4)={0.0,173.0,0.0};
Point(5)={-100.0,0.0,0.0};
Point(6)={-100.0,173.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {1, 5};
//+
Line(6) = {5, 6};
//+
Line(7) = {6, 4};
//+
Curve Loop(1) = {5, 6, 7, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {1, 2, 3, 4};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 3} = 102 Using Progression 1;
//+
Transfinite Curve {6, 4, 2} = 18 Using Progression 1;
//+
Transfinite Curve {5, 7} = 11 Using Progression 1;
//+
Transfinite Surface {1} = {5, 1, 4, 6};
//+
Transfinite Surface {2} = {1, 2, 3, 4};
//+
Recombine Surface {1, 2};
//+
Physical Surface("WING", 8) = {1, 2};
