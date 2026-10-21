alpha=60*Pi/180.;
r1=3.0;
r2=5.0;
h1=1.0;
h2=-h1;
Point(1)={r1,0.0,h1};
Point(2)={r1*Cos(alpha),r1*Sin(alpha),h1};
Point(3)={r1*Cos(2*alpha),r1*Sin(2*alpha),h1};
Point(4)={r1*Cos(3*alpha),r1*Sin(3*alpha),h1};
Point(5)={r1*Cos(4*alpha),r1*Sin(4*alpha),h1};
Point(6)={r1*Cos(5*alpha),r1*Sin(5*alpha),h1};
//
Point(7)={r1,0.0,h2};
Point(8)={r1*Cos(alpha),r1*Sin(alpha),h2};
Point(9)={r1*Cos(2*alpha),r1*Sin(2*alpha),h2};
Point(10)={r1*Cos(3*alpha),r1*Sin(3*alpha),h2};
Point(11)={r1*Cos(4*alpha),r1*Sin(4*alpha),h2};
Point(12)={r1*Cos(5*alpha),r1*Sin(5*alpha),h2};
//
Point(13)={r2,0.0,0.0};
Point(14)={r2*Cos(alpha),r2*Sin(alpha),0.0};
Point(15)={r2*Cos(2*alpha),r2*Sin(2*alpha),0.0};
Point(16)={r2*Cos(3*alpha),r2*Sin(3*alpha),0.0};
Point(17)={r2*Cos(4*alpha),r2*Sin(4*alpha),0.0};
Point(18)={r2*Cos(5*alpha),r2*Sin(5*alpha),0.0};//+
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
Line(6) = {6, 1};
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
Line(12) = {12, 7};
//+
Line(13) = {13, 14};
//+
Line(14) = {14, 15};
//+
Line(15) = {15, 16};
//+
Line(16) = {16, 17};
//+
Line(17) = {17, 18};
//+
Line(18) = {18, 13};
//+
Physical Curve("HORIZONTAL", 19) = {17, 5, 11, 4, 6, 16, 18, 10, 12, 3, 1, 2, 9, 7, 8, 15, 13, 14};
//+
Line(19) = {1, 13};
//+
Line(20) = {2, 14};
//+
Line(21) = {3, 15};
//+
Line(22) = {4, 16};
//+
Line(23) = {5, 17};
//+
Line(24) = {6, 18};
//+
Line(25) = {7, 13};
//+
Line(26) = {8, 14};
//+
Line(27) = {9, 15};
//+
Line(28) = {10, 16};
//+
Line(29) = {11, 17};
//+
Line(30) = {12, 18};
//+
Physical Curve("INCLINED", 31) = {19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};
//+
Transfinite Curve {13, 19, 20, 1, 25, 7, 26, 6, 24, 18, 2, 30, 12, 14, 21, 8, 27, 5, 4, 3, 11, 10, 9, 17, 23, 29, 16, 22, 15, 28} = 2 Using Progression 1;
