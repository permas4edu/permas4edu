from __future__ import print_function
import os, sys
from OCC.Core.STEPControl import STEPControl_Writer, STEPControl_AsIs
from OCC.Core.Interface import Interface_Static_SetCVal
from OCC.Core.IFSelect import IFSelect_RetDone
from OCC.Display.SimpleGui import init_display
from OCC.Extend.DataExchange import read_iges_file

step_writer = STEPControl_Writer()
dd = step_writer.WS().TransferWriter().FinderProcess()
Interface_Static_SetCVal("write.step.schema", "AP203")

igs = sys.argv[1]
filename, file_extension = os.path.splitext(igs)
shapes = read_iges_file(igs)
# display, start_display, add_menu, add_function_to_menu = init_display()
# display.DisplayShape(shapes, update=True)
# transfer shapes and write file
step_writer.Transfer(shapes, STEPControl_AsIs)
status = step_writer.Write(filename + ".step")
# start_display()
