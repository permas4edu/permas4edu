a=6.;
b=3.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,b,0.0};
Point(3)={a,b,0.0};
Point(4)={a,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Transfinite Curve {1, 3} = 7 Using Progression 1;
//+
Transfinite Curve {2} = 13 Using Progression 1;
//+
Physical Curve("FRAME", 4) = {1, 2, 3};
