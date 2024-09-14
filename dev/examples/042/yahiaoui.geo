A=0.21;
B=0.2085;
Point(1)={0.0,0.0,0.0};
Point(2)={A,0.0,0.0};
Point(3)={A,B,0.0};
Point(4)={0.0,B,0.0};
//+
Line(1) = {1, 2};
//+
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {2};
//+
Curve Loop(2) = {4, 1, 2, 3};
//+
Plane Surface(1) = {2};
//+
MeshSize {1, 2, 3, 4} = 0.005;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 5) = {1};
