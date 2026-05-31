import os
from pathlib import Path
import numpy as np
import pandas as pd


# --- 1. Parameter Definitions ---
NODES_FILE = "nodes.csv"
CONNECTIVITY_FILE = "connectivity.csv"
OUTPUT_FILE = "alkatan_01_add.dat"


# --- 2. Data Import & Cleaning ---
def load_data(nodes_path: Path, conn_path: Path) -> tuple[pd.DataFrame, pd.DataFrame]:
    """Loads and cleans nodes and connectivity data from CSV files."""
    # Read files and strip whitespace/quotes from column names in one go
    nodes = pd.read_csv(nodes_path, sep=";", skipinitialspace=True)
    nodes.columns = nodes.columns.str.strip().str.replace('"', "")

    conn = pd.read_csv(conn_path, sep=";", skipinitialspace=True)
    conn.columns = conn.columns.str.strip().str.replace('"', "")

    # Drop rows with missing crucial data and ensure integer types for IDs
    conn = conn.dropna(subset=["Label", "N1", "N2", "N3", "N4"]).copy()
    conn[["Label", "N1", "N2", "N3", "N4"]] = conn[
        ["Label", "N1", "N2", "N3", "N4"]
    ].astype(int)

    return nodes, conn


# --- 3. Logic & Vectorized Calculation ---
def calculate_thickness(y_coords: pd.Series) -> pd.Series:
    """Calculates wall thickness based on the y-coordinate using vectorized operations."""
    return 0.001 * (1 + 0.6 * y_coords)


def run_conversion():
    nodes_path = Path(NODES_FILE)
    conn_path = Path(CONNECTIVITY_FILE)

    # Validate input file existence
    if not nodes_path.exists() or not conn_path.exists():
        print(
            f"Error: Required input files missing ({NODES_FILE} or {CONNECTIVITY_FILE})."
        )
        return

    try:
        nodes, connectivity = load_data(nodes_path, conn_path)
    except Exception as e:
        print(f"Error loading data: {e}")
        return

    # Map node labels directly to their y-coordinates for fast lookup
    node_y_map = nodes.set_index("Label")["y"]

    print("Processing elements...")
    print(
        f"{'Elem_ID':<10} | {'h_1':<12} | {'h_2':<12} | {'h_3':<12} | {'h_4':<12}"
    )
    print("-" * 65)

    try:
        with open(OUTPUT_FILE, "w") as ofile:
            # Write system header
            ofile.write("$ENTER COMPONENT NAME = DFLT_COMP\n")
            ofile.write("$SYSTEM NAME = S_STEP_1\n")
            ofile.write("$GEODAT SHELL CONT = THICK\n")

            valid_elements = []

            # Vectorized lookup of y-coordinates for all 4 nodes at once
            for i in range(1, 5):
                connectivity[f"y{i}"] = connectivity[f"N{i}"].map(node_y_map)

            # Drop elements where at least one node coordinate is missing
            initial_count = len(connectivity)
            valid_conn = connectivity.dropna(
                subset=["y1", "y2", "y3", "y4"]
            ).copy()

            if len(valid_conn) < initial_count:
                skipped = initial_count - len(valid_conn)
                print(
                    f"Warning: {skipped} element(s) skipped due to missing node coordinates.\n"
                )

            # Calculate thicknesses in a vectorized manner for all valid rows
            for i in range(1, 5):
                valid_conn[f"h_{i}"] = calculate_thickness(
                    valid_conn[f"y{i}"]
                )

            # Pass 1: Write GEODAT block and print preview
            for _, row in valid_conn.iterrows():
                eid = int(row["Label"])
                h1, h2, h3, h4 = row["h_1"], row["h_2"], row["h_3"], row["h_4"]

                ofile.write(f"GD_{eid} {h1:.8f} {h2:.8f} {h3:.8f} {h4:.8f}\n")
                print(
                    f"{eid:<10} | {h1:<12.6f} | {h2:<12.6f} | {h3:<12.6f} | {h4:<12.6f}"
                )
                valid_elements.append(eid)

            # Pass 2: Write ELPROP block
            ofile.write("$ELPROP\n")
            for eid in valid_elements:
                ofile.write(f"{eid:>8} GEODAT=GD_{eid}\n")

            # Write footer
            ofile.write("$END SYSTEM\n")
            ofile.write("$EXIT COMPONENT\n")
            ofile.write("$FIN\n")

        print("-" * 65)
        print(f"Success: '{OUTPUT_FILE}' has been generated successfully.")

    except IOError as e:
        print(f"Error writing output file: {e}")


if __name__ == "__main__":
    run_conversion()