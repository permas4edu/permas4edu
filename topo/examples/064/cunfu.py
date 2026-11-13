import math
from build123d import (
    BuildSketch,
    BuildLine,
    Line,
    ThreePointArc,
    RadiusArc,
    make_face,
    export_step,
    Plane,
)

# Parameter gemäß Gmsh-Skript
R: float = 1.0
alpha: float = math.asin(1.5 * math.sqrt(3) * R / 3.0 * R)

# Punktkoordinaten
p1 = (0.0, 0.0)
p2 = (3.0 * R, 0.0)
p3 = (6.0 * R, 0.0)
p4 = (6.0 * R, 3.0 * R)
p5 = (6.0 * R, 3.0 * R + 1.5 * math.sqrt(3) * R)
p6 = (3.0 * R, 3.0 * R)
p7 = (0.0, 3.0 * R)
p9 = (R, 3.0 * R)
p10 = (0.5 * R, 3.0 * R + 0.5 * R)
p11 = (3.0 * R * math.cos(alpha), 3.0 * R + 1.5 * math.sqrt(3) * R)
p13 = (2.0 * R, 2.0 * R)

with BuildSketch(Plane.XY) as hook_sketch:
    with BuildLine() as hook_path:
        # Geschlossene Kontur exakt entlang Curve Loop(1) definieren
        Line(p1, p7)                        # Line(11)
        ThreePointArc(p7, p10, p9)          # -Circle(2) und -Circle(1)
        ThreePointArc(p9, p13, p6)          # Circle(3) und Circle(4)
        RadiusArc(p6, p11, radius=-3.0 * R) # Circle(5) um P7
        Line(p11, p5)                       # Line(6)
        Line(p5, p4)                        # Line(7)
        Line(p4, p3)                        # Line(8)
        Line(p3, p2)                        # Line(9)
        Line(p2, p1)                        # Line(10)
    
    # Erstellt die Fläche aus dem geschlossenen Wire von BuildLine
    make_face()

# Face abrufen und als STEP speichern
hook_face = hook_sketch.face()
export_step(hook_face, "hook_build123d.step")
print("build123d STEP-Export erfolgreich: hook_build123d.step")