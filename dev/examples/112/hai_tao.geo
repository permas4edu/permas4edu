l1=88.5;
l2=56.2;
lm=9.8;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,l1,0.0};
Point(3)={l2,l1,0.0};
Point(4)={l2+lm,l1,0.0};
Point(5)={2*l2+lm,l1,0.0};
Point(6)={2*l2+lm,0.0,0.0};
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
Physical Curve("FRAME", 6) = {1, 2, 3, 4, 5};
//+
Transfinite Curve {1, 5} = 19 Using Progression 1;
//+
Transfinite Curve {2, 4} = 13 Using Progression 1;
//+
Transfinite Curve {3} = 3 Using Progression 1;
