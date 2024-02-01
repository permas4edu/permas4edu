a_p = 0.5;
b_p = 0.5;
x_1 = 0.1;
x_2 = 0.4;
y_1 = 0.1;
y_2 = 0.4;
x_h=0.25;
y_h=0.25;
r_h=0.1;
Point(1)={0.0,0.0,0.0};
Point(2)={a_p,0.0,0.0};
Point(3)={a_p,b_p,0.0};
Point(4)={0.0,b_p,0.0};
//
Point(5)={x_1,0.0,0.0};
Point(6)={x_2,0.0,0.0};
Point(7)={a_p,y_1,0.0};
Point(8)={a_p,y_2,0.0};
Point(9)={x_1,b_p,0.0};
Point(10)={x_2,a_p,0.0};
Point(11)={0.0,y_1,0.0};
Point(12)={0.0,y_2,0.0};
//
Point(13)={x_h,y_h,0.0};
Point(14)={x_h+r_h,y_h,0.0};
Point(15)={x_h,y_h+r_h,0.0};
Point(16)={x_h-r_h,y_h,0.0};
Point(17)={x_h,y_h-r_h,0.0};
//
Point(18)={x_h+r_h*Cos(45*Pi/180),y_h+r_h*Sin(45*Pi/180),0.0};
Point(19)={x_h+r_h*Cos(135*Pi/180),y_h+r_h*Sin(135*Pi/180),0.0};
Point(20)={x_h+r_h*Cos(225*Pi/180),y_h+r_h*Sin(225*Pi/180),0.0};
Point(21)={x_h+r_h*Cos(315*Pi/180),y_h+r_h*Sin(315*Pi/180),0.0};

Point(22)={x_h,0.0,0.0};
Point(23)={a_p,y_h,0.0};
Point(24)={x_h,b_p,0.0};
Point(25)={0.0,y_h,0.0};
//+
Circle(1) = {14, 13, 18};
//+
Circle(2) = {18, 13, 15};
//+
Circle(3) = {15, 13, 19};
//+
Circle(4) = {19, 13, 16};
//+
Circle(5) = {16, 13, 20};
//+
Circle(6) = {20, 13, 17};
//+
Circle(7) = {17, 13, 21};
//+
Circle(8) = {21, 13, 14};
//+
Line(9) = {14, 23};
//+
Line(10) = {15, 24};
//+
Line(11) = {16, 25};
//+
Line(12) = {17, 22};
//+
Line(13) = {18, 3};
//+
Line(14) = {19, 4};
//+
Line(15) = {20, 1};
//+
Line(16) = {21, 2};
//+
Line(17) = {23, 3};
//+
Line(18) = {3, 24};
//+
Line(19) = {24, 4};
//+
Line(20) = {4, 25};
//+
Line(21) = {25, 1};
//+
Line(22) = {1, 22};
//+
Line(23) = {22, 2};
//+
Line(24) = {2, 23};
//+
Line(25) = {11, 7};
//+
Line(26) = {12, 8};
//+
Line(27) = {5, 9};
//+
Line(28) = {6, 10};
//+
Curve Loop(1) = {9, 17, -13, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 10, -18, -13};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, 19, -14, -3};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {14, 20, -11, -4};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {11, 21, -15, -5};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {15, 22, -12, -6};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {12, 23, -16, -7};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {16, 24, -9, -8};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {9, 13, 10, 14, 11, 15, 12, 16} = 21 Using Progression 1;
//+
Transfinite Curve {17, 1, 18, 2, 19, 3, 20, 4, 21, 5, 22, 6, 23, 7, 24, 8} = 21 Using Progression 1;
//+
Transfinite Curve {28, 27, 25, 26} = 61 Using Progression 1;
//+
Transfinite Surface {1} = {14, 23, 3, 18};
//+
Transfinite Surface {2} = {3, 24, 15, 18};
//+
Transfinite Surface {3} = {24, 4, 19, 15};
//+
Transfinite Surface {4} = {4, 25, 16, 19};
//+
Transfinite Surface {5} = {25, 1, 20, 16};
//+
Transfinite Surface {6} = {20, 1, 22, 17};
//+
Transfinite Surface {7} = {17, 22, 2, 21};
//+
Transfinite Surface {8} = {21, 2, 23, 14};
//+
Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8};
//+
Physical Surface("PANEL", 29) = {1, 2, 3, 4, 5, 6, 7, 8};
//+
Extrude {0, 0, 0.05} {
  Curve{25}; Curve{26}; Curve{27}; Curve{28}; Layers {5}; Recombine;
}
//+
Physical Surface("STIFFENER_X", 46) = {33, 37};
//+
Physical Surface("STIFFENER_Y", 47) = {41, 45};
