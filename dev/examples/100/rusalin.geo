L=0.78;
Point(1)={0.0,0.0,0.0};
Point(2)={L/2,0.0,0.0};
Point(3)={L,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Physical Curve("BEAM", 3) = {1, 2};
//+
Transfinite Curve {1, 2} = 40 Using Progression 1;
