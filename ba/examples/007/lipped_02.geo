h=120.;
b=50.;
c=10.;
L=500.;
d=10.;
Theta=60*Pi/180.;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,-h/2,0.0};
Point(3)={0.0, h/2,0.0};
Point(4)={b/2-d*Sin(0.5*Theta), -h/2,0.0};
Point(5)={b/2-d*Sin(0.5*Theta),  h/2,0.0};
Point(6)={b/2+d*Sin(0.5*Theta), -h/2,0.0};
Point(7)={b/2+d*Sin(0.5*Theta),  h/2,0.0};
Point(8)={b/2, -h/2+d*Cos(0.5*Theta),0.0};
Point(9)={b/2,  h/2-d*Cos(0.5*Theta),0.0};
Point(10)={b,-h/2,0.0};
Point(11)={b,+h/2,0.0};
Point(12)={b,-h/2+c,0.0};
Point(13)={b,+h/2-c,0.0};
//+
Line(1) = {1, 3};
//+
Line(2) = {3, 5};
//+
Line(3) = {5, 9};
//+
Line(4) = {9, 7};
//+
Line(5) = {7, 11};
//+
Line(6) = {11, 13};
//+
Line(7) = {1, 2};
//+
Line(8) = {2, 4};
//+
Line(9) = {4, 8};
//+
Line(10) = {8, 6};
//+
Line(11) = {6, 10};
//+
Line(12) = {10, 12};
//+
Transfinite Curve {1, 7} = 13 Using Progression 1;
//+
Transfinite Curve {2, 8, 11, 5} = 5 Using Progression 1;
//+
Transfinite Curve {3, 4, 9, 10} = 3 Using Progression 1;
//+
Transfinite Curve {6, 12} = 3 Using Progression 1;
//+
Extrude {0, 0, 500} {
  Curve{8}; Curve{11}; Curve{10}; Curve{9}; Curve{12}; Curve{7}; Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Layers {100}; Recombine;
}
//+
Physical Surface("CHANNEL", 61) = {44, 40, 48, 52, 36, 56, 60, 16, 28, 24, 20, 32};
