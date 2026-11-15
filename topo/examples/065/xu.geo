a=60.;
b=60.;
a1=24.;
b1=24.;
a2=4.;
b2=2.;
Point(1)={0.0,0.0,0.0};
Point(2)={a1,0.0,0.0};
Point(3)={a-a2,0.0,0.0};
Point(4)={a,0.0,0.0};
Point(5)={a,b1,0.0};
Point(6)={a-a2,b1,0.0};
Point(7)={a1,b1,0.0};
Point(8)={a1,b,0.0};
Point(9)={0.0,b,0.0};
Point(10)={0.0,b1,0.0};
Point(11)={a,b1+b2,0.0};
Point(12)={a-a2,b1+b2,0.0};

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
Line(10) = {10, 1};
//+
Line(11) = {2, 7};
//+
Line(12) = {7, 10};
//+
Line(13) = {3, 6};
//+
Line(14) = {6, 12};
//+
Line(15) = {12, 11};
//+
Line(16) = {11, 5};
//+
Curve Loop(1) = {9, -12, 7, 8};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, 1, 11, 12};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {6, -11, 2, 13};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 5, -13, 3};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {15, 16, 5, 14};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {10, 11, 13, 4} = 25 Using Progression 1;
//+
Transfinite Curve {1, 12, 8} = 25 Using Progression 1;
//+
Transfinite Curve {9, 7} = 37 Using Progression 1;
//+
Transfinite Curve {6, 2} = 33 Using Progression 1;
//+
Transfinite Curve {3, 5, 15} = 5 Using Progression 1;
//+
Transfinite Curve {14, 16} = 3 Using Progression 1;
//+
Transfinite Surface {1} = {10, 7, 8, 9};
//+
Transfinite Surface {2} = {1, 2, 7, 10};
//+
Transfinite Surface {3} = {2, 3, 6, 7};
//+
Transfinite Surface {4} = {3, 4, 5, 6};
//+
Transfinite Surface {5} = {6, 5, 11, 12};
//+
Recombine Surface {2, 1, 3, 4, 5};
//+
Recombine Surface {1, 2, 3, 4, 5};
//+
Physical Surface("DESIGN", 17) = {1, 2, 3, 4};
//+
Physical Surface("FROZEN", 18) = {5};
