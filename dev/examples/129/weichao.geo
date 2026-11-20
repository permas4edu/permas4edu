L1=24.37;
L2=23.82;
L3=23.95;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,L1,0.0};
Point(3)={0.0,L1+L2,0.0};
Point(4)={0.0,L1+L2+L3,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Physical Curve("SEGMENT_01", 4) = {1};
//+
Physical Curve("SEGMENT_02", 5) = {2};
//+
Physical Curve("SEGMENT_03", 6) = {3};
//+
Transfinite Curve {1, 2, 3} = 25 Using Progression 1;
