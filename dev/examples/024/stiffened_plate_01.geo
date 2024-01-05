a = 4.8;
b = 3.2;
c = 0.5;
lc=0.1;
Point(1)={0.0,0.0,0.0,lc};
Point(2)={a,0.0,0.0,lc};
Point(3)={a,b,0.0,lc};
Point(4)={0.0,b,0.0,lc};

//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Physical Surface("PANEL", 5) = {1};
//+
//Transfinite Curve {1, 3} = 25 Using Progression 1;
//Transfinite Curve {2, 4} = 17 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//
Point(5)={0.9,0.0,0.0,lc};
Point(6)={0.9,b,0.0,lc};
Point(7)={0.9,0.0,c,lc};
Point(8)={0.9,b,c,lc};
//
Point(9)={1.9,0.0,0.0,lc};
Point(10)={1.9,b,0.0,lc};
Point(11)={1.9,0.0,c,lc};
Point(12)={1.9,b,c,lc};
//
Point(13)={2.9,0.0,0.0,lc};
Point(14)={2.9,b,0.0,lc};
Point(15)={2.9,0.0,c,lc};
Point(16)={2.9,b,c,lc};
//
Point(17)={3.9,0.0,0.0,lc};
Point(18)={3.9,b,0.0,lc};
Point(19)={3.9,0.0,c,lc};
Point(20)={3.9,b,c,lc};//+
Line(5) = {5, 7};
//+
Line(6) = {7, 8};
//+
Line(7) = {8, 6};
//+
Line(8) = {6, 5};
//+
Line(9) = {9, 11};
//+
Line(10) = {11, 12};
//+
Line(11) = {12, 10};
//+
Line(12) = {10, 9};
//+
Line(13) = {13, 15};
//+
Line(14) = {15, 16};
//+
Line(15) = {16, 14};
//+
Line(16) = {14, 13};
//+
Line(17) = {17, 19};
//+
Line(18) = {19, 20};
//+
Line(19) = {20, 18};
//+
Line(20) = {18, 17};
//+
Curve Loop(2) = {8, 5, 6, 7};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {12, 9, 10, 11};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {16, 13, 14, 15};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {20, 17, 18, 19};
//+
Plane Surface(5) = {5};
//+
Physical Surface("STIFFENER", 21) = {2, 3, 4, 5};
//+
//Transfinite Curve {8, 6, 12, 10, 16, 14, 20, 18} = 17 Using Progression 1;
Transfinite Curve {5, 7,  9, 11, 13, 15, 17, 19} =  6 Using Progression 1;
//+
Transfinite Surface {3} = {9, 11, 12, 10};
//+
Transfinite Surface {4} = {13, 15, 16, 14};
//+
Transfinite Surface {5} = {17, 19, 20, 18};
//+
Transfinite Surface {2} = {5, 7, 8, 6};
//+
Recombine Surface {2, 3, 4, 5};
//
Point(21) = {0.0,1.0,0.0,lc};
Point(22) = {a  ,1.0,0.0,lc};
Point(23) = {0.0,1.0,c,lc};
Point(24) = {a  ,1.0,c,lc};
//
Point(25) = {0.0,2.2,0.0,lc};
Point(26) = {a  ,2.2,0.0,lc};
Point(27) = {0.0,2.2,c,lc};
Point(28) = {a  ,2.2,c,lc};//+
Line(21) = {21, 22};
//+
Line(22) = {22, 24};
//+
Line(23) = {24, 23};
//+
Line(24) = {23, 21};
//+
Line(25) = {25, 26};
//+
Line(26) = {26, 28};
//+
Line(27) = {28, 27};
//+
Line(28) = {27, 25};
//+
Curve Loop(6) = {23, 24, 21, 22};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {27, 28, 25, 26};
//+
Plane Surface(7) = {7};
//+
Physical Surface("STIFFENER", 21) += {6, 7};
//+
//Transfinite Curve {21, 23, 25, 27} = 25 Using Progression 1;
//+
Transfinite Curve {24, 22, 28, 26} = 6 Using Progression 1;
//+
Transfinite Surface {6} = {21, 22, 24, 23};
//+
Transfinite Surface {7} = {25, 26, 28, 27};
//+
Recombine Surface {6, 7};
