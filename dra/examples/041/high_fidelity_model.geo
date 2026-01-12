L=200.;
W=200.;
l=12.5;
w=12.5;
Point(1)={0.0,0.0,0.0};
Point(2)={L,0.0,0.0};
Point(3)={L,W,0.0};
Point(4)={0.0,W,0.0};
Point(5)={l,0.0,0.0};
Point(6)={0.0,w,0.0};
Point(7)={l,w,0.0};
Point(8)={L-l,0.0,0.0};
Point(9)={L-l,w,0.0};
Point(10)={L,w,0.0};
Point(11)={L-l,W,0.0};
Point(12)={L-l,W-w,0.0};
Point(13)={L,W-w,0.0};
Point(14)={0.0,W-w,0.0};
Point(15)={l,W-w,0.0};
Point(16)={l,W,0.0};
//+
Line(1) = {1, 5};
//+
Line(2) = {5, 8};
//+
Line(3) = {8, 2};
//+
Line(4) = {2, 10};
//+
Line(5) = {10, 13};
//+
Line(6) = {13, 3};
//+
Line(7) = {3, 11};
//+
Line(8) = {11, 16};
//+
Line(9) = {16, 4};
//+
Line(10) = {4, 14};
//+
Line(11) = {14, 6};
//+
Line(12) = {6, 1};
//+
Line(13) = {5, 7};
//+
Line(14) = {7, 6};
//+
Line(15) = {8, 9};
//+
Line(16) = {9, 10};
//+
Line(17) = {9, 12};
//+
Line(18) = {12, 13};
//+
Line(19) = {12, 11};
//+
Line(20) = {12, 15};
//+
Line(21) = {15, 16};
//+
Line(22) = {15, 14};
//+
Line(23) = {15, 7};
//+
Line(24) = {7, 9};
//+
Curve Loop(1) = {12, 1, 13, 14};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {24, -15, -2, 13};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {16, -4, -3, 15};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {17, 18, -5, -16};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {19, -7, -6, -18};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {20, 21, -8, -19};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {10, -22, 21, 9};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {11, -14, -23, 22};
//+
Plane Surface(8) = {8};
//+
Transfinite Curve {13, 1, 14, 12, 22, 21, 9, 10, 7, 19, 18, 6, 16, 4, 3, 15} = 4 Using Progression 1;
//+
Transfinite Curve {2, 24, 17, 5, 20, 8, 23, 11} = 19 Using Progression 1;
//+
Transfinite Surface {1} = {1, 5, 7, 6};
//+
Transfinite Surface {2} = {5, 8, 9, 7};
//+
Transfinite Surface {3} = {8, 2, 10, 9};
//+
Transfinite Surface {4} = {9, 10, 13, 12};
//+
Transfinite Surface {5} = {12, 13, 3, 11};
//+
Transfinite Surface {6} = {12, 11, 16, 15};
//+
Transfinite Surface {7} = {14, 15, 16, 4};
//+
Transfinite Surface {8} = {6, 7, 15, 14};
//+
Recombine Surface {3, 4, 2, 5, 1, 6, 8, 7};
//+
Extrude {0, 0, -150} {
  Surface{1}; Surface{3}; Surface{5}; Surface{7}; Layers {15}; Recombine;
}
//+
Curve Loop(9) = {24, 17, 20, 23};
//+
Plane Surface(113) = {9};
//+
Transfinite Surface {113} = {7, 9, 12, 15};
//+
Recombine Surface {113};
//+
Extrude {0, 0, 20} {
  Surface{2}; Surface{3}; Surface{4}; Surface{5}; Surface{6}; Surface{7}; Surface{8}; Surface{1}; Layers {3}; Recombine;
}
//+
Extrude {0, 0, 150} {
  Surface{289}; Surface{245}; Surface{201}; Surface{157}; Layers {15}; Recombine;
}
//+
Line(372) = {128, 126};
//+
Line(373) = {117, 127};
//+
Line(374) = {136, 102};
//+
Line(375) = {106, 127};
//+
Line(376) = {106, 112};
//+
Line(377) = {108, 97};
//+
Line(378) = {118, 116};
//+
Line(379) = {112, 117};
//+
Curve Loop(10) = {372, 338, 373, 357};
//+
Plane Surface(378) = {10};
//+
Curve Loop(11) = {378, -315, 379, 335};
//+
Plane Surface(379) = {11};
//+
Curve Loop(12) = {376, -314, 377, -294};
//+
Plane Surface(380) = {12};
//+
Curve Loop(13) = {375, -360, 374, 293};
//+
Plane Surface(381) = {13};
//+
Curve Loop(14) = {373, -375, 376, 379};
//+
Plane Surface(382) = {14};
//+
Transfinite Curve {372, 373, 378, 379, 376, 377, 375, 374} = 19 Using Progression 1;
//+
Transfinite Surface {381} = {136, 127, 106, 102};
//+
Transfinite Surface {378} = {128, 127, 117, 126};
//+
Transfinite Surface {379} = {117, 118, 116, 112};
//+
Transfinite Surface {380} = {112, 108, 97, 106};
//+
Transfinite Surface {382} = {127, 117, 112, 106};
//+
Recombine Surface {381, 382, 378, 379, 380};
//+
Extrude {0, 0, 20} {
  Surface{113}; Layers {3}; Recombine;
}
//+
Extrude {0, 0, 20} {
  Surface{378}; Surface{377}; Surface{381}; Surface{311}; Surface{380}; Surface{333}; Surface{379}; Surface{355}; Layers {3}; Recombine;
}
//+
Extrude {0, 0, 20} {
  Surface{382}; Layers {3}; Recombine;
}
//+
Extrude {0, 0, 150} {
  Surface{448}; Surface{492}; Surface{580}; Surface{536}; Layers {15}; Recombine;
}
//+
Line(685) = {213, 231};
//+
Line(686) = {227, 212};
//+
Line(687) = {212, 192};
//+
Line(688) = {193, 221};
//+
Line(689) = {192, 211};
//+
Line(690) = {207, 201};
//+
Line(691) = {223, 202};
//+
Line(692) = {211, 227};
//+
Curve Loop(15) = {685, -672, 686, 648};
//+
Plane Surface(691) = {15};
//+
Curve Loop(16) = {687, 689, 692, 686};
//+
Plane Surface(692) = {16};
//+
Curve Loop(17) = {689, -628, 690, 607};
//+
Plane Surface(693) = {17};
//+
Curve Loop(18) = {688, 651, 687, 604};
//+
Plane Surface(694) = {18};
//+
Curve Loop(19) = {692, -671, 691, -629};
//+
Plane Surface(695) = {19};
//+
Transfinite Curve {685, 686, 687, 688, 689, 690, 692, 691} = 19 Using Progression 1;
//+
Transfinite Surface {691} = {212, 213, 231, 227};
//+
Transfinite Surface {695} = {227, 223, 202, 211};
//+
Transfinite Surface {693} = {201, 192, 211, 207};
//+
Transfinite Surface {694} = {221, 212, 192, 193};
//+
Transfinite Surface {692} = {212, 227, 211, 192};
//+
Recombine Surface {692, 695, 693, 694, 691};
//+
Extrude {0, 0, 20} {
  Surface{693}; Surface{624}; Surface{694}; Surface{692}; Surface{668}; Surface{691}; Surface{690}; Surface{695}; Surface{646}; Layers {3}; Recombine;
}
//+
Physical Volume("HFM", 894) = {39, 28, 31, 38, 21, 32, 13, 34, 20, 37, 22, 27, 12, 30, 33, 19, 1, 36, 26, 5, 23, 11, 16, 35, 14, 18, 6, 24, 17, 29, 10, 2, 25, 4, 7, 9, 15, 8, 3};
