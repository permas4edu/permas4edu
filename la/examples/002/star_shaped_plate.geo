a=273.2051;
l=100.;
alpha=Pi*60/180;
beta=alpha/2;
Point(1)={0.0,0.0,0.0};
Point(2)={a/2,0.0,0.0};
Point(3)={-a/2,0.0,0.0};
Point(4)={0.0,a/2,0.0};
Point(5)={0.0,-a/2,0.0};
Point(6)={-a/2+l*Cos(beta),l*Sin(beta),0.0};
Point(7)={-a/2+l*Cos(beta),-l*Sin(beta),0.0};
Point(8)={ a/2-l*Cos(beta),l*Sin(beta),0.0};
Point(9)={ a/2-l*Cos(beta),-l*Sin(beta),0.0};
Point(10)={ l*Sin(beta),a/2-l*Cos(beta),0.0};
Point(11)={-l*Sin(beta),a/2-l*Cos(beta),0.0};
Point(12)={ l*Sin(beta),-a/2+l*Cos(beta),0.0};
Point(13)={-l*Sin(beta),-a/2+l*Cos(beta),0.0};
//+
Line(1) = {8, 1};
//+
Line(2) = {1, 9};
//+
Line(3) = {9, 2};
//+
Line(4) = {2, 8};
//+
Line(5) = {8, 4};
//+
Line(6) = {4, 6};
//+
Line(7) = {6, 1};
//+
Line(8) = {1, 7};
//+
Line(9) = {7, 3};
//+
Line(10) = {3, 6};
//+
Line(11) = {7, 5};
//+
Line(12) = {5, 9};
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {5, 6, 7, -1};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, 7, 8, 9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {11, 12, -2, 8};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {9, 11, 10, 8, 7, 2, 12, 6, 5, 1, 4, 3} = 51 Using Progression 1;
//+
Transfinite Surface {1} = {9, 2, 8, 1};
//+
Transfinite Surface {2} = {1, 8, 4, 6};
//+
Transfinite Surface {3} = {1, 6, 3, 7};
//+
Transfinite Surface {4} = {1, 7, 5, 9};
//+
Recombine Surface {3, 4, 2, 1};
//+
Physical Surface("STAR", 13) = {3, 4, 2, 1};
