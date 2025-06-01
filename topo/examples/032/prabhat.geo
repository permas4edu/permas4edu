Lx=3.;
Ly=1.;
Point(1)={0.0,0.0,0.0};
Point(2)={Lx,0.0,0.0};
Point(3)={Lx,Ly,0.0};
Point(4)={0.0,Ly,0.0};
//
r=Ly/3;
Point(5)={Lx/3,Ly/2,0.0}; // Center of circle
Point(6)={Lx/3+r,Ly/2,0.0};
Point(7)={Lx/3,Ly/2+r,0.0};
Point(8)={Lx/3-r,Ly/2,0.0};
Point(9)={Lx/3,Ly/2-r,0.0};
//
Point(10)={0.7*Lx,0.1*Ly,0.0};
Point(11)={0.9*Lx,0.1*Ly,0.0};
Point(12)={0.7*Lx,0.3*Ly,0.0};
Point(13)={0.9*Lx,0.3*Ly,0.0};
//
Point(14)={0.7*Lx,0.0,0.0};
Point(15)={0.9*Lx,0.0,0.0};
Point(16)={0.7*Lx,Ly,0.0};
Point(17)={0.9*Lx,Ly,0.0};
Point(18)={Lx,0.1*Ly,0.0};
Point(19)={Lx,0.3*Ly,0.0};
Point(20)={0.0,0.1*Ly,0.0};
Point(21)={0.0,0.3*Ly,0.0};
//
Point(22)={0.0,Ly/2,0.0};
Point(23)={Lx,Ly/2,0.0};
Point(24)={Lx/3,0.0,0.0}; 
Point(25)={Lx/3,Ly,0.0}; 
//
Point(26)={0.7*Lx,Ly/2,0.0};
Point(27)={0.9*Lx,Ly/2,0.0};
Point(28)={Lx/3,0.1*Ly,0.0}; //+
Circle(1) = {6, 5, 7};
//+
Circle(2) = {7, 5, 8};
//+
Circle(3) = {8, 5, 9};
//+
Circle(4) = {9, 5, 6};
//+
Line(5) = {1, 24};
//+
Line(6) = {24, 14};
//+
Line(7) = {14, 15};
//+
Line(8) = {15, 2};
//+
Line(9) = {2, 18};
//+
Line(10) = {18, 19};
//+
Line(11) = {19, 23};
//+
Line(12) = {23, 3};
//+
Line(13) = {3, 17};
//+
Line(14) = {17, 16};
//+
Line(15) = {16, 25};
//+
Line(16) = {25, 4};
//+
Line(17) = {4, 22};
//+
Line(18) = {22, 21};
//+
Line(19) = {21, 20};
//+
Line(20) = {20, 1};
//+
Line(21) = {20, 28};
//+
Line(22) = {28, 24};
//+
Line(23) = {28, 10};
//+
Line(24) = {10, 14};
//+
Line(25) = {10, 11};
//+
Line(26) = {11, 15};
//+
Line(27) = {11, 18};
//+
Line(28) = {11, 13};
//+
Line(29) = {13, 19};
//+
Line(30) = {12, 13};
//+
Line(31) = {12, 10};
//+
Line(32) = {12, 26};
//+
Line(33) = {26, 6};
//+
Line(34) = {7, 25};
//+
Line(35) = {8, 22};
//+
Line(36) = {26, 16};
//+
Line(37) = {26, 27};
//+
Line(38) = {27, 13};
//+
Line(39) = {27, 23};
//+
Line(40) = {27, 17};
//+
Line(41) = {28, 9};
//+
Curve Loop(1) = {5, -22, -21, 20};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {21, 41, -3, 35, 18, 19};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {23, -31, 32, 33, -4, -41};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {25, 26, -7, -24};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {23, 24, -6, -22};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {35, -17, -16, -34, 2};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {15, -34, -1, -33, 36};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {14, -36, 37, 40};
//+
Plane Surface(8) = {8};
//+
Curve Loop(9) = {13, -40, 39, 12};
//+
Plane Surface(9) = {9};
//+
Curve Loop(10) = {37, 38, -30, 32};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {30, -28, -25, -31};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {27, -9, -8, -26};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {10, -29, -28, 27};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {29, 11, -39, 38};
//+
Plane Surface(14) = {14};
//+
Physical Surface("PLATE", 42) = {2, 1, 6, 5, 3, 7, 4, 11, 10, 12, 8, 13, 14, 9};
//+
Transfinite Curve {33, 34, 35, 41} = 21 Using Progression 1;
//+
Transfinite Curve {36, 15, 16, 17} = 26 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4} = 51 Using Progression 1;
//+
Transfinite Curve {18} = 13  Using Progression 1;
Transfinite Curve {19} = 14  Using Progression 1;

Transfinite Curve {21, 23, 6, 5} = 26 Using Progression 1;
//+
Transfinite Curve {14, 37, 30, 25, 7} = 21 Using Progression 1;
//+
Transfinite Curve {13, 39, 29, 27, 8} = 11 Using Progression 1;
//+
Transfinite Curve {20, 22, 24, 26, 9} = 6 Using Progression 1;
Transfinite Curve {31} = 14 Using Progression 1;
//+
Transfinite Curve {32, 38, 11} = 13 Using Progression 1;
//+
Transfinite Curve {31, 28, 10} = 14 Using Progression 1;
Transfinite Curve {40, 12} = 26 Using Progression 1;
//+
Transfinite Surface {6} = {8, 7, 25, 22};
//+
Transfinite Surface {2} = {9, 8, 22, 28};
//+
Transfinite Surface {7} = {7, 6, 26, 25};
//+
Transfinite Surface {8} = {26, 27, 17, 16};
//+
Transfinite Surface {9} = {27, 23, 3, 17};
//+
Transfinite Surface {10} = {12, 13, 27, 26};
//+
Transfinite Surface {14} = {13, 19, 23, 27};
//+
Transfinite Surface {11} = {10, 11, 13, 12};
//+
Transfinite Surface {13} = {11, 18, 19, 13};
//+
Transfinite Surface {1} = {1, 24, 28, 20};
//+
Transfinite Surface {5} = {24, 14, 10, 28};
//+
Transfinite Surface {4} = {14, 15, 11, 10};
//+
Transfinite Surface {12} = {15, 2, 18, 11};
//+

//+

//+
Transfinite Surface {3} = {6, 9, 28, 26};
//+
Recombine Surface {4, 3, 2, 1, 5, 14, 13, 12, 11, 10, 9, 8, 7, 6};
