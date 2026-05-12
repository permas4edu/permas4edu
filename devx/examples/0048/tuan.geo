x1=25.;
x2=45.;
x3=85.;
x4=25.;
x5=120.;
x6=25.;
x7=227.;
x8=10.;
Point(1)={0.0,0.0,0.0};
Point(2)={x1,0.0,0.0};
Point(3)={x1+x2,0.0,0.0};
Point(4)={x1+x2+x3,0.0,0.0};
Point(5)={x1+x2+x3+x4,0.0,0.0};
Point(6)={x1+x2+x3+x4+x5,0.0,0.0};
Point(7)={x1+x2+x3+x4+x5+x6,0.0,0.0};
Point(8)={x1+x2+x3+x4+x5+x6+x7,0.0,0.0};
Point(9)={x1+x2+x3+x4+x5+x6+x7+x8,0.0,0.0};
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
Line(8) = {8, 9};
//+
Transfinite Curve {1} = 3 Using Progression 1;
//+
Transfinite Curve {2} = 10 Using Progression 1;
//+
Transfinite Curve {3} = 18 Using Progression 1;
//+
Transfinite Curve {4} = 3 Using Progression 1;
//+
Transfinite Curve {5} = 25 Using Progression 1;
//+
Transfinite Curve {6} = 3 Using Progression 1;
//+
Transfinite Curve {7} = 46 Using Progression 1;
//+
Transfinite Curve {8} = 2 Using Progression 1;
//+
Physical Curve("SHAFT", 9) = {8, 7, 6, 5, 4, 3, 2, 1};
