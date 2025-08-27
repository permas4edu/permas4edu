// Definiere die Anzahl der Punkte
N = 50;

// Definiere die Amplitude und Länge der Kurve
lc = 0.1; // Charakteristische Länge für das Mesh

H=2.4;
L=6.0;

// Erstelle eine Liste, um die IDs der Punkte zu speichern
points[] = {};

// Schleife, um die Punkte zu erstellen
For i In {0:N}
    x = i * L/N;
    y = -4*H*x^2/L^2+4*H*x/L;
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
Transfinite Curve {13, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 26, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 38, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27} = 2 Using Progression 1;
//+
Physical Curve("ARCH", 51) = {13, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 26, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 38, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27};
