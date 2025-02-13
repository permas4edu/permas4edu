L=0.6096;
B=0.3048;
L1=0.4064;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1,B,0.0};
Point(4)={0.0,B,0.0};
Point(5)={L1,0.0,0.0};
Point(6)={L,0.0,0.0};
Point(7)={L,B,0.0};
Point(8)={L1,B,0.0};
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
Transfinite Curve {1, 3} = 9 Using Progression 1;
//+
Transfinite Curve {4, 2} = 13 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+

Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 5};
//+
Curve Loop(2) = {8, 5, 6, 7};

Plane Surface(2) = {2};
Transfinite Curve {5, 7} = 7 Using Progression 1;
//+
Transfinite Curve {6, 8} = 7 Using Progression 1;
//+
Transfinite Surface {2} = {5, 6, 7, 8};
//+
Recombine Surface {2};


Physical Surface("PLATE", 5) = {1,2};
