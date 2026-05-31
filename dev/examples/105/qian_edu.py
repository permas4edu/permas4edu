import pandas as pd
import numpy as np
import os

# --- 1. Parameter Definition ---
L = 1.0
kappa = 8.0        
A_min = 0.01
A_max = kappa * A_min
m = np.log(kappa) / (2 * L)
E = 69.E+10
rho = 2700.0

# Auxiliary variables for the area function
x_1 = np.pi * L / (2 * (np.log(kappa) + np.pi))
x_2 = (2 * np.log(kappa) + np.pi) * L / (2 * (np.log(kappa) + np.pi))

# --- 2. Data Import & Cleaning ---
def load_data(nodes_path, conn_path):
    # Read files and clean column names (strip whitespace and quotes) in one go
    nodes = pd.read_csv(nodes_path, sep=';', skipinitialspace=True)
    nodes.columns = nodes.columns.str.strip().str.replace('"', '')
    
    conn = pd.read_csv(conn_path, sep=';', skipinitialspace=True)
    conn.columns = conn.columns.str.strip().str.replace('"', '')
    
    # Pre-filter invalid rows and ensure integer types for connectivity
    conn = conn.dropna(subset=['Label', 'N1', 'N2']).copy()
    conn[['Label', 'N1', 'N2']] = conn[['Label', 'N1', 'N2']].astype(int)
    
    return nodes, conn

# --- 3. Logic & Calculation ---
def get_area(x):
    """Calculates the cross-sectional area based on position x."""
    if x <= x_1:
        return A_max
    elif x < x_2:
        return A_max * np.exp(-2 * m * (x - x_1))
    else:
        return A_min

def run_conversion():
    try:
        nodes, connectivity = load_data('nodes.csv', 'connectivity.csv')
    except FileNotFoundError as e:
        print(f"Error: File not found - {e}")
        return

    # Create index for fast access: Label -> x-coordinate
    node_coords = nodes.set_index('Label')['x'].to_dict()

    print(f"{'Elem_ID':<10} | {'A_Start':<12} | {'A_End':<12}")
    print("-" * 40)

    with open('qian_add.dat', 'w') as ofile:
        # Write file header
        ofile.write('$ENTER COMPONENT NAME = DFLT_COMP\n')
        ofile.write('$SYSTEM NAME = S_STEP_1\n')
        ofile.write('$GEODAT FLANGE CONT = SECTION\n')

        valid_elements = []

        # First pass: Generate GEODAT entries
        for _, row in connectivity.iterrows():
            eid, n1, n2 = row['Label'], row['N1'], row['N2']
            
            if n1 in node_coords and n2 in node_coords:
                x1, x2 = node_coords[n1], node_coords[n2]
                a_start, a_end = get_area(x1), get_area(x2)
                
                ofile.write(f'GD_{eid} {a_start:.8f} {a_end:.8f}\n')
                print(f"{eid:<10} | {a_start:<12.6f} | {a_end:<12.6f}")
                valid_elements.append(eid)
            else:
                print(f"Warning: Nodes for element {eid} not found. Skipping...")

        # Second pass: Generate ELPROP entries
        ofile.write('$ELPROP\n')
        ofile.write('       ROD           MATERIAL = MAT_ROD\n')
        for eid in valid_elements:
            ofile.write(f'{eid:>8} GEODAT=GD_{eid}\n')

        # Write file footer
        ofile.write('$END SYSTEM\n')
        ofile.write('$EXIT COMPONENT\n')
        ofile.write('$FIN\n')

    print("-" * 40)
    print("File 'qian_add.dat' successfully created.")

if __name__ == "__main__":
    run_conversion()