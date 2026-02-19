import matplotlib.pyplot as plt
import numpy as np
import re
import mplcursors  # Used for interactive hovering

def plot_permas_with_hover(file_path):
    """
    Parses a PERMAS .pmat file and plots the sparsity pattern.
    Includes interactive hovering to show row, column, and value.
    """
    rows = []
    cols = []
    values = []
    
    # Metadata from file header
    expected_dim = 28 
    
    print(f"--- Processing File: {file_path} ---")

    try:
        with open(file_path, 'r') as f:
            reading_data = False
            for line in f:
                if 'BLOCKFORM = VALUE' in line:
                    reading_data = True
                    continue
                
                if '!$EXIT' in line or '$FIN' in line:
                    reading_data = False
                
                if reading_data:
                    # Match pattern "row , col : value"
                    match = re.search(r'(\d+)\s*,\s*(\d+)\s*:\s*([\d.D+-]+)', line)
                    if match:
                        # Use 1-based indexing directly from the file
                        r = int(match.group(1))
                        c = int(match.group(2))
                        
                        # Handle Fortran scientific notation (D to e)
                        val_str = match.group(3).replace('D', 'e')
                        val = float(val_str)
                        
                        # Add primary entry
                        rows.append(r)
                        cols.append(c)
                        values.append(val)
                        
                        # Add symmetric entry for off-diagonal elements
                        if r != c:
                            rows.append(c)
                            cols.append(r)
                            values.append(val)

        # Convert to arrays
        rows = np.array(rows)
        cols = np.array(cols)
        vals = np.array(values)
        magnitudes = np.abs(vals)

        print(f"Matrix loaded successfully.")
        print(f"Dimension: {expected_dim}x{expected_dim}")

        fig, ax = plt.subplots(figsize=(10, 8))
        
        # Use scatter plot for individual entries
        scatter = ax.scatter(cols, rows, c=magnitudes, cmap='viridis', 
                             marker='s', s=80, edgecolors='none')
        
        # Matrix visual setup (1-based)
        ax.invert_yaxis()
        ax.set_aspect('equal')
        ticks = np.arange(1, expected_dim + 1, 3 if expected_dim > 10 else 1)
        ax.set_xticks(ticks)
        ax.set_yticks(ticks)
        ax.set_xlim(0.5, expected_dim + 0.5)
        ax.set_ylim(expected_dim + 0.5, 0.5)

        ax.set_title("Interactive Sparsity Pattern (Hover for details)", fontsize=14)
        ax.set_xlabel("Column Index (Fortran Style)", fontsize=12)
        ax.set_ylabel("Row Index (Fortran Style)", fontsize=12)
        
        # Add colorbar
        cbar = plt.colorbar(scatter)
        cbar.set_label('Absolute Value Magnitude', rotation=270, labelpad=15)
        ax.grid(True, linestyle=':', alpha=0.4)

        # --- MPLCURSORS HOVER LOGIC ---
        cursor = mplcursors.cursor(scatter, multiple=True)
        
        @cursor.connect("add")
        def on_add(sel):
            # Extract data for the hovered point
            row_idx = rows[sel.index]
            col_idx = cols[sel.index]
            val = vals[sel.index]
            # Set the label text
            sel.annotation.set_text(f"Row: {row_idx}\nCol: {col_idx}\nVal: {val:.4e}")
            sel.annotation.get_bbox_patch().set(fc="white", alpha=0.9)

        print("Opening interactive plot. Hover over points to see details.")
        plt.tight_layout()
        plt.show()

    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    plot_permas_with_hover('stiffness_matrix.pmat')