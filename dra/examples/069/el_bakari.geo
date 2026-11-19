L=0.9;
x=0.7;
Point(1)={0.0,0.0,0.0};
Point(2)={x,0.0,0.0};
Point(3)={L,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Physical Curve("BEAM", 3) = {1, 2};
//+
Transfinite Curve {1} = 71 Using Progression 1;
//+
Transfinite Curve {2} = 21 Using Progression 1;
