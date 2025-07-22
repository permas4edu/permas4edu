L=860.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,L,0.0};
//+
Line(1) = {1, 2};
//+
Physical Curve("SHAFT", 2) = {1};
//+
Transfinite Curve {1} = 34 Using Progression 1;
