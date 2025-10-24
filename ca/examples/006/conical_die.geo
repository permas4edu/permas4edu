a=600.;
d0=120.;
d1=60.;
r0=d0/2;
r1=d1/2;
D=320.;
R=D/2;
Point(1)={0.0,0.0,0.0};
Point(2)={a,0.0,0.0};
Point(3)={0.0,r0,0.0};
Point(4)={a,r1,0.0};
Point(5)={0.0,R,0.0};
Point(6)={a,R,0.0};

//+
Line(1) = {3, 4};
//+
Line(2) = {4, 6};
//+
Line(3) = {6, 5};
//+
Line(4) = {5, 3};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Transfinite Curve {1, 3} = 31 Using Progression 1;
//+
Transfinite Curve {4, 2} = 5 Using Progression 1;
//+
Transfinite Surface {1} = {3, 4, 6, 5};
//+
Recombine Surface {1};
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{1}; Layers{7}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Surface{1}; Layers{7}; Recombine;
}
//+
rd=50.;

Point(17) = {0, 0, rd};
//+
Point(18) = {0, rd, 0};
Point(19) = {0.0,0.3*rd,0.3*rd};
Point(20) = {0.0,0.3*rd,0.0};
Point(21) = {0.0,0.0,0.3*rd};
Point(22) = {0.0,rd*Cos(Pi/4),rd*Sin(Pi/4)};//+
Line(21) = {1, 21};
//+
Line(22) = {21, 19};
//+
Line(23) = {19, 20};
//+
Line(24) = {20, 1};
//+
Line(25) = {21, 17};
//+
Line(26) = {19, 22};
//+
Line(27) = {20, 18};
//+
Circle(28) = {17, 1, 22};
//+
Circle(29) = {22, 1, 18};
//+
Curve Loop(2) = {21, 22, 23, 24};
//+
Plane Surface(27) = {2};
//+
Curve Loop(3) = {26, 29, -27, -23};
//+
Plane Surface(28) = {3};
//+
Curve Loop(4) = {25, 28, -26, -22};
//+
Plane Surface(29) = {4};
//+
Transfinite Curve {28, 29, 23, 22, 24, 21, 26, 27, 25} = 4 Using Progression 1;
//+
Transfinite Surface {27} = {1, 21, 19, 20};
//+
Transfinite Surface {28} = {20, 19, 22, 18};
//+
Transfinite Surface {29} = {21, 17, 22, 19};
//+
Recombine Surface {28, 29, 27};
//+
Extrude {200, 0, 0} {
  Surface{29}; Surface{28}; Surface{27}; Layers {20}; Recombine;
}
//+
Physical Volume("BILLET", 96) = {4, 5, 3};
//+
Physical Volume("DIE", 97) = {1};
