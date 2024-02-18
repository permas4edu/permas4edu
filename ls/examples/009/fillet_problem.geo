lc=0.05;
Point(1)={0.0,0.0,0.0,lc};
Point(2)={0.8,0.0,0.0,lc};
Point(3)={1.4,0.0,0.0,lc};
Point(4)={1.8,0.0,0.0,lc};
Point(5)={1.8,0.4,0.0,lc};
Point(6)={1.4,0.4,0.0,lc};
Point(7)={0.8,0.8,0.0,lc};
Point(8)={0.0,0.8,0.0,lc};
Point(9)={1.4,0.8,0.0,lc};
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
Line(6) = {6, 3};
//+
Line(7) = {8, 1};
//+
Line(8) = {8, 7};
//+
Ellipse(9) = {7, 9, 7, 6};
//+
Curve Loop(1) = {7, 1, 2, -6, -9, -8};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 3, 4};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {9} = 41 Using Progression 1;
//+
Transfinite Curve {7} = 21 Using Progression 1;
//+
Transfinite Curve {1, 2} = 11 Using Progression 1;
//+
Transfinite Curve {8, 6, 4} = 21 Using Progression 1;
//+
Transfinite Curve {5, 3} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {6, 7, 8, 3};
//+
Transfinite Surface {2} = {3, 4, 5, 6};
//+
Recombine Surface {1, 2};
//+
Physical Surface("FILLET", 10) = {1, 2};
