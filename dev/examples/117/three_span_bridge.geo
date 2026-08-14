L1=36.;
L2=72.;
L3=36.;
H=10.;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1+L2,0.0,0.0};
Point(4)={L1+L2+L3,0.0,0.0};
Point(5)={L1,-H,0.0};
Point(6)={L1+L2,-H,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {5, 2};
//+
Line(5) = {6, 3};
//+
Physical Curve("DECK", 6) = {1, 2, 3};
//+
Physical Curve("PIER", 7) = {4, 5};
//+
Transfinite Curve {4, 5} = 21 Using Progression 1;
//+
Transfinite Curve {1, 3} = 31 Using Progression 1;
//+
Transfinite Curve {2} = 61 Using Progression 1;
