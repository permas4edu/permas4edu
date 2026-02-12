a=3.;
b=1.7;
x_f=0.6;
y_f=0.4;
x_d=2.2;
y_d=1.2;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
Point(5)={x_f,y_f,0.0};
Point(6)={x_d,y_d,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Physical Surface("PLATE", 5) = {1};
//+
Transfinite Curve {1, 3} = 31 Using Progression 1;
//+
Transfinite Curve {2, 4} = 18 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Physical Point("F", 6) = {5};
//+
Physical Point("D", 7) = {6};
//+
Recombine Surface {1};
