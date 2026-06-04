L=2.;
x1=0.4;
x2=1.4;
Point(1)={0.0,0.0,0.0};
Point(2)={x1,0.0,0.0};
Point(3)={x2,0.0,0.0};
Point(4)={L,0.0,0.0};
Point(5)={x1,-0.05,0.0};
Point(6)={x2,-0.05,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Physical Curve("BEAM", 4) = {3, 2, 1};
//+
Transfinite Curve {1} = 3 Using Progression 1;
//+
Transfinite Curve {2} = 6 Using Progression 1;
//+
Transfinite Curve {3} = 4 Using Progression 1;
//+
Physical Point("GROUND", 5) = {5, 6};
