L = 2.;
Point(1) = {0.0,0.0,0.0};
Point(2) = {0.25*L,0.0,0.0};
Point(3) = {0.5*L,0.0,0.0};
Point(4) = {0.75*L,0.0,0.0};
Point(5) = {L,0.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Transfinite Curve {1, 2, 3, 4} = 21 Using Progression 1;
//+
Physical Curve("BEAM", 5) = {1, 2, 3, 4};
