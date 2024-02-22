Point(100)={0.0,0.0,0.0};
Point(101)={0.0,0.0,80.0};
Point(102)={0.0,0.0,160.0};
Point(103)={0.0,0.0,492.0};
Point(104)={0.0,0.0,564.0};
Point(105)={0.0,0.0,684.0};
Point(117)={0.0,0.0,4344.0};
Point(118)={0.0,0.0,4464.0};
Point(119)={0.0,0.0,4536.0};
Point(120)={0.0,0.0,4868.0};
Point(121)={0.0,0.0,4948.0};
Point(122)={0.0,0.0,5028.0};//+
Line(1) = {100, 101};
//+
Line(2) = {101, 102};
//+
Line(3) = {102, 103};
//+
Line(4) = {103, 104};
//+
Line(5) = {104, 105};
//+
Line(6) = {105, 117};
//+
Line(7) = {117, 118};
//+
Line(8) = {118, 119};
//+
Line(9) = {119, 120};
//+
Line(10) = {120, 121};
//+
Line(11) = {121, 122};
//+
Transfinite Curve {1, 2, 3, 4, 5} = 2 Using Progression 1;
//+
Transfinite Curve {6} = 13 Using Progression 1;

Transfinite Curve {7, 8, 9, 10, 11} = 2 Using Progression 1;
//+
Physical Curve("SECTION_01", 12) = {1, 2};
//+
Physical Curve("SECTION_02", 13) = {3};
//+
Physical Curve("SECTION_03", 14) = {4};
//+
Physical Curve("SECTION_04", 15) = {5};
//+
Physical Curve("SECTION_05", 16) = {6};
//+
Physical Curve("SECTION_06", 17) = {7};
//+
Physical Curve("SECTION_07", 18) = {8};
//+
Physical Curve("SECTION_08", 19) = {9};
//+
Physical Curve("SECTION_09", 20) = {10, 11};
