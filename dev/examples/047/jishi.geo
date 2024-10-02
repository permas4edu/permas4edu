L=0.5338;
b=0.027;
marked=0.5;
unmarked=L-marked;
Point(1)={0.0,0.0,0.0};
Point(2)={marked,0.0,0.0};
Point(3)={L,0.0,0.0};
Point(4)={L,b,0.0};
Point(5)={marked,b,0.0};
Point(6)={0.0,b,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 5};
//+
Line(3) = {5, 6};
//+
Line(4) = {6, 1};
//+
Line(5) = {2, 3};
//+
Line(6) = {3, 4};
//+
Line(7) = {4, 5};
//+
Transfinite Curve {1, 3} = 201 Using Progression 1;
//+
Transfinite Curve {4, 2, 6} = 13 Using Progression 1;
//+
Transfinite Curve {5, 7} = 15 Using Progression 1;
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, -2, 5, 6};
//+
Plane Surface(2) = {2};
//+
Transfinite Surface {1} = {1, 2, 5, 6};
//+
Transfinite Surface {2} = {2, 3, 4, 5};
//+
Recombine Surface {1, 2};
//+

//+
Physical Surface("RULER", 8) = {2, 1};
