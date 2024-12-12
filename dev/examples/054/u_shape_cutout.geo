lx=1.0;
ly=lx;
eta1=0.3;
eta2=0.1;
eta3=1-eta2;
a=lx*eta1;
b=a;
c=a*eta2;
d=b*eta3;
xa=lx/2;
ya=ly/2;
Point(1)={0.0,0.0,0.0};
Point(2)={lx,0.0,0.0};
Point(3)={lx,ly,0.0};
Point(4)={0.0,ly,0.0};
Point(5)={xa-a/2,ya-b/2,0.0};
Point(6)={xa+a/2,ya-b/2,0.0};
Point(7)={xa+a/2,ya+b/2,0.0};
Point(8)={xa-a/2,ya+b/2,0.0};
Point(9)={xa-a/2+c,ya-b/2,0.0};
Point(10)={xa+a/2-c,ya-b/2,0.0};
Point(11)={xa-a/2+c,ya-b/2+b-d,0.0};
Point(12)={xa+a/2-c,ya-b/2+b-d,0.0};
Point(13)={xa+a/2-c,ya+b/2,0.0};
Point(14)={xa-a/2+c,ya+b/2,0.0};
Point(15)={xa-a/2,ya-b/2+b-d,0.0};
Point(16)={xa+a/2,ya-b/2+b-d,0.0};
Point(17)={xa-a/2,0.0,0.0};
Point(18)={xa-a/2+c,0.0,0.0};
Point(19)={xa+a/2,0.0,0.0};
Point(20)={xa+a/2-c,0.0,0.0};
Point(21)={xa-a/2,ly,0.0};
Point(22)={xa-a/2+c,ly,0.0};
Point(23)={xa+a/2,ly,0.0};
Point(24)={xa+a/2-c,ly,0.0};
//
Point(25)={0.0,ya-b/2,0.0};
Point(26)={0.0,ya-b/2+b-d,0.0};
Point(27)={0.0,ya+b/2,0.0};
Point(28)={lx,ya-b/2,0.0};
Point(29)={lx,ya-b/2+b-d,0.0};
Point(30)={lx,ya+b/2,0.0};//+
Line(1) = {1, 17};
//+
Line(2) = {17, 5};
//+
Line(3) = {5, 25};
//+
Line(4) = {25, 1};
//+
Line(5) = {17, 18};
//+
Line(6) = {18, 9};
//+
Line(7) = {9, 5};
//+
Line(8) = {18, 20};
//+
Line(9) = {20, 10};
//+
Line(10) = {10, 9};
//+
Line(11) = {20, 19};
//+
Line(12) = {19, 6};
//+
Line(13) = {6, 10};
//+
Line(14) = {19, 2};
//+
Line(15) = {2, 28};
//+
Line(16) = {28, 6};
//+
Line(17) = {6, 16};
//+
Line(18) = {16, 29};
//+
Line(19) = {28, 29};
//+
Line(20) = {29, 30};
//+
Line(21) = {30, 7};
//+
Line(22) = {7, 16};
//+
Line(23) = {7, 23};
//+
Line(24) = {23, 3};
//+
Line(25) = {3, 30};
//+
Line(26) = {7, 13};
//+
Line(27) = {13, 24};
//+
Line(28) = {24, 23};
//+
Line(29) = {13, 14};
//+
Line(30) = {14, 22};
//+
Line(31) = {22, 24};
//+
Line(32) = {21, 4};
//+
Line(33) = {4, 27};
//+
Line(34) = {27, 8};
//+
Line(35) = {8, 21};
//+
Line(36) = {14, 11};
//+
Line(37) = {11, 12};
//+
Line(38) = {12, 13};
//+
Line(39) = {21, 22};
//+
Line(40) = {8, 14};
//+
Line(41) = {8, 15};
//+
Line(42) = {15, 26};
//+
Line(43) = {26, 27};
//+
Line(44) = {26, 25};
//+
Line(45) = {15, 5};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -7, -6, -5};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {6, -10, -9, -8};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {9, -13, -12, -11};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {16, -12, 14, 15};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {16, 17, 18, -19};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {18, 20, 21, 22};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {21, 23, 24, 25};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {23, -28, -27, -26};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {31, -27, 29, 30};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {30, -39, -35, 40};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {35, 32, 33, 34};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {34, 41, 42, 43};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {42, 44, -3, -45};
//+
Plane Surface(14) = {14};
//+
Transfinite Curve {44, 45, 17, 19} = 4 Using Progression 1;
//+
Transfinite Curve {5, 7, 40, 39} = 4 Using Progression 1;
//+
Transfinite Curve {11, 13, 26, 28} = 4 Using Progression 1;
//+
Transfinite Curve {33, 35, 30, 27, 23, 25} = 36 Using Progression 1;
//+
Transfinite Curve {4, 2, 6, 9, 12, 15} = 36 Using Progression 1;
//+
Transfinite Curve {43, 41, 36, 38, 22, 20} = 28 Using Progression 1;
//+
Transfinite Curve {1, 3, 42, 34, 32} = 36 Using Progression 1;
//+
Transfinite Curve {14, 16, 18, 21, 24} = 36 Using Progression 1;
//+
Transfinite Curve {8, 10, 37, 29, 31} = 25 Using Progression 1;
//+
Curve Loop(15) = {37, 38, 29, 36};
//+
Plane Surface(15) = {15};
//+
Transfinite Surface {1} = {1, 17, 5, 25};
//+
Transfinite Surface {2} = {17, 18, 9, 5};
//+
Transfinite Surface {3} = {18, 20, 10, 9};
//+
Transfinite Surface {4} = {20, 19, 6, 10};
//+
Transfinite Surface {5} = {19, 2, 28, 6};
//+
Transfinite Surface {14} = {25, 5, 15, 26};
//+
Transfinite Surface {6} = {6, 28, 29, 16};
//+
Transfinite Surface {13} = {26, 15, 8, 27};
//+
Transfinite Surface {15} = {11, 12, 13, 14};
//+
Transfinite Surface {7} = {16, 29, 30, 7};
//+
Transfinite Surface {12} = {27, 8, 21, 4};
//+
Transfinite Surface {11} = {8, 14, 22, 21};
//+
Transfinite Surface {10} = {14, 13, 24, 22};
//+
Transfinite Surface {9} = {13, 7, 23, 24};
//+
Transfinite Surface {8} = {7, 30, 3, 23};
//+
Recombine Surface {1, 2, 14, 3, 13, 4, 5, 15, 6, 12, 7, 11, 10, 9, 8};
//+
Physical Surface("PLATE", 46) = {1, 2, 14, 3, 13, 4, 5, 15, 6, 12, 7, 11, 10, 9, 8};
