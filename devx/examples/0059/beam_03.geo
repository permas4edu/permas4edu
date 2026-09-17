// =================================================================
// Gmsh GEO Script: Cumulative sums & beam section point generation
// =================================================================

// Section lengths L_i in [mm]
L[] = {
  26.0,  14.0,   8.0,  22.0,   9.17,
  51.83, 50.0,  23.0,   9.0,  13.0,
  23.0,   9.0, 100.0,  61.83,  9.17,
  22.0,   8.0,  14.0,  26.0
};

// Radii R_i in [mm]
R[] = {
   4.5,   4.5,   4.5,   4.5,   7.25,
  10.0,  10.0,  10.0,  10.0,  10.0,
  10.0,  10.0,  10.0,  10.0,   7.25,
   4.5,   4.5,   4.5,   4.5
};

// Starting point at origin (x = 0)
x_cum = 0.0;
Point(1) = {x_cum, 0, 0};

// Loop to calculate cumulative sum & create points
For i In {0 : #L[] - 1}
    x_cum = x_cum + L[i];
    Point(i + 2) = {x_cum, 0, 0};
EndFor

// Connect points with line segments and set Transfinite Line
lines[] = {};
For i In {1 : #L[]}
    Line(i) = {i, i + 1};
    Transfinite Line {i} = 2; // Sets 2 nodes (1 element) per segment; adjust as needed
    lines[] += {i};
EndFor

// Create Physical Group for all beam lines
Physical Curve("Beam_Axis") = lines[];