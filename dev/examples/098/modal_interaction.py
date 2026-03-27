import os
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt

# 1. Import data
# Note: Files use semicolons as delimiters and contain scientific notation
df_xdhis = pd.read_csv('sampling_xdhis.csv', sep=';')
df_srhis = pd.read_csv('sampling_srhis.csv', sep=';')

# Clean column names (strip whitespace and quotes)
df_xdhis.columns = df_xdhis.columns.str.strip().str.replace('"', '')
df_srhis.columns = df_srhis.columns.str.strip().str.replace('"', '')

# 2. Merge dataframes based on 'Sample No.'
df_combined = pd.merge(df_xdhis, df_srhis, on='Sample No.')

# 3. Ensure F_1 <= F_2 for every data point
# If F_1 is greater than F_2, we swap them to maintain physical consistency
mask = df_combined['F_1'] > df_combined['F_2']
if mask.any():
    print(f"Correction: Swapped F_1 and F_2 for {mask.sum()} data points where F_1 > F_2.")
    # Efficiently swap values using .loc and numpy values
    df_combined.loc[mask, ['F_1', 'F_2']] = df_combined.loc[mask, ['F_2', 'F_1']].values

# 4. Identify the 3 unique values of DV_2 for filtering
dv2_values = sorted(df_combined['DV_2'].unique())
print(f"Found {len(dv2_values)} unique values for DV_2: {dv2_values}")

# 5. Generate 3 subplots
fig, axes = plt.subplots(nrows=3, ncols=1, figsize=(10, 15), sharex=True)

for i, val in enumerate(dv2_values):
    # Filter for the specific DV_2 value and sort by DV_1 for a proper line plot
    subset = df_combined[df_combined['DV_2'] == val].sort_values('DV_1')
    
    ax = axes[i]
    ax.plot(subset['DV_1'], subset['F_1'], label=r'$f_1$', marker='o', markersize=4)
    ax.plot(subset['DV_1'], subset['F_2'], label=r'$f_2$', marker='s', markersize=4)
    
    # Subplot styling
    ax.set_title(f'Analysis for $k_c$ = {val} [N/m]')
    ax.set_ylabel('Frequency')
    ax.legend()
    ax.grid(True, linestyle='--', alpha=0.6)

# Label the x-axis on the bottom plot only
axes[-1].set_xlabel(r'Design Variable $k_2$ [N/m]')

plt.tight_layout()
plt.show()