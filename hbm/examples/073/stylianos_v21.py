from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# Data directory and file matching
DATA_DIR = Path(".")
HBM_FILES = sorted(DATA_DIR.glob("hbm_*.csv"))
STAB_FILES = sorted(DATA_DIR.glob("rsdmp_*_rsdmp.csv"))
DAMPING_COEFFICIENTS = [0.2, 0.6, 1.0]

# Create figure and axis
fig, ax = plt.subplots(num="HBM")

# Colors for the different damping coefficients
COLORS = ["#1f77b4", "#ff7f0e", "#2ca02c"]  # Blue, Orange, Green

# Read data and plot
for hbm_path, stab_path, b, color in zip(HBM_FILES, STAB_FILES, DAMPING_COEFFICIENTS, COLORS):
    print(f"Processing {hbm_path.name} with stability data from {stab_path.name}")
    
    df_hbm = pd.read_csv(hbm_path, delimiter=";")
    df_stab = pd.read_csv(stab_path, delimiter=";")

    omega = 2 * np.pi * df_hbm["Frequency"]
    amplitude = df_hbm["H1-N101,u"]

    # Check if any values from column index 1 onwards are greater than 0
    is_unstable = (df_stab.iloc[:, 1:] > 0).any(axis=1)

    if is_unstable.any():
        # Unstable solutions exist -> Separate into stable and unstable branches
        omega_stable = omega.copy()
        omega_stable[is_unstable] = np.nan
        
        omega_unstable = omega.copy()
        omega_unstable[~is_unstable] = np.nan

        # Plot stable solution (solid line)
        ax.plot(omega_stable, amplitude, color=color, linestyle="-", label=rf"$b = {b:.1f}$ (stable)")
        # Plot unstable solution (dashed line)
        ax.plot(omega_unstable, amplitude, color=color, linestyle="--", label=rf"$b = {b:.1f}$ (unstable)")
    else:
        # All solutions are stable -> Plot full curve as stable
        ax.plot(omega, amplitude, color=color, linestyle="-", label=rf"$b = {b:.1f}$")

# Axis labels, title and layout configuration
ax.set_title(r"$F_0 = 1.6$")
ax.set_xlabel(r"$\Omega$ [rad/s]")
ax.set_ylabel(r"Amplitude $A$")
ax.set_xlim(0.5, 2.5)
ax.set_xticks(np.linspace(0.5, 2.5, 5))
ax.set_yticks(np.linspace(0.0, 4.5, 10))

ax.grid(True)
legend = ax.legend(shadow=True)
legend.set_draggable(True)

plt.tight_layout()
plt.show()