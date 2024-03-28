L = 0.242;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,0.0,L};
//+
Line(1) = {1, 2};
//+
Physical Curve("BEAM", 2) = {1};
//+
Transfinite Curve {1} = 101 Using Progression 1;
