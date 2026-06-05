Point(1)={0.0,0.0,0.0};
Point(2)={1.6,0.0,0.0};
Point(3)={0.8,0.0,0.0};
Point(4)={0.0,0.0,0.0};
Point(5)={1.6,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Physical Curve("SHAFT", 2) = {1};
//+
Transfinite Curve {1} = 9 Using Progression 1;
//+
Physical Point("M", 3) = {3};
//+
Physical Point("GROUND", 4) = {4, 5};
