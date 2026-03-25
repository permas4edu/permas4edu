a=700.;
c=1000.;
l1=450.;
l2=250.;
h=300.;
Point(1)={0.0,0.0,0.0};
Point(2)={l2,0.0,0.0};
Point(3)={l2+l1,0.0,0.0};
Point(4)={l2,h,0.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 4};
//+
Line(3) = {2, 3};
//+
Transfinite Curve {1} = 26 Using Progression 1;
//+
Transfinite Curve {3} = 46 Using Progression 1;
//+
Transfinite Curve {2} = 31 Using Progression 1;
//+
Extrude {0, 0, c} {
  Curve{1}; Curve{2}; Curve{3}; Layers {100}; Recombine;
}
//+
Physical Surface("PLATE_01", 16) = {7};
//+
Physical Surface("PLATE_02", 17) = {15};
//+
Physical Surface("PLATE_03", 18) = {11};
