Point(1)={0.0,0.0,0.0};
Point(2)={96.0,0.0,0.0};
Point(3)={96.0+64.,0.0,0.0};
Point(4)={2*96.0+64,0.0,0.0};
Point(5)={2*96.0+64,64.0,0.0};
Point(6)={96.0+64.,64.0,0.0};
Point(7)={96.0+64.,64.0+96.,0.0};
Point(8)={96.0,64.0+96.,0.0};
Point(9)={96.0,64.0,0.0};
Point(10)={0.0,64.0,0.0};
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
Line(11) = {9, 2};
//+
Line(12) = {6, 3};
//+
Line(13) = {6, 9};
//+
Curve Loop(1) = {9, 10, 1, -11};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {11, 2, -12, 13};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {5, 12, 3, 4};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {13, -8, -7, -6};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {1, 3, 5, 9, 8, 6} = 49 Using Progression 1;
//+
Transfinite Curve {10, 11, 12, 4, 2, 7, 13} = 33 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 9, 10};
//+
Transfinite Surface {2} = {2, 3, 6, 9};
//+
Transfinite Surface {3} = {3, 4, 5, 6};
//+
Transfinite Surface {4} = {9, 6, 7, 8};
//+
Recombine Surface {1, 2, 3, 4};
//+
Physical Surface(14) = {1, 2, 4, 3};
