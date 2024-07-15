R=17./3.;
Theta = Asin(15./17.);
Point(1)={0.0,0.0,0.0};
Point(2)={R*Cos(Theta),R*Sin(Theta),0.0};
Point(3)={R*Cos(-Theta),R*Sin(-Theta),0.0};
Point(4)={R,0.0,0.0};//+
Circle(1) = {3, 1, 4};
//+
Circle(2) = {4, 1, 2};
//+
Transfinite Curve {1, 2} = 21 Using Progression 1;
//+
Physical Curve("ARCH", 3) = {1, 2};
