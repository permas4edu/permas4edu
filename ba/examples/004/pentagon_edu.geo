Point(1)={ 0.000000e+00, 0.000000e+00, 0.000000e+00};
Point(2)={-3.090170e-01, 9.510570e-01, 0.000000e+00};
Point(3)={ 5.000000e-01, 1.538842e+00, 0.000000e+00};
Point(4)={ 1.309017e+00, 9.510569e-01, 0.000000e+00};
Point(5)={ 1.000000e+00, 0.000000e+00, 0.000000e+00};
//+
Line(1) = {1, 5};
//+
Line(2) = {5, 4};
//+
Line(3) = {4, 3};
//+
Line(4) = {3, 2};
//+
Line(5) = {2, 1};
//+
Physical Curve("51", 6) = {1, 2, 3, 4, 5};
//+
Transfinite Curve {1, 2, 3, 4, 5} = 51 Using Progression 1;
