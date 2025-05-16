Point(1)={0.0,0.0,0.0};
Point(2)={0.5,0.0,0.0};
Point(3)={0.9,0.0,0.0};
Point(4)={1.3,0.0,0.0};
Point(5)={2.1,0.0,0.0};
Point(6)={2.5,0.0,0.0};
Point(7)={3.0,0.0,0.0};
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
Physical Curve("SHAFT", 7) = {1, 2, 3, 4, 5, 6};
//+
Transfinite Curve {1} = 6 Using Progression 1;
//+
Transfinite Curve {2} = 5 Using Progression 1;
//+
Transfinite Curve {3} = 5 Using Progression 1;
//+
Transfinite Curve {4} = 9 Using Progression 1;
//+
Transfinite Curve {5} = 5 Using Progression 1;
//+
Transfinite Curve {6} = 6 Using Progression 1;
