import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.collections import LineCollection
import numpy as np
import sys

def main():
    # Check if enough arguments are provided
    if len(sys.argv) < 3:
        print("Usage: python plot_response.py <file_u.csv> <file_up.csv>")
        sys.exit(1)

    file_u = sys.argv[1]
    file_up = sys.argv[2]

    try:
        # Load data
        df_u = pd.read_csv(file_u, sep=';', skipinitialspace=True)
        df_up = pd.read_csv(file_up, sep=';', skipinitialspace=True)

        # Clean column names
        df_u.columns = df_u.columns.str.replace('"', '').str.strip()
        df_up.columns = df_up.columns.str.replace('"', '').str.strip()

        # Extract data
        # We take 'Time' from one of the files to use as the color scale
        time = df_u["Time"].values
        u = df_u["N101,u"].values
        up = df_up["N101,u"].values

        # Create segments for LineCollection: [(x0, y0), (x1, y1), ...]
        points = np.array([u, up]).T.reshape(-1, 1, 2)
        segments = np.concatenate([points[:-1], points[1:]], axis=1)

        # Create the LineCollection object
        # 'jet' or 'coolwarm' go from blue to red
        norm = plt.Normalize(time.min(), time.max())
        lc = LineCollection(segments, cmap='coolwarm', norm=norm)
        
        # Set the values used for colormapping
        lc.set_array(time)
        lc.set_linewidth(1.5)

        # Plotting
        fig, ax = plt.subplots(figsize=(10, 6))
        line = ax.add_collection(lc)
        
        # Add a colorbar to show time progression
        cbar = fig.colorbar(line, ax=ax)
        cbar.set_label('Time progression')

        # LineCollection doesn't autoscale the axes, so we do it manually
        ax.set_xlim(u.min(), u.max())
        ax.set_ylim(up.min(), up.max())

        # Formatting
        ax.set_title(r'Phase Portrait: Velocity $\dot{u}$ vs. Displacement $u$ (Colored by Time)')
        ax.set_xlabel(r'Displacement $u$')
        ax.set_ylabel(r'Velocity $\dot{u}$')
        ax.grid(True, linestyle='--', alpha=0.7)

        print("Plotting data with color gradient...")
        plt.tight_layout()
        plt.show()

    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    main()