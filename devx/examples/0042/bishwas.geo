L=0.6;
Point(1)={0.0,0.0,0.0};
Point(2)={L/3,0.0,0.0};
Point(3)={2*L/3,0.0,0.0};
Point(4)={L,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Physical Curve("SHAFT", 4) = {1, 2, 3};
//+
Transfinite Curve {1, 2, 3} = 21 Using Progression 1;
