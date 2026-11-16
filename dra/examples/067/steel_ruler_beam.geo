a=640.;
b=30.;
c=1.;
Point(1)={0.0,0.0,0.0};
Point(33)={0.0,0.0,a};
//+
Line(1) = {1, 33};
//+
Physical Curve("BEAM", 2) = {1};
//+
Transfinite Curve {1} = 33 Using Progression 1;
