a=300.;
b=300.;
c=800.;
Point(1)={-a/2,-b/2,0.0};
Point(2)={ a/2,-b/2,0.0};
Point(3)={ a/2, b/2,0.0};
Point(4)={-a/2, b/2,0.0};
Point(5)={-a/2,-b/2,c/2};
Point(6)={ a/2,-b/2,c/2};
Point(7)={ a/2, b/2,c/2};
Point(8)={-a/2, b/2,c/2};
Point(9)={-a/2,-b/2,c};
Point(10)={ a/2,-b/2,c};
Point(11)={ a/2, b/2,c};
Point(12)={-a/2, b/2,c};//+
Line(1) = {5, 6};
//+
Line(2) = {6, 7};
//+
Line(3) = {7, 8};
//+
Line(4) = {8, 5};
//+
Line(5) = {9, 10};
//+
Line(6) = {10, 11};
//+
Line(7) = {11, 12};
//+
Line(8) = {12, 9};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(2) = {2};
//+
Line(9) = {1, 5};
//+
Line(10) = {2, 6};
//+
Line(11) = {3, 7};
//+
Line(12) = {4, 8};
//+
Line(13) = {5, 9};
//+
Line(14) = {6, 10};
//+
Line(15) = {7, 11};
//+
Line(16) = {8, 12};
//+
Physical Surface("FLOOR_01", 17) = {1};
//+
Physical Surface("FLOOR_02", 18) = {2};
//+
Physical Curve("COLUMNS", 19) = {9, 10, 11, 12, 13, 14, 15, 16};
//+
Transfinite Curve {9, 10, 11, 12, 13, 14, 15, 16} = 21 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4} = 31 Using Progression 1;
//+
Transfinite Curve {5, 6, 7, 8} = 31 Using Progression 1;
//+
Transfinite Surface {1} = {5, 6, 7, 8};
//+
Transfinite Surface {2} = {9, 10, 11, 12};
//+
Recombine Surface {1, 2};
