import os
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import mplcursors

# 1. Import the data
file_path = 'sampling_srhis.csv'
# Using sep=';' as defined in your file structure
df = pd.read_csv(file_path, sep=';')

# Clean column names to avoid issues with leading/trailing spaces
df.columns = df.columns.str.strip()

print(f"Data loaded successfully. Shapes: {df.shape}")

# 2. Identify and pair RE_ and IM_ columns
# We sort them to ensure RE_01 matches with IM_01, etc.
re_cols = sorted([c for c in df.columns if c.startswith('RE_')])
im_cols = sorted([c for c in df.columns if c.startswith('IM_')])

# 3. Plotting
fig, ax = plt.subplots(figsize=(12, 8))

# Define a color map for different design points (rows)
colors = plt.cm.viridis(plt.np.linspace(0, 1, len(df)))

for i, (idx, row) in enumerate(df.iterrows()):
    re_values = row[re_cols].values
    im_values = row[im_cols].values
    dv_val = row['DV_1']
    
    # Create the scatter plot for the current row
    scatter = ax.scatter(re_values, im_values, 
                         label=f"$d_5$: {dv_val:.4f}", 
                         edgecolors='white', 
                         alpha=0.8)

# Formatting the plot
ax.set_title('Interactive Spectrum: IM vs RE', fontsize=14)
ax.set_xlabel('Real Part (RE)', fontsize=12)
ax.set_ylabel('Imaginary Part (IM)', fontsize=12)
ax.grid(True, linestyle='--', alpha=0.6)
ax.axvline(0, color='black', linewidth=0.2)
ax.set_xticks(np.linspace(-5.,0.0,11))
ax.set_yticks(np.linspace(-4.,4.,9))
ax.set_xlim(-5.,0.0)
ax.set_ylim(-4.,4.)
# 4. Adding Interactive Annotations with mplcursors
# This will show the RE, IM values and the Design Variable on hover/click
cursor = mplcursors.cursor(hover=True)

@cursor.connect("add")
def on_add(sel):
    # sel.target is the coordinates, sel.artist is the scatter object
    label = sel.artist.get_label()
    sel.annotation.set_text(f"{label}\nRE: {sel.target[0]:.4f}\nIM: {sel.target[1]:.4f}")
    sel.annotation.get_bbox_patch().set(fc="white", alpha=0.9)

# Show legend only if it's not too crowded
if len(df) < 20:
    ax.legend(bbox_to_anchor=(1.05, 1), loc='upper left', fontsize='small')

plt.tight_layout()
print("Plot generated. Move your mouse over the points to see data details.")
plt.show()