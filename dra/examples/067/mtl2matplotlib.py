import re
import numpy as np
import matplotlib.pyplot as plt
import mplcursors

def parse_permas_matrix(filename, object_name):
    """
    Reads a specific matrix (e.g., 'BMLL' or 'BKLL') from a PERMAS result file,
    correctly skipping header/dimension lines.
    """
    with open(filename, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
        
    # Search blocks by data object name
    blocks = content.split('%$DATAOBJECT')
    target_block = None
    
    for block in blocks:
        if f'NAME = {object_name}' in block and 'EXT = DISP' in block:
            target_block = block
            break
            
    if not target_block:
        raise ValueError(f"Data object {object_name} was not found in the file.")
        
    # Extract matrix dimensions (ROWDIM / COLDIM)
    row_match = re.search(r'ROWDIM\s*=\s*(\d+)', target_block)
    col_match = re.search(r'COLDIM\s*=\s*(\d+)', target_block)
    
    if not row_match or not col_match:
        raise ValueError(f"Could not determine dimensions for {object_name}.")
        
    rows = int(row_match.group(1))
    cols = int(col_match.group(1))
    
    matrix = np.zeros((rows, cols))
    
    # Regular expression to match row, column, and floating-point value (Fortran D-notation)
    line_pattern = re.compile(r'^\s*(\d+)\s+(\d+)\s+([+-]?\d+(?:\.\d+)?(?:[dD][+-]?\d+)?)', re.MULTILINE)
    matches = line_pattern.findall(target_block)
    
    for r_str, c_str, val_str in matches:
        r = int(r_str) - 1  # 0-based indexing for internal NumPy storage
        c = int(c_str) - 1
        val = float(val_str.replace('D', 'e').replace('d', 'e'))
        
        # Skip PERMAS block dimension/header lines (e.g., 90 90 0.0000... at the start of data blocks)
        if r == c and val == 0.0 and r == rows - 1:
            # Check if this line is situated right after COLPT/ROWPT headers
            continue
            
        if 0 <= r < rows and 0 <= c < cols:
            matrix[r, c] = val
            if r != c:
                matrix[c, r] = val  # Fill symmetric counterpart
                
    print(f"Successfully loaded matrix {object_name} with shape {rows}x{cols}.")
    return matrix

def visualize_matrices(filename):
    # Load matrices from file
    print(f"Reading matrices from '{filename}'...")
    mass_matrix = parse_permas_matrix(filename, 'BMLL')
    stiffness_matrix = parse_permas_matrix(filename, 'BKLL')
    
    rows, cols = mass_matrix.shape
    
    # Mask zero values so they are omitted from the visualization
    mass_masked = np.ma.masked_equal(mass_matrix, 0.0)
    stiffness_masked = np.ma.masked_equal(stiffness_matrix, 0.0)
    
    # Create matplotlib figure with 1 row and 2 columns
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))
    
    # Define extent so that axes start at 1 instead of 0 ([xmin, xmax, ymax, ymin])
    extent = [0.5, cols + 0.5, rows + 0.5, 0.5]
    
    # Plot mass matrix (non-zero entries only) using 'coolwarm' colormap
    im1 = ax1.imshow(mass_masked, cmap='coolwarm', aspect='auto', extent=extent)
    ax1.set_title('Mass Matrix - Non-Zero Entries (BMLL)')
    ax1.set_xlabel('Column')
    ax1.set_ylabel('Row')
    fig.colorbar(im1, ax=ax1, label='Value')
    
    # Plot stiffness matrix (non-zero entries only) using 'coolwarm' colormap
    im2 = ax2.imshow(stiffness_masked, cmap='coolwarm', aspect='auto', extent=extent)
    ax2.set_title('Stiffness Matrix - Non-Zero Entries (BKLL)')
    ax2.set_xlabel('Column')
    ax2.set_ylabel('Row')
    fig.colorbar(im2, ax=ax2, label='Value')
    
    plt.tight_layout()
    
    # Add mplcursors for interactive hover functionality
    cursor = mplcursors.cursor([im1, im2], multiple=True)
    
    @cursor.connect("add")
    def on_add(sel):
        # Map target coordinates back to 1-based matrix indices
        col = int(round(sel.target[0])) - 1
        row = int(round(sel.target[1])) - 1
        matrix = sel.artist.get_array()
        
        if 0 <= row < matrix.shape[0] and 0 <= col < matrix.shape[1]:
            val = matrix[row, col]
            # Ignore masked (zero) entries if hovered
            if np.ma.is_masked(val):
                sel.annotation.set_visible(False)
                return
            matrix_name = "Mass Matrix (BMLL)" if sel.artist == im1 else "Stiffness Matrix (BKLL)"
            # Display 1-based row and column numbers in the tooltip
            sel.annotation.set_text(
                f"{matrix_name}\nRow: {row + 1}\nColumn: {col + 1}\nValue: {val:.4e}"
            )
        else:
            sel.annotation.set_visible(False)
            
    print("Displaying interactive plots. Rows and columns start at 1.")
    plt.show()

if __name__ == "__main__":
    # Specify your file path here (e.g., 'matrices.mtl')
    file_path = "matrices.mtl"
    visualize_matrices(file_path)