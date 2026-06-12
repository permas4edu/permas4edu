// --- Option zum Splitten jedes Quads in 4 Quads aktivieren ---
Mesh.SubdivisionAlgorithm = 1; // 1: All Quads (Teilt jedes Quad-Element in 4 kleinere Quads auf)

// --- Parameter definieren ---
R = 100.0;             // Radius der Kreisplatte
d = R * 0.45;          // Halbe Kantenlänge des inneren Quadrats (ca. 45% des Radius für optimale Elementqualität)

n_ring = 15;           // Anzahl der Elemente entlang des Kreisbogens / inneren Quadrats
n_radial = 10;         // Anzahl der Elemente in radialer Richtung (Zentrum nach außen)

// --- 1. Punkte definieren ---
// Zentrum der Kreisplatte
Point(1) = {0, 0, 0};

// Die 4 Eckpunkte des inneren Quadrats
Point(2) = { d,  d, 0};
Point(3) = {-d,  d, 0};
Point(4) = {-d, -d, 0};
Point(5) = { d, -d, 0};

// Die 4 entsprechenden Punkte auf dem äußeren Kreisrand (unter 45°, 135°, 225°, 315°)
s = R / Sqrt(2);
Point(6) = { s,  s, 0};
Point(7) = {-s,  s, 0};
Point(8) = {-s, -s, 0};
Point(9) = { s, -s, 0};

// --- 2. Linien und Kreisbögen definieren ---
// Kanten des inneren Quadrats (gerade Linien)
Line(1) = {2, 3};
Line(2) = {3, 4};
Line(3) = {4, 5};
Line(4) = {5, 2};

// Radiale Verbindungen (gerade Linien von innen nach außen)
Line(5) = {2, 6};
Line(6) = {3, 7};
Line(7) = {4, 8};
Line(8) = {5, 9};

// Äußere Kreisbögen (Syntax: {Startpunkt, Zentrum, Endpunkt})
Circle(9)  = {6, 1, 7};
Circle(10) = {7, 1, 8};
Circle(11) = {8, 1, 9};
Circle(12) = {9, 1, 6};

// --- 3. Die 5 Flächen (Blöcke) definieren ---
// Block 1: Das innere Quadrat (Zentrum)
Curve Loop(1) = {1, 2, 3, 4};
Plane Surface(1) = {1};

// Block 2: Oberer Block
Curve Loop(2) = {1, 6, -9, -5};
Plane Surface(2) = {2};

// Block 3: Linker Block
Curve Loop(3) = {2, 7, -10, -6};
Plane Surface(3) = {3};

// Block 4: Unterer Block
Curve Loop(4) = {3, 8, -11, -7};
Plane Surface(4) = {4};

// Block 5: Rechter Block
Curve Loop(5) = {4, 5, -12, -8};
Plane Surface(5) = {5};

// --- 4. Strukturiertes Transfinite-Netz aufbauen ---
// Transfinite Teilungen auf den Umfangs-Segmenten zuweisen
Transfinite Curve {1, 2, 3, 4, 9, 10, 11, 12} = n_ring;

// Transfinite Teilungen auf den radialen Verbindungen zuweisen
Transfinite Curve {5, 6, 7, 8} = n_radial;

// Alle Flächen transfinit machen und Dreiecke in Quads (Vierecke) konvertieren
For i In {1 : 5}
  Transfinite Surface {i};
  Recombine Surface {i};
EndFor

// Geometrie bereinigen und physikalische Gruppen definieren
Coherence;
Physical Surface("Platte") = {1:5};
//Physical Curve("Aussenrand") = {9, 10, 11, 12};