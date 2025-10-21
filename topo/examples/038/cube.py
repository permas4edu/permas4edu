import cadquery as cq

# Create the initial cube
cube = cq.Workplane("XY").box(25, 25, 25)
moved_cube = cube.translate((12.5, 12.5, 0))
# Select the bottom face of the cube
# The .faces("-Z") method selects the face pointing in the negative Z direction
bottom_face_workplane = moved_cube.faces("-Z")

# Create a new workplane on the selected bottom face.
# Then, draw a rectangle that is larger than the cube's base.
# For example, a 12x12 rectangle.
# The .rect(width, height) method draws a rectangle centered on the workplane origin.
quad_surface = bottom_face_workplane.workplane().rect(6, 6).extrude(0.5) # Extrude by a small amount to create a thin surface

# Combine the original cube and the new quadrangular surface
#result_solid = moved_cube.union(quad_surface)
result_solid = moved_cube.split(quad_surface)
# Show the result
cq.exporters.export(result_solid, "cube_with_base.step")
#show_object(result)