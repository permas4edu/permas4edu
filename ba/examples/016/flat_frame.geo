a=6;
b=3;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={2*a,0.0,0.0};
Point(4)={0.0,b,0.0};
Point(5)={a,b,0.0};
Point(6)={2*a,b,0.0};
Point(7)={0.0,2*b,0.0};
Point(8)={a,2*b,0.0};
Point(9)={2*a,2*b,0.0};//+
Line(1) = {1, 4};
//+
Line(2) = {3, 6};
//+
Line(3) = {4, 7};
//+
Line(4) = {6, 9};
//+
Line(5) = {2, 5};
//+
Line(6) = {5, 8};
//+
Line(7) = {4, 5};
//+
Line(8) = {5, 6};
//+
Line(9) = {7, 8};
//+
Line(10) = {8, 9};
//+
Physical Curve("COLUMNS", 11) = {1, 3, 2, 4, 5, 6};
//+
Physical Curve("FLOOR", 12) = {7, 8, 9, 10};
//+
Transfinite Curve {7, 9, 10, 8} = 7 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4, 5, 6} = 4 Using Progression 1;
