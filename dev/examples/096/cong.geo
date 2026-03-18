alpha=45*Pi/180.;
R1=0.1;
R2=0.6;
L1=4.;
Lc=(R2-R1)/Sin(alpha);
x=Lc*Cos(alpha);
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,R2,0.0};
Point(3)={-L1/4,R2,0.0};
Point(4)={-L1/2,R2,0.0};
Point(5)={-3*L1/4,R2,0.0};
Point(6)={-L1,R2,0.0};
Point(7)={-L1-x,R1,0.0};//+
Line(1) = {7, 6};
//+
Line(2) = {6, 5};
//+
Line(3) = {5, 4};
//+
Line(4) = {4, 3};
//+
Line(5) = {3, 2};
//+
Transfinite Curve {5, 4, 3, 2} = 21 Using Progression 1;
//+
Transfinite Curve {1} = 15 Using Progression 1;
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Curve{6}; Curve{10}; Curve{14}; Curve{18}; Curve{22}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Curve{26}; Curve{30}; Curve{34}; Curve{38}; Curve{42}; Layers{18}; Recombine;
}
//+
Extrude {{1, 0, 0}, {0, 0, 0}, Pi/2} {
  Curve{46}; Curve{50}; Curve{54}; Curve{58}; Curve{62}; Layers{18}; Recombine;
}
//+
Physical Surface("A", 86) = {49, 69, 29, 9};
//+
Physical Surface("B", 87) = {53, 73, 33, 13};
//+
Physical Surface("C", 88) = {57, 77, 37, 17};
//+
Physical Surface("C", 88) += {57, 77, 37, 17};
//+
Physical Surface("D", 89) = {61, 81, 41, 21};
//+
Physical Surface("E", 90) = {65, 85, 45, 25};
