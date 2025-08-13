L=20.;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Physical Curve("ROD", 2) = {1};
//+
Transfinite Curve {1} = 101 Using Progression 1;
