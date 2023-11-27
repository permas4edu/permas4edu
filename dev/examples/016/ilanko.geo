Point(1)={0.0,0.0,0.0};
Point(2)={0.2,0.0,0.0};
Point(3)={1.2,0.0,0.0};

Line(1) = {1, 2};
Line(2) = {2, 3};
//+
Transfinite Curve {1} = 3 Using Progression 1;
Transfinite Curve {2} = 11 Using Progression 1;
//+
Physical Curve("BEAM", 3) = {1, 2};
