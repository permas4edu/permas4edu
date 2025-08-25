L=914.;
Point(1)={0.0,0.0,0.0};
Point(2)={345.,0.0,0.0}; // disc1
Point(3)={657.,0.0,0.0}; // disc2
Point(4)={124.,0.0,0.0}; // bearing1
Point(5)={862.,0.0,0.0}; // bearing2
Point(6)={L,0.0,0.0};
//+
Line(1) = {1, 4};
//+
Line(2) = {4, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 5};
//+
Line(5) = {5, 6};
//+
Transfinite Curve {1} = 5 Using Progression 1;
Transfinite Curve {2} = 9 Using Progression 1;
Transfinite Curve {3} =13 Using Progression 1;
Transfinite Curve {4} = 8 Using Progression 1;
Transfinite Curve {5} = 2 Using Progression 1;
//+
Physical Curve("SHAFT", 6) = {1, 2, 3, 4, 5};
