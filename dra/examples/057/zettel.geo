a=450.;
b=300.;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={a,b,0.0};
Point(4)={0.0,b,0.0};
Point(5)={337.5,75.0,0.0}; // excitation
Point(6)={112.5,225.0,0.0}; // dashpot//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 37 Using Progression 1;
//+
Transfinite Curve {2, 4} = 25 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Physical Surface("PLATE", 5) = {1};
//+
Physical Point("DASHPOT", 6) = {6};
//+
Physical Point("EXCITATION", 7) = {5};
