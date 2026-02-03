x1=4.0;
t1=1.0;
y1=4.0;
t2=0.28;
R=2.0;
Point(1)={-x1/2-t1,0.0,0.0};
Point(2)={-x1/2,0.0,0.0};
Point(3)={-x1/2-t2,0.0,0.0};
Point(4)={-x1/2-t1,y1,0.0};
Point(5)={-x1/2,y1,0.0};
Point(6)={-x1/2-t2,y1,0.0};
Point(7)={0.0,y1,0.0};
Point(8)={0.0,y1+R,0.0};
Point(9)={0.0,y1+R+t2,0.0};
Point(10)={ x1/2+t1,0.0,0.0};
Point(11)={ x1/2,0.0,0.0};
Point(12)={ x1/2+t2,0.0,0.0};
Point(13)={ x1/2+t1,y1,0.0};
Point(14)={ x1/2,y1,0.0};
Point(15)={ x1/2+t2,y1,0.0};//+
Line(1) = {1, 3};
//+
Line(2) = {3, 2};
//+
Line(3) = {2, 5};
//+
Line(4) = {5, 6};
//+
Line(5) = {6, 4};
//+
Line(6) = {4, 1};
//+
Line(7) = {11, 12};
//+
Line(8) = {12, 10};
//+
Line(9) = {10, 13};
//+
Line(10) = {13, 15};
//+
Line(11) = {15, 14};
//+
Line(12) = {14, 11};
//+
Line(13) = {12, 15};
//+
Circle(14) = {6, 7, 9};
//+
Circle(15) = {9, 7, 15};
//+
Circle(16) = {14, 7, 8};
//+
Circle(17) = {8, 7, 5};
//+
Line(18) = {6, 3};
//+
Curve Loop(1) = {6, 1, -18, 5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {18, 2, 3, 4};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {17, 4, 14, 15, 11, 16};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {12, 7, 13, 11};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {10, -13, 8, 9};
//+
Plane Surface(5) = {5};
//+
Physical Surface("PART_01", 19) = {3};
//+
Physical Surface("PART_02", 20) = {1, 2};
//+
Physical Surface("PART_03", 21) = {4, 5};
//+
Transfinite Curve {6, 18, 3, 12, 13, 9} = 41 Using Progression 1;
//+
Transfinite Curve {1, 5, 10, 8} = 8 Using Progression 1;
//+
Transfinite Curve {7, 11, 4, 2} = 4 Using Progression 1;
//+
Transfinite Curve {15, 14, 17, 16} = 17 Using Progression 1;
//+
Transfinite Surface {1} = {1, 3, 6, 4};
//+
Transfinite Surface {2} = {3, 2, 5, 6};
//+
Transfinite Surface {4} = {11, 12, 15, 14};
//+
Transfinite Surface {5} = {12, 10, 13, 15};
//+
Transfinite Surface {3} = {14, 15, 6, 5};
//+
Recombine Surface {3, 1, 2, 4, 5};
