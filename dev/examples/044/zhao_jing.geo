a=1.;
b=a/1.;
c=2*b/5;
t=0.05*b; // thickness of plate
d=0.01*b; // thickness of stiffener
t1=1.5*t; // half height of stiffener
Point(1)={-a/2,0.0,0.0};
Point(2)={-a/2,b/4,0.0};
Point(3)={-a/2,b/2,0.0};
Point(4)={-a/2,-b/4,0.0};
Point(5)={-a/2,-b/2,0.0};
Point(6)={ a/2,0.0,0.0};
Point(7)={ a/2,c/4,0.0};
Point(8)={ a/2,c/2,0.0};
Point(9)={ a/2,-c/4,0.0};
Point(10)={ a/2,-c/2,0.0};//+
Line(1) = {1, 6};
//+
Line(2) = {6, 7};
//+
Line(3) = {7, 2};
//+
Line(4) = {2, 1};
//+
Line(5) = {1, 4};
//+
Line(6) = {4, 9};
//+
Line(7) = {9, 6};
//+
Line(8) = {9, 10};
//+
Line(9) = {10, 5};
//+
Line(10) = {5, 4};
//+
Line(11) = {2, 3};
//+
Line(12) = {3, 8};
//+
Line(13) = {8, 7};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {3, 11, 12, 13};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {6, 7, -1, 5};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {9, 10, 6, 8};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {12, 3, 1, 6, 9} = 81 Using Progression 1;
//+
Transfinite Curve {11, 13} = 22 Using Progression 1;
//+
Transfinite Curve {2, 4} = 22 Using Progression 1;
//+
Transfinite Curve {5, 7} = 22 Using Progression 1;
//+
Transfinite Curve {10, 8} = 22 Using Progression 1;
//+
Transfinite Surface {1} = {1, 6, 7, 2};
//+
Transfinite Surface {2} = {2, 7, 8, 3};
//+
Transfinite Surface {3} = {4, 9, 6, 1};
//+
Transfinite Surface {4} = {5, 10, 9, 4};
//+
Recombine Surface {4, 3, 1, 2};
//+
Physical Surface("PLATE", 14) = {4, 3, 1, 2};
//+
Extrude {0, 0, 0.075} {
  Curve{3}; Curve{1}; Curve{6}; Layers {8}; Recombine;
}
//+
Extrude {0, 0, -0.075} {
  Curve{3}; Curve{1}; Curve{6}; Layers {8}; Recombine;
}
//+
Physical Surface("STIFFENER", 39) = {26, 22, 18, 30, 38, 34};
