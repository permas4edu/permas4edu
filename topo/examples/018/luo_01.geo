r=1;
a=4;
Point(1)={0.0,0.0,0.0};
Point(2)={-r,0.0,0.0};
Point(3)={0.0,r,0.0};
Point(4)={0.0,a,0.0};
Point(5)={-a,a,0.0};
Point(6)={-a,0.0,0.0};
//+
Circle(1) = {3, 1, 2};
//+
Line(2) = {3, 4};
//+
Line(3) = {4, 5};
//+
Line(4) = {5, 6};
//+
Line(5) = {6, 2};
//+
Curve Loop(1) = {4, 5, -1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1} = 81 Using Progression 1;
//+
Transfinite Curve {4, 3} = 41 Using Progression 1;
//+
Transfinite Curve {5, 2} = 61 Using Progression 1;
//+
Transfinite Surface {1} = {2, 3, 4, 6};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 6) = {1};
