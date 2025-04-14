L=1.2;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Physical Curve("BEAM", 2) = {1};
//+
Transfinite Curve {1} = 21 Using Progression 1;
