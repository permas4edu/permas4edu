Point(1)={-0.05,-0.05,-0.05};
Point(2)={-0.05,-0.05+0.07,-0.05};
Point(3)={-0.05,-0.05+0.07,-0.05+0.595};
Point(4)={-0.05,-0.05     ,-0.05+0.595};
Point(5)={-0.05+0.163,-0.05,-0.05};
Point(6)={-0.05+0.063,-0.05,-0.05+0.595};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Line(5) = {1, 5};
//+
Line(6) = {5, 6};
//+
Line(7) = {6, 4};
//+
Transfinite Curve {1, 3} = 15 Using Progression 1;
//+
Transfinite Curve {2, 4, 6} = 120 Using Progression 1;
//+
Transfinite Curve {5, 7} = 33 Using Progression 1;
//+
Curve Loop(1) = {2, 3, 4, 1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 5, 6, 7};
//+
Plane Surface(2) = {2};
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Transfinite Surface {2} = {5, 1, 4, 6};
//+
Recombine Surface {2, 1};
//+
Physical Surface("L_profile", 8) = {1, 2};
