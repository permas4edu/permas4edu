a=10.;
b=5.;
c=5.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={0.0,b,0.0};
Point(4)={a,b,0.0};
Point(5)={0.0,0.0,c};
Point(6)={a,0.0,c};
Point(7)={0.0,b,c};
Point(8)={a,b,c};//+
Line(1) = {1, 5};
//+
Line(2) = {2, 6};
//+
Line(3) = {3, 7};
//+
Line(4) = {4, 8};
//+
Line(5) = {5, 6};
//+
Line(6) = {7, 8};
//+
Line(7) = {5, 7};
//+
Line(8) = {6, 8};
//+
Transfinite Curve {1, 2, 3, 4} = 6 Using Progression 1;
//+
Transfinite Curve {7, 8} = 6 Using Progression 1;
//+
Transfinite Curve {6, 5} = 11 Using Progression 1;
//+
Physical Curve("COLUMNS", 9) = {3, 1, 4, 2};
//+
Physical Curve("BEAMS", 10) = {5, 6, 7, 8};
