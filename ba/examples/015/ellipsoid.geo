// Definiere die Anzahl der Punkte
N = 22;

// Definiere die Amplitude und Länge der Kurve
lc = 0.1; // Charakteristische Länge für das Mesh

H=2.4;
L=6.0;

// Erstelle eine Liste, um die IDs der Punkte zu speichern
points[] = {};

// Schleife, um die Punkte zu erstellen
For i In {0:N}
    t = i * Pi/(2*N);
	x = 2*Cos(t); 
    y = 0.2*Sin(t);
    z = 0;

    // Erstelle den Punkt und speichere seine ID in der Liste
    points[i] = newp;
    Point(points[i]) = {x, y, z, lc};
EndFor

// Erstelle eine Liste, um die IDs der Linien zu speichern
lines[] = {};

// Schleife, um die Punkte zu verbinden
For i In {0:N-1}
    // Erstelle eine Linie zwischen dem aktuellen und dem nächsten Punkt
    lines[i] = newl;
    Line(lines[i]) = {points[i], points[i+1]};
EndFor

// Erstelle einen Curve Loop aus der Liste der Linien
Curve Loop(1) = {lines[]};
//+
//+
Physical Curve("CURVE", 23) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22};
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Curve{1}; Curve{2}; Curve{3}; Curve{4}; Curve{5}; Curve{6}; Curve{7}; Curve{8}; Curve{9}; Curve{10}; Curve{11}; Curve{12}; Curve{13}; Curve{14}; Curve{15}; Curve{16}; Curve{17}; Curve{18}; Curve{19}; Curve{20}; Curve{21}; Curve{22}; Layers{18}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Curve{108}; Curve{104}; Curve{100}; Curve{96}; Curve{92}; Curve{88}; Curve{84}; Curve{80}; Curve{76}; Curve{72}; Curve{68}; Curve{64}; Curve{60}; Curve{56}; Curve{52}; Curve{48}; Curve{44}; Curve{40}; Curve{36}; Curve{32}; Curve{28}; Curve{24}; Layers{18}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Curve{111}; Curve{114}; Curve{118}; Curve{122}; Curve{126}; Curve{130}; Curve{134}; Curve{138}; Curve{142}; Curve{146}; Curve{150}; Curve{154}; Curve{158}; Curve{162}; Curve{166}; Curve{170}; Curve{174}; Curve{178}; Curve{182}; Curve{186}; Curve{190}; Curve{194}; Layers{18}; Recombine;
}
//+
Extrude {{0, 1, 0}, {0, 0, 0}, Pi/2} {
  Curve{198}; Curve{201}; Curve{205}; Curve{209}; Curve{213}; Curve{217}; Curve{221}; Curve{225}; Curve{229}; Curve{233}; Curve{237}; Curve{241}; Curve{245}; Curve{249}; Curve{253}; Curve{257}; Curve{261}; Curve{265}; Curve{269}; Curve{273}; Curve{277}; Curve{281}; Layers{18}; Recombine;
}
//+
Physical Surface("ELLIPSOID", 372) = {185, 189, 181, 193, 177, 197, 173, 169, 165, 161, 157, 153, 149, 145, 141, 137, 133, 129, 125, 121, 117, 110, 113, 107, 103, 287, 99, 200, 95, 204, 91, 87, 291, 83, 79, 208, 75, 295, 71, 67, 63, 59, 212, 299, 55, 51, 47, 43, 39, 35, 216, 31, 27, 303, 220, 307, 224, 311, 228, 315, 232, 319, 236, 323, 240, 327, 244, 331, 248, 335, 252, 339, 256, 343, 260, 347, 264, 268, 351, 272, 355, 276, 280, 359, 284, 363, 367, 371};
