a=0.25;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={0.0,a,0.0};
Point(4)={1.0,0.0,0.0};
Point(5)={1.0,1.0,0.0};
Point(6)={0.0,1.0,0.0};
//+
Line(1) = {2, 4};
//+
Line(2) = {4, 5};
//+
Line(3) = {5, 6};
//+
Line(4) = {6, 3};
//+
Circle(5) = {2, 1, 3};
//+
Curve Loop(1) = {4, -5, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {4, 1} = 26 Using Progression 1;
//+
Transfinite Curve {3, 2} = 21 Using Progression 1;
//+
Transfinite Curve {5} = 41 Using Progression 1;
//+
Transfinite Surface {1} = {3, 2, 4, 6};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 6) = {1};
