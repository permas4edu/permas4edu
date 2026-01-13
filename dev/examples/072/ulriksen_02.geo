Point(1)={0.0,0.0,0.0};
Point(2)={0.0,330.0,0.0};
Point(3)={0.0,580.0,0.0};
Point(4)={0.0,719.0,0.0};
Point(5)={0.0,851.0,0.0};
Point(6)={0.0,1154.0,0.0};
Point(7)={0.0,1351.0,0.0};
Point(8)={0.0,1705.0,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Transfinite Curve {1} = 34 Using Progression 1;
//+
Transfinite Curve {2} = 26 Using Progression 1;
//+
Transfinite Curve {3} = 15 Using Progression 1;
//+
Transfinite Curve {4} = 14 Using Progression 1;
//+
Transfinite Curve {5} = 31 Using Progression 1;
//+
Transfinite Curve {6} = 21 Using Progression 1;
//+
Transfinite Curve {7} = 37 Using Progression 1;
//+
Physical Curve("BEAM", 8) = {1, 2, 3, 4, 5, 6, 7};
