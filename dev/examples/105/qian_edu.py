import pandas as pd
import numpy as np
import os

# --- 1. Parameter definieren ---
L = 1.0
kappa = 8.0        
A_min = 0.01
A_max = kappa * A_min
m = np.log(kappa) / (2 * L)
E = 69.E+10
rho = 2700.0

# Hilfsvariablen für die Flächenfunktion
x_1 = np.pi * L / (2 * (np.log(kappa) + np.pi))
x_2 = (2 * np.log(kappa) + np.pi) * L / (2 * (np.log(kappa) + np.pi))

# --- 2. Daten importieren & bereinigen ---
def load_data(nodes_path, conn_path):
    # Einlesen mit Bereinigung der Spaltennamen in einem Rutsch
    nodes = pd.read_csv(nodes_path, sep=';', skipinitialspace=True)
    nodes.columns = nodes.columns.str.strip().str.replace('"', '')
    
    conn = pd.read_csv(conn_path, sep=';', skipinitialspace=True)
    conn.columns = conn.columns.str.strip().str.replace('"', '')
    
    # Vorab-Filterung ungültiger Zeilen
    conn = conn.dropna(subset=['Label', 'N1', 'N2']).copy()
    conn[['Label', 'N1', 'N2']] = conn[['Label', 'N1', 'N2']].astype(int)
    
    return nodes, conn

# --- 3. Logik & Berechnung ---
def get_area(x):
    """Berechnet die Querschnittsfläche basierend auf der Position x."""
    # Nutzt np.select für Vektorisierung (optional) oder bleibt bei klassisch if/else
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
        print(f"Fehler: Datei nicht gefunden - {e}")
        return

    # Index für schnellen Zugriff erstellen: Label -> x-Koordinate
    node_coords = nodes.set_index('Label')['x'].to_dict()

    print(f"{'Elem_ID':<10} | {'A_Start':<12} | {'A_End':<12}")
    print("-" * 40)

    with open('qian_add.dat', 'w') as ofile:
        # Header schreiben
        ofile.write('$ENTER COMPONENT NAME = DFLT_COMP\n')
        ofile.write('$SYSTEM NAME = S_STEP_1\n')
        ofile.write('$GEODAT FLANGE CONT = SECTION\n')

        valid_elements = []

        # Erster Durchlauf: GEODAT
        for _, row in connectivity.iterrows():
            eid, n1, n2 = row['Label'], row['N1'], row['N2']
            
            if n1 in node_coords and n2 in node_coords:
                x1, x2 = node_coords[n1], node_coords[n2]
                a_start, a_end = get_area(x1), get_area(x2)
                
                ofile.write(f'GD_{eid} {a_start:.8f} {a_end:.8f}\n')
                print(f"{eid:<10} | {a_start:<12.6f} | {a_end:<12.6f}")
                valid_elements.append(eid)
            else:
                print(f"Warnung: Knoten für Element {eid} nicht gefunden. Überspringe...")

        # Zweiter Durchlauf: ELPROP
        ofile.write('$ELPROP\n')
        ofile.write('       ROD           MATERIAL = MAT_ROD\n')
        for eid in valid_elements:
            ofile.write(f'{eid:>8} GEODAT=GD_{eid}\n')

        # Footer
        ofile.write('$END SYSTEM\n')
        ofile.write('$EXIT COMPONENT\n')
        ofile.write('$FIN\n')

    print("-" * 40)
    print("Datei 'qian_add.dat' erfolgreich erstellt.")

if __name__ == "__main__":
    run_conversion()