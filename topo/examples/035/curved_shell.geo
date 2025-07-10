L=1.;
H=0.5;
k = 0.3;
Phi=Asin(H/(2*k));
Point(1)={0.,0.,0.};
Point(2)={0.,k*Cos(Phi), k*Sin(Phi)};
Point(3)={0.,k*Cos(-Phi),k*Sin(-Phi)};
//+
Circle(1) = {3, 1, 2};
//+
//+
//+
Transfinite Curve {1} = 51 Using Progression 1;
//+
Extrude {L, 0, 0} {
  Curve{1}; Layers {100}; Recombine;
}
//+
Physical Surface("SHELL", 6) = {5};
