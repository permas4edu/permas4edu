Point(1)={0.0,0.0,0.0};
Point(2)={1+Sqrt(3)/3,0.0,0.0};
Point(3)={1+Sqrt(3)/3,1.0,0.0};
Point(4)={1-Sqrt(3)/3,1.0,0.0};
Point(5)={1-Sqrt(3)/3+1/Tan(60*Pi/180),2.0,0.0};
Point(6)={0.0,1.0,0.0};
Point(7)={0.0,2.0,0.0};
Point(8)={1-Sqrt(3)/3,0.0,0.0};//+
Line(1) = {1, 8};
//+
Line(2) = {8, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 4};
//+
Line(5) = {4, 8};
//+
Line(6) = {4, 6};
//+
Line(7) = {6, 1};
//+
Line(8) = {4, 5};
//+
Line(9) = {5, 7};
//+
Line(10) = {7, 6};
//+
Curve Loop(1) = {7, 1, -5, 6};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 5, 2, 3};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {9, 10, -6, 8};
//+
Plane Surface(3) = {3};
//+
Transfinite Curve {9, 6, 1} = 21 Using Progression 1;
//+
Transfinite Curve {7, 5, 3} = 21 Using Progression 1;
//+
Transfinite Curve {10, 8} = 21 Using Progression 1;
//+
Transfinite Curve {4, 2} = 41 Using Progression 1;
//+
Transfinite Surface {1} = {1, 8, 4, 6};
//+
Transfinite Surface {2} = {8, 2, 3, 4};
//+
Transfinite Surface {3} = {6, 4, 5, 7};
//+
Physical Surface("PLATE", 11) = {1, 2, 3};
//+
Recombine Surface {1, 2, 3};
