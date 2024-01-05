L = 20.;
B = 16.;
H = 3.4;
Point(1)={0.0,0.0,H};
Point(2)={0.0,L,H};
Point(3)={B,L,H};
Point(4)={B,0.0,H};
//
Point(5)={4.0,4.0,H};
Point(6)={4.0,16.,H};
Point(7)={12.,16.,H};
Point(8)={12.,4.0,H};
//
Point(9)={0.0,4.0,H};
Point(10)={0.0,16.,H};
Point(11)={4.0,20.,H};
Point(12)={12.,20.0,H};
Point(13)={16.0,4.0,H};
Point(14)={16.0,16.,H};
Point(15)={4.0,0.0,H};
Point(16)={12.0,0.0,H};//+
Line(1) = {1, 15};
//+
Line(2) = {15, 5};
//+
Line(3) = {5, 9};
//+
Line(4) = {9, 1};
//+
Line(5) = {15, 16};
//+
Line(6) = {16, 8};
//+
Line(7) = {8, 5};
//+
Line(8) = {16, 4};
//+
Line(9) = {4, 13};
//+
Line(10) = {13, 8};
//+
Line(11) = {13, 14};
//+
Line(12) = {14, 7};
//+
Line(13) = {7, 8};
//+
Line(14) = {14, 3};
//+
Line(15) = {3, 12};
//+
Line(16) = {12, 7};
//+
Line(17) = {12, 11};
//+
Line(18) = {11, 6};
//+
Line(19) = {6, 7};
//+
Line(20) = {11, 2};
//+
Line(21) = {2, 10};
//+
Line(22) = {10, 6};
//+
Line(23) = {10, 9};
//+
Line(24) = {6, 5};
//+
Curve Loop(1) = {4, 1, 2, 3};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {7, -2, 5, 6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {10, -6, 8, 9};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {13, -10, 11, 12};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {15, 16, -12, 14};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {17, 18, 19, -16};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {20, 21, 22, -18};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {23, -3, -24, -22};
//+
Plane Surface(8) = {8};
//+
lc = DefineNumber[ 0.5, Name "Parameters/lc" ];
//+
MeshSize {1, 15, 16, 4, 13, 8, 5, 9, 10, 6, 7, 14, 3, 12, 11, 2} = 0.5;
//+
Transfinite Surface {1} = {1, 15, 5, 9};
//+
Transfinite Surface {2} = {15, 16, 8, 5};
//+
Transfinite Surface {3} = {16, 4, 13, 8};
//+
Transfinite Surface {4} = {8, 13, 14, 7};
//+
Transfinite Surface {5} = {7, 14, 3, 12};
//+
Transfinite Surface {6} = {6, 7, 12, 11};
//+
Transfinite Surface {7} = {10, 6, 11, 2};
//+
Transfinite Surface {8} = {9, 5, 6, 10};
//+
Recombine Surface {1, 2, 3, 4, 5, 6, 7, 8};
//+
Physical Surface(25) = {1, 2, 3, 4, 5, 6, 7, 8};
//+
Extrude {0, 0, -3.4} {
  Curve{13}; Curve{19}; Curve{24}; Curve{7}; Layers {7}; Recombine;
}
//+
Extrude {0, 0, 3.4} {
  Curve{13}; Curve{19}; Curve{24}; Curve{7}; Layers {7}; Recombine;
}
//+
Translate {0, 0, 3.4} {
  Duplicata { Surface{1}; Surface{8}; Surface{7}; Surface{2}; Surface{3}; Surface{4}; Surface{5}; Surface{6}; }
}
//+
Translate {0, 0, 3.4} {
  Duplicata { Surface{29}; Surface{83}; Surface{78}; Surface{73}; Surface{58}; Surface{88}; Surface{93}; Surface{68}; Surface{63}; }
}
//+
Translate {0, 0, 3.4} {
  Duplicata { Surface{45}; Surface{53}; Surface{49}; Surface{57}; }
}
//+
Translate {0, 0, 3.4} {
  Duplicata { Surface{135}; Surface{115}; Surface{110}; Surface{105}; Surface{130}; Surface{125}; Surface{120}; Surface{100}; }
}
//+
Translate {0, 0, 3.4} {
  Duplicata { Surface{149}; Surface{139}; Surface{154}; Surface{144}; }
}
//+
Transfinite Surface {154} = {26, 23, 142, 174};
//+
Recombine Surface {105, 199, 154};
//+
Transfinite Surface {155} = {248, 252, 243, 244};
//+
Recombine Surface {155};
//+
Transfinite Surface {175} = {252, 307, 308, 243};
//+
Recombine Surface {175};
//+
Transfinite Surface {160} = {264, 248, 244, 260};
//+
Recombine Surface {160};
//+
Transfinite Surface {180} = {332, 323, 307, 252};
//+
Recombine Surface {180};
//+
Transfinite Surface {185} = {332, 348, 339, 323};
//+
Recombine Surface {185};
//+
Transfinite Surface {190} = {275, 291, 348, 332};
//+
Recombine Surface {190};
//+
Transfinite Surface {165} = {284, 275, 248, 264};
//+
Recombine Surface {165};
//+
Transfinite Surface {139} = {23, 22, 141, 142};
//+
Recombine Surface {139};
//+
Transfinite Surface {209} = {226, 174, 248, 252};
//+
Recombine Surface {209};
//+
Transfinite Surface {199} = {141, 142, 275, 332};
//+
Transfinite Surface {194} = {226, 141, 332, 252};
//+
Recombine Surface {194};
//+
Recombine Surface {149, 199, 144, 204};
//+
Transfinite Surface {204} = {142, 174, 248, 275};
//+
Transfinite Surface {149} = {22, 24, 226, 141};
//+
Transfinite Surface {68} = {60, 43, 24, 59};
//+
Recombine Surface {68};
//+
Transfinite Surface {144} = {24, 26, 174, 226};
//+
Transfinite Surface {130} = {238, 242, 226, 222};
//+
Recombine Surface {130};
//+
Transfinite Surface {115} = {190, 178, 174, 189};
//+
Recombine Surface {115};
//+
Transfinite Surface {58} = {28, 32, 26, 27};
//+
Recombine Surface {58};
//+
Transfinite Surface {88} = {123, 124, 22, 116};
//+
Recombine Surface {88};
//+
Transfinite Surface {120} = {205, 206, 141, 150};
//+
Recombine Surface {120};
//+
Transfinite Surface {73} = {32, 84, 23, 26};
//+
Recombine Surface {73};
//+
Transfinite Surface {105} = {166, 146, 142, 162};
//+
Transfinite Surface {78} = {100, 91, 23, 84};
//+
Recombine Surface {78};
//+
//+
Transfinite Surface {135} = {242, 189, 174, 226};
//+
Recombine Surface {135};
//+
Transfinite Surface {100} = {150, 141, 142, 146};
//+
Recombine Surface {100};
//+
Transfinite Surface {170} = {291, 275, 284, 300};
//+
Recombine Surface {170};
//+
Transfinite Surface {93} = {124, 59, 24, 22};
//+
Recombine Surface {93};
//+
Transfinite Surface {125} = {222, 226, 141, 206};
//+
Recombine Surface {125};
//+
Transfinite Surface {63} = {27, 26, 24, 43};
//+
Recombine Surface {63};
//+
Transfinite Surface {83} = {116, 22, 23, 91};
//+
Recombine Surface {83};
//+
Transfinite Surface {110} = {162, 142, 174, 178};
//+
Recombine Surface {110};
//+
Physical Surface("FLOOR_01", 210) = {1, 2, 3, 4, 5, 33, 6, 7, 8};
//+
Physical Surface("FLOOR_02", 211) = {73, 68, 63, 78, 83, 88, 58, 93};
//+
Physical Surface("FLOOR_03", 212) = {120, 125, 130, 110, 105, 115, 135, 100};
//+
Physical Surface("FLOOR_04", 213) = {155, 175, 180, 160, 165, 170, 190, 185};
//+
Physical Surface("WALL_01", 214) = {33, 37, 41, 29};
//+
Physical Surface("WALL_02", 215) = {49, 53, 57, 45};
//+
Physical Surface("WALL_03", 216) = {154, 139, 149, 144};
//+
Physical Surface("WALL_04", 217) = {209, 204, 199, 194};
//+
Line(207) = {4, 100};
//+
Line(208) = {100, 166};
//+
Line(209) = {166, 300};
//+
Translate {0, 4, 0} {
  Duplicata { Curve{207}; Curve{208}; Curve{209}; }
}
//+
Translate {0, 4, 0} {
  Duplicata { Curve{220}; Curve{219}; Curve{218}; }
}
//+
Translate {0, 4, 0} {
  Duplicata { Curve{109}; Curve{221}; Curve{222}; Curve{223}; }
}
//+
Translate {0, 4, 0} {
  Duplicata { Curve{226}; Curve{225}; Curve{227}; }
}
//+
Translate {0, 4, 0} {
  Duplicata { Curve{229}; }
}
//+
Translate {0, 4, 0} {
  Duplicata { Curve{228}; }
}
//+
Translate {0, 4, 0} {
  Duplicata { Curve{230}; }
}
//+
Translate {0, 0, -3.4} {
  Duplicata { Curve{207}; Curve{218}; Curve{223}; Curve{227}; Curve{230}; Curve{233}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{231}; Curve{232}; Curve{233}; Curve{239}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{243}; Curve{242}; Curve{241}; Curve{240}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{244}; Curve{245}; Curve{89}; Curve{246}; Curve{247}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{252}; Curve{251}; Curve{249}; Curve{248}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{234}; Curve{207}; Curve{208}; Curve{209}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{260}; Curve{259}; Curve{258}; Curve{257}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{261}; Curve{262}; Curve{263}; Curve{264}; }
}
//+
Translate {-4, 0, 0} {
  Duplicata { Curve{265}; Curve{266}; Curve{267}; Curve{268}; }
}
//+
Translate {-16, 0, 0} {
  Duplicata { Curve{235}; Curve{236}; Curve{237}; Curve{238}; Curve{218}; Curve{219}; Curve{220}; Curve{221}; Curve{222}; Curve{223}; Curve{227}; Curve{226}; Curve{225}; Curve{229}; Curve{228}; Curve{230}; }
}
//+
Transfinite Curve {207, 208, 209, 234, 235, 236, 237, 238, 239, 243, 244, 248, 256, 255, 254, 253, 252, 251, 249, 245, 246, 247, 240, 241, 242, 233, 232, 231, 253, 230, 228, 229, 270, 269, 265, 266, 271, 272, 268, 273, 264, 257, 267, 263, 258, 277, 262, 259, 278, 260, 261, 279, 218, 219, 220, 221, 222, 223, 226, 225, 227, 274, 275, 276, 287, 286, 285, 280, 281, 284, 288, 283, 282} = 2 Using Progression 1;
//+
Physical Curve("COLUMN", 289) = {234, 207, 209, 208, 219, 220, 218, 235, 236, 223, 222, 221, 225, 226, 227, 237, 238, 230, 228, 229, 231, 232, 233, 239, 272, 271, 270, 269, 279, 278, 277, 273, 274, 281, 282, 280, 283, 284, 285, 275, 268, 267, 266, 265, 286, 287, 288, 276, 260, 259, 258, 257, 264, 263, 262, 261, 253, 254, 255, 256, 248, 249, 251, 252, 247, 246, 245, 244, 243, 242, 241, 240};
