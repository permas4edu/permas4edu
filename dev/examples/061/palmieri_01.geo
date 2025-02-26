R1=16.;
R2=15.;
a=200.;
c=50.;
xc1=120.;
xc2=170.;
xn1=55.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,0.0,c};
Point(4)={0.0,0.0,c};
Point(5)={xn1,0.0,0.0};
Point(6)={xn1,0.0,c};
Point(7)={xn1,0.0,R1};
Point(8)={xn1,0.0,c-R1};
Point(9)={xn1-R1,0.0,0.0};
Point(10)={xn1-R1,0.0,c};
Point(11)={xn1+R1,0.0,0.0};
Point(12)={xn1+R1,0.0,c};
Point(13)={xc1,0.0,c/2};
Point(14)={xc2,0.0,c/2};
Point(15)={xc1+R2,0.0,c/2};
Point(16)={xc2+R2,0.0,c/2};
Point(17)={xc1-R2,0.0,c/2};
Point(18)={xc2-R2,0.0,c/2};
Point(19)={xc1,0.0,c/2+R2};
Point(20)={xc2,0.0,c/2+R2};
Point(21)={xc1,0.0,c/2-R2};
Point(22)={xc2,0.0,c/2-R2};
Point(23)={xn1-R1,0.0,c/2};
Point(24)={0.0,0.0,c/2};
Point(25)={a,0.0,c/2};
Point(26)={xn1+R1,0.0,c/2};
Point(27)={xn1,0.0,c/2};
Point(28)={xc1,0.0,0.0};
Point(29)={xc1,0.0,c};
Point(30)={xc2,0.0,0.0};
Point(31)={xc2,0.0,c};
Point(32)={xc1+0.5*(xc2-xc1),0.0,c/2};
Point(33)={xc1+0.5*(xc2-xc1),0.0,0.0};
Point(34)={xc1+0.5*(xc2-xc1),0.0,c};
Point(35)={xn1-2*R1,0.0,0.0};
Point(36)={xn1-2*R1,0.0,c/2};
Point(37)={xn1-2*R1,0.0,c};
Point(38)={xc1-R2-10.,0.0,0.0};
Point(39)={xc1-R2-10.,0.0,c/2};
Point(40)={xc1-R2-10.,0.0,c };
//+
Line(1) = {1, 9};
//+
Line(2) = {1, 24};
//+
Line(3) = {24, 23};
//+
//+
Circle(4) = {7, 5, 9};
//+
Circle(5) = {7, 5, 11};
//+
Circle(6) = {8, 6, 10};
//+
Circle(7) = {8, 6, 12};
//+
Circle(8) = {15, 13, 21};
//+
Circle(9) = {21, 13, 17};
//+
Circle(10) = {17, 13, 19};
//+
Circle(11) = {19, 13, 15};
//+
Circle(12) = {16, 14, 22};
//+
Circle(13) = {22, 14, 18};
//+
Circle(14) = {18, 14, 20};
//+
Circle(15) = {20, 14, 16};
//+
Line(16) = {22, 30};
//+
Line(17) = {30, 2};
//+
Line(18) = {2, 25};
//+
Line(19) = {25, 16};
//+
Line(20) = {3, 25};
//+
Line(21) = {3, 31};
//+
Line(22) = {31, 20};
//+
Line(23) = {31, 34};
//+
Line(24) = {34, 32};
//+
Line(25) = {32, 18};
//+
Line(26) = {32, 33};
//+
Line(27) = {33, 30};
//+
Line(28) = {32, 15};
//+
Line(29) = {21, 28};
//+
Line(30) = {28, 33};
//+
Line(31) = {29, 19};
//+
Line(32) = {29, 34};
//+
Line(33) = {4, 24};
//+
Line(34) = {4, 10};
//+
Line(35) = {27, 8};
//+
Line(36) = {27, 7};
//+
Line(37) = {27, 23};
//+
Line(38) = {26, 27};
//+
Line(39) = {11, 28};
//+
Line(40) = {17, 26};
//+
Line(41) = {12, 29};
//+
Line(42) = {12, 17};
//+
Line(43) = {17, 11};
//+
Recursive Delete {
  Curve{3}; Curve{1}; Curve{34}; 
}
//+
Recursive Delete {
  Curve{40}; Curve{43}; Curve{42}; 
}
//+
Line(42) = {1, 35};
//+
Line(43) = {35, 36};
//+
Line(44) = {36, 24};
//+
Line(45) = {36, 37};
//+
Line(46) = {37, 4};
//+
Line(47) = {37, 10};
//+
Line(48) = {23, 36};
//+
Line(49) = {35, 9};
//+
Line(50) = {26, 39};
//+
Line(51) = {39, 38};
//+
Line(52) = {39, 17};
//+
Line(53) = {39, 40};
//+
Curve Loop(1) = {44, -2, 42, 43};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {44, -33, -46, -45};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {43, -48, -37, 36, 4, -49};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {48, 45, 47, -6, -35, 37};
//+
Plane Surface(4) = {4};
//+
Recursive Delete {
  Curve{39}; Curve{41}; 
}
//+
Line(54) = {11, 38};
//+
Line(55) = {12, 40};
//+
Line(56) = {40, 29};
//+
Line(57) = {38, 28};
//+
Curve Loop(5) = {7, 55, -53, -50, 38, 35};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {51, -54, -5, -36, -38, 50};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {57, -29, 9, -52, 51};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {30, -26, 28, 8, 29};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {11, -28, -24, -32, 31};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {52, 10, -31, -56, -53};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {26, 27, -16, 13, -25};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {24, 25, 14, -22, 23};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {12, 16, 17, 18, 19};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {15, -19, -20, 21, 22};
//+
Plane Surface(14) = {14};
//+
Transfinite Curve {47, 49, 36, 54, 35, 55} = 17 Using Progression 1;
//+
Transfinite Curve {52, 29, 28, 31, 22, 25, 16, 19} = 11 Using Progression 1;
//+
Transfinite Curve {44, 42, 46} = 39 Using Progression 1;
//+
Transfinite Curve {33, 45, 43, 2} = 26 Using Progression 1;

Transfinite Curve {7, 5} = 51 Using Progression 1;

Transfinite Curve {48, 37, 38} = 17 Using Progression 1;
Transfinite Curve {50} = 10 Using Progression 1;
//+
Transfinite Curve {4, 6} = 58 Using Progression 1;
//+

//+
Transfinite Curve {26, 27, 30, 57, 51, 53, 56, 32, 23, 24, 18, 20, 21, 17} = 26 Using Progression 1;
//+
Transfinite Curve {8, 9, 10, 11} = 51 Using Progression 1;
//+
Transfinite Curve {14, 13, 12, 15} = 51 Using Progression 1;

Transfinite Surface {1} = {24, 36, 35, 1};
//+
Transfinite Surface {2} = {4, 37, 36, 24};
//+
Transfinite Surface {7} = {17, 21, 28, 39};
//+
Transfinite Surface {10} = {19, 17, 39, 29};
//+
Transfinite Surface {9} = {15, 19, 29, 32};
//+
Transfinite Surface {8} = {21, 15, 32, 28};
//+
Transfinite Surface {11} = {22, 30, 32, 18};
//+
Transfinite Surface {12} = {18, 32, 31, 20};
//+
Transfinite Surface {14} = {16, 20, 31, 25};
//+
Transfinite Surface {13} = {16, 25, 30, 22};
//+

//+
Transfinite Surface {3} = {7, 9, 35, 27};
//+
Transfinite Surface {4} = {10, 8, 27, 37};
//+

//+
Transfinite Surface {6} = {7, 27, 38, 11};
//+
Transfinite Surface {5} = {8, 12, 40, 27};
//+
Recombine Surface {13, 11, 8, 7, 14, 12, 6, 9, 3, 5, 10, 1, 4, 2};
//+
Physical Surface("PLATE", 58) = {2, 1, 4, 3, 5, 6, 10, 7, 9, 8, 12, 11, 14, 13};
