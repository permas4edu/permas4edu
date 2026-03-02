x1=70.;
x2=40.;
x3=70.;
x4=70.;
x5=70.;
x6=15.;
x7=15.;
x8=50.;
x9=50.;
x10=50.;
x11=50.;
x12=15.;
x13=15.;
x14=65.;
x15=65.;
x16=65.;
x17=45.;
x18=30.;
Point(1)={0.0,0.0,0.0};
Point(2)={x1,0.0,0.0};
Point(3)={x1+x2,0.0,0.0};
Point(4)={x1+x2+x3,0.0,0.0};
Point(5)={x1+x2+x3+x4,0.0,0.0};
Point(6)={x1+x2+x3+x4+x5,0.0,0.0};
Point(7)={x1+x2+x3+x4+x5+x6,0.0,0.0};
Point(8)={x1+x2+x3+x4+x5+x6+x7,0.0,0.0};
Point(9)={x1+x2+x3+x4+x5+x6+x7+x8,0.0,0.0};
Point(10)={x1+x2+x3+x4+x5+x6+x7+x8+x9,0.0,0.0};
Point(11)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10,0.0,0.0};
Point(12)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11,0.0,0.0};
Point(13)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12,0.0,0.0};
Point(14)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13,0.0,0.0};
Point(15)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14,0.0,0.0};
Point(16)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15,0.0,0.0};
Point(17)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16,0.0,0.0};
Point(18)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16+x17,0.0,0.0};
Point(19)={x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15+x16+x17+x18,0.0,0.0};

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
Line(9) = {9, 10};
//+
Line(10) = {10, 11};
//+
Line(11) = {11, 12};
//+
Line(12) = {12, 13};
//+
Line(13) = {13, 14};
//+
Line(14) = {14, 15};
//+
Line(15) = {15, 16};
//+
Transfinite Curve {1} = 15 Using Progression 1;
//+
Transfinite Curve {2} = 9 Using Progression 1;
//+
Transfinite Curve {3, 4, 5} = 15 Using Progression 1;
//+
Transfinite Curve {6, 7} = 4 Using Progression 1;
//+
Transfinite Curve {8, 9, 10, 11} = 11 Using Progression 1;
//+
Transfinite Curve {12, 13} = 4 Using Progression 1;
//+
Transfinite Curve {14} = 14 Using Progression 1;
//+
Transfinite Curve {15} = 14 Using Progression 1;
//+
Line(16) = {16, 17};
//+
Line(17) = {17, 18};
//+
Line(18) = {18, 19};
//+
Transfinite Curve {16} = 14 Using Progression 1;
//+
Transfinite Curve {17} = 10 Using Progression 1;
//+
Transfinite Curve {18} = 7 Using Progression 1;
//+
Physical Curve("SHAFT", 19) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18};
