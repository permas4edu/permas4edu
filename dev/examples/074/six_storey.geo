a=400.;
b=450.;
c=200.;
Point(1)={-a/2,-b/2,0.0};
Point(2)={ a/2,-b/2,0.0};
Point(3)={ a/2, b/2,0.0};
Point(4)={-a/2, b/2,0.0};
Point(5)={-a/2,-b/2,c};
Point(6)={ a/2,-b/2,c};
Point(7)={ a/2, b/2,c};
Point(8)={-a/2, b/2,c};
Point(9)={-a/2,-b/2,2*c};
Point(10)={ a/2,-b/2,2*c};
Point(11)={ a/2, b/2,2*c};
Point(12)={-a/2, b/2,2*c};
Point(13)={-a/2,-b/2,3*c};
Point(14)={ a/2,-b/2,3*c};
Point(15)={ a/2, b/2,3*c};
Point(16)={-a/2, b/2,3*c};
Point(17)={-a/2,-b/2,4*c};
Point(18)={ a/2,-b/2,4*c};
Point(19)={ a/2, b/2,4*c};
Point(20)={-a/2, b/2,4*c};
Point(21)={-a/2,-b/2,5*c};
Point(22)={ a/2,-b/2,5*c};
Point(23)={ a/2, b/2,5*c};
Point(24)={-a/2, b/2,5*c};
Point(25)={-a/2,-b/2,6*c};
Point(26)={ a/2,-b/2,6*c};
Point(27)={ a/2, b/2,6*c};
Point(28)={-a/2, b/2,6*c};

//+
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
Line(9) = {13, 14};
//+
Line(10) = {14, 15};
//+
Line(11) = {15, 16};
//+
Line(12) = {16, 13};
//+
Line(13) = {17, 18};
//+
Line(14) = {18, 19};
//+
Line(15) = {19, 20};
//+
Line(16) = {20, 17};
//+
Line(17) = {21, 22};
//+
Line(18) = {22, 23};
//+
Line(19) = {23, 24};
//+
Line(20) = {24, 21};
//+
Line(21) = {25, 26};
//+
Line(22) = {26, 27};
//+
Line(23) = {27, 28};
//+
Line(24) = {28, 25};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {9, 10, 11, 12};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {13, 14, 15, 16};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {17, 18, 19, 20};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {21, 22, 23, 24};
//+
Plane Surface(6) = {6};
//+
Transfinite Curve {21, 17, 13, 9, 5, 1, 22, 18, 14, 24, 23, 10, 20, 19, 6, 15, 16, 2, 12, 11, 8, 7, 4, 3} = 2 Using Progression 1;
//+
Line(25) = {1, 5};
//+
Line(26) = {5, 9};
//+
Line(27) = {9, 13};
//+
Line(28) = {13, 17};
//+
Line(29) = {17, 21};
//+
Line(30) = {21, 25};
//+
Transfinite Curve {25, 26, 27, 28, 29, 30} = 6 Using Progression 1;
//+
Line(31) = {2, 6};
//+
Line(32) = {6, 10};
//+
Line(33) = {10, 14};
//+
Line(34) = {14, 18};
//+
Line(35) = {18, 22};
//+
Line(36) = {22, 26};
//+
Transfinite Curve {31, 32, 33, 34, 35, 36} = 6 Using Progression 1;
//+
Line(37) = {3, 7};
//+
Line(38) = {7, 11};
//+
Line(39) = {11, 15};
//+
Line(40) = {15, 19};
//+
Line(41) = {19, 23};
//+
Line(42) = {23, 27};
//+
Transfinite Curve {37, 38, 39, 40, 41, 42} = 6 Using Progression 1;
//+
Line(43) = {4, 8};
//+
Line(44) = {8, 12};
//+
Line(45) = {12, 16};
//+
Line(46) = {16, 20};
//+
Line(47) = {20, 24};
//+
Line(48) = {24, 28};
//+
Transfinite Curve {43, 44, 45, 46, 47, 48} = 6 Using Progression 1;
//+
Physical Surface("FLOOR_01", 49) = {1};
//+
Physical Surface("FLOOR_02", 50) = {2};
//+
Physical Surface("FLOOR_03", 51) = {3};
//+
Physical Surface("FLOOR_04", 52) = {4};
//+
Physical Surface("FLOOR_05", 53) = {5};
//+
Physical Surface("FLOOR_06", 54) = {6};
//+
Physical Curve("COLUMN_01", 55) = {25, 26, 27, 28, 29, 30};
//+
Physical Curve("COLUMN_02", 56) = {31, 32, 33, 34, 35, 36};
//+
Physical Curve("COLUMN_03", 57) = {37, 38, 39, 40, 41, 42};
//+
Physical Curve("COLUMN_04", 58) = {43, 44, 45, 46, 47, 48};
//+
Transfinite Surface {1} = {5, 6, 7, 8};
//+
Transfinite Surface {2} = {9, 10, 11, 12};
//+
Transfinite Surface {3} = {13, 14, 15, 16};
//+
Transfinite Surface {4} = {17, 18, 19, 20};
//+
Transfinite Surface {5} = {21, 22, 23, 24};
//+
Transfinite Surface {6} = {25, 26, 27, 28};
//+
Recombine Surface {1, 2, 3, 4, 5, 6};
