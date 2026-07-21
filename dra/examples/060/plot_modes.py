import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def plot_mode_shapes_vertical(csv_filepath, mode_index=None):
    """
    Reads the CSV file and plots the mode shape(s) with amplitude on the X-axis 
    and Y-coordinate on the Y-axis.
    
    Parameters:
    -----------
    csv_filepath : str
        Path to the CSV file (e.g., 'mode_mode.csv')
    mode_index : int or None
        1-based index of the mode shape (e.g., 1 for the 1st mode shape).
        If None, all mode shapes will be plotted together.
    """
    # 1. Read CSV data (semicolon-separated)
    df = pd.read_csv(csv_filepath, sep=';')
    
    coord_col = 'Coor_Y'
    mode_cols = [col for col in df.columns if col != coord_col]
    
    plt.figure(figsize=(8, 8))
    
    # 2. Plotting logic
    if mode_index is not None:
        if 1 <= mode_index <= len(mode_cols):
            col = mode_cols[mode_index - 1]
            freq_label = 2*np.pi*float(col.replace('Freq_', '').replace('_v', ''))
            print (freq_label)
            # Amplitude = X, Coordinate = Y
            plt.plot(df[col], df[coord_col], marker='o', color='tab:blue', 
                     linewidth=2, label=f'Mode {mode_index} (Freq: {freq_label})')
            plt.title(f'Mode Shape {mode_index} along Y-Coordinate', fontsize=14)
            print(f"Plotting mode shape {mode_index} with frequency {freq_label}...")
        else:
            print(f"Error: mode_index must be between 1 and {len(mode_cols)}.")
            return
    else:
        # Plot all modes
        print(f"Plotting all {len(mode_cols)} mode shapes...")
        for idx, col in enumerate(mode_cols, start=1):
            freq_label = np.round(2*np.pi*float(col.replace('Freq_', '').replace('_v', '')),2)
            # Amplitude = X, Coordinate = Y
            if idx < 4:
                plt.plot(df[col], df[coord_col], marker='o', 
                         label=f'Mode {idx} ({freq_label})')
        plt.title('Mode Shapes: Amplitude vs Y-Coordinate', fontsize=14)
        plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')

    # 3. Formatting plot aesthetics
    plt.xlabel('Displacement / Amplitude (Mode Shape)', fontsize=12)
    plt.ylabel('Y-Coordinate (Coor_Y)', fontsize=12)
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.tight_layout()
    
    plt.show()

# ==========================================
# Script execution
# ==========================================
if __name__ == '__main__':
    csv_file = 'mode_mode.csv'
    
    # Example 1: Plot a single mode shape (e.g., Mode 1)
    # plot_mode_shapes_vertical(csv_file, mode_index=1)
    
    # Example 2: Plot all mode shapes vertically
    plot_mode_shapes_vertical(csv_file, mode_index=None)