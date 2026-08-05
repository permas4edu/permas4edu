// Set element order to 2 (quadratic)
Mesh.ElementOrder = 2;
// Enable incomplete elements to generate 20-node serendipity hexahedrons instead of 27-node elements
Mesh.SecondOrderIncomplete = 1;
L_p=0.29;
W_p=0.29;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,L_p,0.0};
Point(3)={0.0,L_p,W_p};
Point(4)={0.0,0.0,W_p};
//+
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
Transfinite Curve {4, 3, 1, 2} = 30 Using Progression 1;
//+
Transfinite Surface {1} = {1, 2, 3, 4};
//+
Recombine Surface {1};
//+
Extrude {2.E-3, 0, 0} {
  Surface{1}; Layers {2}; Recombine;
}
//+
Physical Volume("PLATE", 27) = {1};
