import numpy as np
import matplotlib.pyplot as plt

def generate_beam_model(filename="deckert_02.dat", nodes_count=11, length=4.0):
    """
    Generates a PERMAS input file for an Acoustic Black Hole (ABH) beam 
    with a power-law thickness profile.
    """
    
    # --- Parameters ---
    L = length
    x = np.linspace(0.0, L, nodes_count)
    nele = nodes_count - 1
    
    h_L = 0.2       # beam height left side
    h_R = 0.15      # beam height right side
    q   = 1.E4      # line load 
    beam_width = 0.1
    
    def get_thickness(pos):
        """ Returns the thickness at a given position x using the power-law """
        return (h_R-h_L)*pos/L+h_L

    # --- File Generation ---
    print(f"Starting generation of PERMAS model: {filename}...")
    
    with open(filename, 'w') as ofile:
        # Header & Situation Setup
        ofile.write('$ENTER COMPONENT NAME = DFLT_COMP DOFTYPE = DISP\n')
        ofile.write('$SITUATION NAME = STEP_1\n')
        ofile.write('   DFLT_COMP SYSTEM = S_STEP_1 CONSTRAINTS = C_STEP_1  LOADING = L_STEP_1\n')
        ofile.write('$END SITUATION\n\n')

        # Structure Definition: Nodes and Elements
        ofile.write('$STRUCTURE\n')
        ofile.write('$RSYS CART FORM = ZX\n')
        ofile.write('  1 0.0 0.0 0.0 : 10.0 0.0 0.0 : 0.0 0.0 -10.0\n')
        
        # Write Node definitions
        ofile.write('$NODE NSET = ALL_NODES\n')
        nodes_data = np.c_[np.arange(1, nodes_count + 1), x, np.zeros((nodes_count, 2))]
        np.savetxt(ofile, nodes_data, fmt='%8i %12.8e %12.8e %12.8e')

        # Write Element definitions (BECOS type for beams)
        ofile.write('$ELEMENT TYPE = BECOS ESET = BEAM\n')
        elements = np.c_[np.arange(1, nele + 1), np.arange(1, nodes_count), np.arange(2, nodes_count + 1)]
        np.savetxt(ofile, elements, fmt='%8i %8i %8i')
        ofile.write('      $LINE GEO  LNID = LOAD\n')
        for i in range(nele):
           ofile.write(f' SFLA2  {i+1:d} {i+2:d}\n')

        ofile.write('$END STRUCTURE\n\n')

        # System Definition & Geometry Data
        ofile.write('$SYSTEM NAME = S_STEP_1\n')
        ofile.write('$ELSYS RSYS\n BEAM RSYS = 1\n')
        
        # Define Beam Section Geometry (varying thickness per element)
        ofile.write('$GEODAT BEAM CONT = SECTTYPE SECTDIM SECTDIM\n')
        for i in range(nele):
            h_start = get_thickness(x[i])
            h_end = get_thickness(x[i+1])
            # Format: GD_ID 5: Width Thick_Start: Width Thick_End
            ofile.write(f'    GD_{i+1:04d} 5: {h_start:.8e} {beam_width:.4f} :{h_end:.8e} {beam_width:.4f} \n')

        # Link Elements to Geometry and Material
        ofile.write('$ELPROP\n')
        for i in range(nele):
            ofile.write(f' {i+1:8d} GEODAT = GD_{i+1:04d} MATERIAL = MAT_01\n')
        ofile.write('$END SYSTEM\n\n')

        # Boundary Conditions (Constraints)
        ofile.write('$CONSTRAINTS NAME = C_STEP_1\n')
        ofile.write('$SUPPRESS DOFS = 1, 2, 4, 6\nALL_NODES\n') # Restrict to 2D bending
        ofile.write('$SUPPRESS DOFS = 3, 5\n')
        ofile.write(f'1\n') # Clamped end
        ofile.write('$END CONSTRAINTS\n')
        # Loading Conditions (Loads)
        ofile.write('$LOADING NAME = L_STEP_1\n')
        ofile.write('$DISLOAD LINE3D  LPAT = 1  NODES = ALL  DOFTYPE = DISP\n')
        for i in range(nele):
           ofile.write(f'  {i+1:8d} 0.0 0.0 {q:.8e}\n')
        ofile.write('$END LOADING\n')
        
        ofile.write('$EXIT COMPONENT\n')

        # Material Definition
        ofile.write('$ENTER MATERIAL\n$MATERIAL NAME = MAT_01\n')
        ofile.write('$ELASTIC GENERAL\n  2.1E11 0.3\n') # Young's Modulus and Poisson's Ratio
        ofile.write('$DENSITY\n  7800.0\n')
        ofile.write('$EXIT MATERIAL\n$FIN\n')

    print(f"Model successfully saved to {filename}.")
    print(f"Total nodes: {nodes_count}, Total elements: {nele}")

if __name__ == "__main__":
    generate_beam_model()
