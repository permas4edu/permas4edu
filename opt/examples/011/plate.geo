a=127.;
b=127.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
Point(5)={0.0,0.25*b,0.0};
Point(6)={0.0,0.5*b,0.0};
Point(7)={0.0,0.75*b,0.0};
Point(8)={a,0.25*b,0.0};
Point(9)={a,0.5*b,0.0};
Point(10)={a,0.75*b,0.0};//+
//+
Line(1) = {1, 2};
//+
Line(2) = {8, 5};
//+
Line(3) = {6, 9};
//+
Line(4) = {7, 10};
//+
Line(5) = {3, 4};
//+
Line(6) = {4, 7};
//+
Line(7) = {10, 3};
//+
Line(8) = {10, 9};
//+
Line(9) = {6, 7};
//+
Line(10) = {5, 6};
//+
Line(11) = {8, 9};
//+
Line(12) = {2, 8};
//+
Line(13) = {1, 5};
//+
Curve Loop(1) = {1, 12, 2, -13};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, 10, 3, -11};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, -8, -4, -9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 7, 5, 6};
//+
Plane Surface(4) = {4};
//+
Transfinite Curve {5, 4, 3, 2, 1} = 25 Using Progression 1;
//+
Transfinite Curve {6, 9, 10, 13, 12, 11, 8, 7} = 7 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 8, 5};
//+
Transfinite Surface {2} = {5, 8, 9, 6};
//+
Transfinite Surface {3} = {6, 9, 10, 7};
//+
Transfinite Surface {4} = {7, 10, 3, 4};
//+
Recombine Surface {1, 2, 3, 4};
//+
Extrude {0, 0, 12.7} {
  Curve{2}; Curve{3}; Curve{4}; Layers {3}; Recombine;
}
//+
Physical Surface("PANEL", 26) = {1, 2, 3, 4};
//+
Physical Surface("STIFFENER", 27) = {25, 21, 17};
