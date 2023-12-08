h=10.0; // charateristic edge length
b_w=100.; // Depth of web
kappa_f = 0.5; // 0.2 0.3 0.4 0.5 ... 1.2 Web-to-flange width ratio
kappa_l = 0.4; // 0.1  0.15 0.2 0.25 ... 0.4 Web-to-lip ratio
lambda_w = 20;
l = lambda_w*b_w;
b_f=kappa_f*b_w;
d = kappa_l*b_w;
nlayer=Round(l/2/h);
Point(1)={0.0, 0.5*b_w,0.0,h};
Point(2)={0.0,-0.5*b_w,0.0,h};
Point(3)={b_f, 0.5*b_w,0.0,h};
Point(4)={b_f,-0.5*b_w,0.0,h};
Point(5)={b_f, 0.5*b_w+d,0.0,h};
Point(6)={b_f,-0.5*b_w-d,0.0,h};
Point(7)={0.0,0.0,0.0,h};//+
Line(1) = {7, 1};
//+
Line(2) = {1, 3};
//+
Line(3) = {3, 5};
//+
Line(4) = {7, 2};
//+
Line(5) = {2, 4};
//+
Line(6) = {4, 6};
//+
Extrude {0, 0,  l/2} {
  Curve{4}; Curve{1}; Curve{2}; Curve{3}; Curve{5}; Curve{6}; Layers {nlayer}; Recombine;
}
Extrude {0, 0, -l/2} {
  Curve{4}; Curve{1}; Curve{2}; Curve{3}; Curve{5}; Curve{6}; Layers {nlayer}; Recombine;
}//+
Physical Surface("CFOS", 55) = {14, 18, 22, 10, 26, 30, 54, 50, 34, 38, 46, 42};
