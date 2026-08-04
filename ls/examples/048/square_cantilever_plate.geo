Lx=1.;
Ly=1.;
Point(1)={0.0,0.0,0.0};
Point(2)={Lx,0.0,0.0};
Point(3)={Lx,Ly/2,0.0};
Point(4)={Lx,Ly,0.0};
Point(5)={0.0,Ly,0.0};
Point(6)={0.0,Ly/2,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 6};
//+
Line(4) = {6, 1};
//+
Line(5) = {3, 4};
//+
Line(6) = {4, 5};
//+
Line(7) = {5, 6};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {6, 7, -3, 5};
//+
Plane Surface(2) = {2};
//+
Transfinite Curve {1, 3, 6} = 11 Using Progression 1;
//+
Transfinite Curve {4, 7, 5, 2} = 6 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 6};
//+
Transfinite Surface {2} = {6, 3, 4, 5};
//+
Recombine Surface {1, 2};
//+
Physical Surface("PLATE", 8) = {1, 2};
