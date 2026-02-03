a=5.;
b=10.;
t=1.0;
Point(1)={-a/2,-b/2,0.0};
Point(2)={ a/2,-b/2,0.0};
Point(3)={ a/2, b/2,0.0};
Point(4)={-a/2, b/2,0.0};
Point(5)={-a/2+t,-b/2,0.0};
Point(6)={ a/2-t,-b/2,0.0};
Point(7)={ a/2-t, b/2,0.0};
Point(8)={-a/2+t, b/2,0.0};
Point(9) ={-a/2,-b/2+t,0.0};
Point(10)={ a/2,-b/2+t,0.0};
Point(11)={ a/2, b/2-t,0.0};
Point(12)={-a/2, b/2-t,0.0};
Point(13) ={-a/2+t,-b/2+t,0.0};
Point(14)={ a/2-t,-b/2+t,0.0};
Point(15)={ a/2-t, b/2-t,0.0};
Point(16)={-a/2+t, b/2-t,0.0};//+
//+
Line(1) = {16, 4};
//+
Line(2) = {4, 1};
//+
Line(3) = {1, 13};
//+
Line(4) = {13, 16};
//+
Line(5) = {4, 3};
//+
Line(6) = {3, 15};
//+
Line(7) = {15, 16};
//+
Line(8) = {3, 2};
//+
Line(9) = {2, 14};
//+
Line(10) = {14, 13};
//+
Line(11) = {1, 2};
//+
Line(12) = {14, 15};
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, 1, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {12, -6, 8, 9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {10, -3, 11, 9};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {1, 3, 9, 6} = 4 Using Progression 1;
//+
Transfinite Curve {5, 7, 10, 11} = 11 Using Progression 1;
//+
Transfinite Curve {2, 4, 8, 12} = 21 Using Progression 1;
//+
Transfinite Surface {1} = {1, 13, 16, 4};
//+
Transfinite Surface {4} = {1, 2, 14, 13};
//+
Transfinite Surface {3} = {14, 2, 3, 15};
//+
Transfinite Surface {2} = {16, 15, 3, 4};
//+
Recombine Surface {4, 3, 2, 1};
//+
Extrude {0, 0, 20} {
  Surface{4}; Surface{3}; Surface{1}; Surface{2}; Layers {40}; Recombine;
}
//+
Physical Volume("TOWER", 101) = {1, 2, 3, 4};
