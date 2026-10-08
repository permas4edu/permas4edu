from pathlib import Path
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

DATA_DIR = Path(".")
CSV_FILES = sorted(DATA_DIR.glob("hbm_*.csv"))
MU_COEFFICIENTS = [0.5, 1.5, 2.5, 3.5, 4.5]

# Erstellung der Figure und Achsen
fig, ax = plt.subplots(num="HBM")

# Daten einlesen und plotten
for csv_path, b in zip(CSV_FILES, MU_COEFFICIENTS):
    print(f"Processing {csv_path.name}")
    df = pd.read_csv(csv_path, delimiter=";")

    omega = 2 * np.pi * df["Frequency"]
    amplitude = df["H1-N101,u"]

    ax.plot(omega, amplitude, label=rf"$\mu = {b:.1f}$")

# Achsen- und Layoutkonfiguration
ax.set_xlabel(r"$\Omega$ [rad/s]")
ax.set_ylabel(r"Amplitude $A$")
ax.set_xticks(np.linspace(0.5, 3.5, 7))
ax.set_xlim(0.7,3.5)
ax.grid(True)
legend = ax.legend(shadow=True)
legend.set_draggable(True)

plt.tight_layout()
plt.show()