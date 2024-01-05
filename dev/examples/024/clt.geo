L_1=5.8;
L_2=1.2;
B_1=2.0;
B_2=0.4;
Point(1)={0.0,0.0,0.0};
Point(2)={L_1,0.0,0.0};
Point(3)={L_1+L_2,0.0,0.0};
Point(4)={L_1+L_2,B_2,0.0};
Point(5)={L_1+L_2,B_2+B_1,0.0};
Point(6)={L_1,B_2+B_1,0.0};
Point(7)={0.0,B_2+B_1,0.0};
Point(8)={0.0,B_2,0.0};
Point(9)={L_1,B_2,0.0};//+
Line(1) = {1, 2};
//+
Line(2) = {2, 9};
//+
Line(3) = {9, 8};
//+
Line(4) = {8, 1};
//+
Line(5) = {2, 3};
//+
Line(6) = {3, 4};
//+
Line(7) = {4, 9};
//+
Line(8) = {4, 5};
//+
Line(9) = {5, 6};
//+
Line(10) = {6, 9};
//+
Line(11) = {6, 7};
//+
Line(12) = {7, 8};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, -2, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -7, 8, 9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, 12, -3, -10};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {4, 2, 6} = 3 Using Progression 1;
//+
Transfinite Curve {5, 7, 9} = 7 Using Progression 1;
//+
Transfinite Curve {12, 10, 8} = 10 Using Progression 1;
//
Transfinite Curve { 1,  3,11} = 30 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 9, 8};
//+
Transfinite Surface {2} = {2, 3, 4, 9};
//+
Transfinite Surface {3} = {9, 4, 5, 6};
//+
Transfinite Surface {4} = {8, 9, 6, 7};
//+
Recombine Surface {1, 2, 3, 4};
//+
Physical Surface("CLT_PLATE", 13) = {1, 2, 3, 4};
