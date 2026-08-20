L=1.0;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={0.0,0.2,0.0};
Point(4)={L,0.2,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {3, 4};
//+
Physical Curve("BEAM_01", 3) = {1};
//+
Physical Curve("BEAM_02", 4) = {2};
//+
Transfinite Curve {1, 2} = 81 Using Progression 1;
