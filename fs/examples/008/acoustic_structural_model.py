import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# 1. Define the reference value for Sound Pressure Level (SPL) in air (20 µPa)
P0 = 20e-6  # 20 micropascals or 2e-5 Pa

# 2. Load CSV files (semicolon separated)
try:
    df_direct = pd.read_csv('direct_frf_frf.csv', sep=';')
    df_modal = pd.read_csv('modal_frf_frf.csv', sep=';')
    print("Data successfully loaded.")
except FileNotFoundError as e:
    print(f"Error: Could not find file. {e}")
    raise

# 3. Clean column names (remove whitespaces and quotation marks)
df_direct.columns = [c.strip().replace('"', '') for c in df_direct.columns]
df_modal.columns = [c.strip().replace('"', '') for c in df_modal.columns]

# Target column for pressure values
pressure_col = 'N3752,P'

# 4. Convert sound pressure (Pa) to Sound Pressure Level (dB SPL)
# Formula: SPL = 20 * log10(p / p0)
print("Converting sound pressure values to dB SPL...")
df_direct['SPL_dB'] = 20 * np.log10(df_direct[pressure_col] / P0)
df_modal['SPL_dB'] = 20 * np.log10(df_modal[pressure_col] / P0)

# 5. Visualization using Matplotlib
print("Generating plot...")
plt.figure(figsize=(10, 6))

# Plot direct FRF data
plt.plot(df_direct['Frequency'], df_direct['SPL_dB'], 
         label='Direct FRF', color='#1f77b4', linewidth=1.5)

# Plot modal FRF data (dashed line for visual distinction)
plt.plot(df_modal['Frequency'], df_modal['SPL_dB'], 
         label='Modal FRF', color='#ff7f0e', linestyle='--', linewidth=1.5)

# Labeling and formatting the chart in English
plt.xlabel('Frequency [Hz]', fontsize=11)
plt.ylabel('Sound Pressure Level (SPL) [dB re 20 µPa]', fontsize=11)
plt.title('Comparison of Sound Pressure Level: Direct vs. Modal FRF', fontsize=13, fontweight='bold')
plt.grid(True, which='both', linestyle=':', alpha=0.6)
plt.legend(fontsize=10)
plt.xticks(np.linspace(0.,1000.,11))
# Optimize layout and display the plot
plt.tight_layout()
print("Displaying plot window.")
plt.show()