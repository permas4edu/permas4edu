R=2.;
a=10.;
b=10.;
Point(1)={0.0,0.0,0.0};
Point(2)={-R,0.0,0.0};
Point(3)={0.0,R,0.0};
Point(4)={-a,0.0,0.0};
Point(5)={-a,b,0.0};
Point(6)={0.0,b,0.0};
//+
Line(1) = {3, 6};
//+
Line(2) = {6, 5};
//+
Line(3) = {5, 4};
//+
Line(4) = {4, 2};
//+
Circle(5) = {3, 1, 2};
//+
Curve Loop(1) = {3, 4, -5, 1, 2};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {3, 2} = 101 Using Progression 1;
//+
Transfinite Curve {5} = 201 Using Progression 1;
//+
Transfinite Curve {4, 1} = 79 Using Progression 1;
//+
Transfinite Surface {1} = {2, 3, 6, 4};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 6) = {1};
