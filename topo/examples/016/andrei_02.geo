Ri=1.0;
Re=2.0;
R=0.1;
L3=0.5;
Point(1)={0.0,0.0,0.0};
Point(2)={0.0,Ri,R};
Point(3)={0.0,Re,R};
Point(4)={0.0,Ri+R,0.0};
Point(5)={0.0,Re-R,0.0};
Point(6)={0.0,Ri+R,R};
Point(7)={0.0,Re-R,R};
Point(8)={0.0,Re-R,R+0.3};
Point(9)={0.0,Ri+R,R+0.3};
Point(10)={0.0,Ri+R,L3};
Point(11)={0.0,Re-R,L3};
Point(12)={0.0,Ri,R+0.3};
Point(13)={0.0,Re,R+0.3};//+
Line(1) = {11, 10};
//+
Line(2) = {5, 4};
//+
Line(3) = {13, 3};
//+
Line(4) = {12, 2};
//+
Circle(5) = {11, 8, 13};
//+
Circle(6) = {3, 7, 5};
//+
//+
Circle(7) = {4, 6, 2};
//+
Circle(8) = {12, 9, 10};
//+
Transfinite Curve {1, 2} = 41 Using Progression 1;
//+
Transfinite Curve {3, 4} = 15 Using Progression 1;
//+
Transfinite Curve {5, 6, 8, 7} = 7 Using Progression 1;
//+
Extrude {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Curve{8}; Curve{4}; Curve{7}; Curve{1}; Curve{5}; Curve{2}; Curve{3}; Curve{6}; Layers{72}; Recombine;
}
//+
Physical Surface("ARC", 41) = {12, 16, 24, 20, 28, 32, 36, 40};
