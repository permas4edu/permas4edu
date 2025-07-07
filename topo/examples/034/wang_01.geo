D1=2./3;
D2=1./2;
L1=2.;
L2=1.;
R=1./3;
Point(1)={0.0,0.0,0.0};
Point(2)={L1,0.0,0.0};
Point(3)={L1,L2,0.0};
Point(4)={0.0,L2,0.0};
Point(5)={D1,D2,0.0}; // Center of circle
Point(6)={D1+R,D2,0.0}; 
Point(7)={D1-R,D2,0.0}; 
Point(8)={D1,D2+R,0.0}; 
Point(9)={D1,D2-R,0.0}; 
Point(10)={D1,0.0,0.0};
Point(11)={D1,L2,0.0};
Point(12)={0.0,D2,0.0};
Point(13)={L1,D2,0.0};
Point(14)={D1+2*R,0.0,0.0};
Point(15)={D1+2*R,D2,0.0};
Point(16)={D1+2*R,L2,0.0};
//+
Circle(1) = {6, 5, 8};
//+
Circle(2) = {8, 5, 7};
//+
Circle(3) = {7, 5, 9};
//+
Circle(4) = {9, 5, 6};
//+
Line(5) = {1, 10};
//+
Line(6) = {10, 14};
//+
Line(7) = {14, 2};
//+
Line(8) = {2, 13};
//+
Line(9) = {13, 3};
//+
Line(10) = {3, 16};
//+
Line(11) = {16, 11};
//+
Line(12) = {11, 4};
//+
Line(13) = {4, 12};
//+
Line(14) = {12, 1};
//+
Line(15) = {10, 9};
//+
Line(16) = {14, 15};
//+
Line(17) = {15, 13};
//+
Line(18) = {15, 16};
//+
Line(19) = {15, 6};
//+
Line(20) = {8, 11};
//+
Line(21) = {7, 12};
//+
Curve Loop(1) = {5, 15, -3, 21, 14};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, 16, 19, -4, -15};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {19, 1, 20, -11, -18};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {12, 13, -21, -2, 20};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {18, -10, -9, -17};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {17, -8, -7, 16};
//+
Plane Surface(6) = {6};
//+
Transfinite Curve {18, 11, 12, 13, 14, 5, 6, 16, 7, 8, 17, 9, 10} = 41 Using Progression 1;
//+
Transfinite Curve {1, 2, 3, 4} = 81 Using Progression 1;
//+
Transfinite Curve {21, 20, 19, 15} = 31 Using Progression 1;
//+
Transfinite Surface {3} = {8, 6, 15, 11};
//+
Transfinite Surface {4} = {8, 11, 12, 7};
//+
Transfinite Surface {1} = {7, 12, 10, 9};
//+
Transfinite Surface {2} = {6, 9, 10, 15};
//+
Transfinite Surface {5} = {3, 16, 15, 13};
//+
Transfinite Surface {6} = {15, 14, 2, 13};
//+
Recombine Surface {1, 4, 2, 3, 6, 5};
//+
Physical Surface("PLATE", 22) = {1, 2, 3, 4, 5, 6};
