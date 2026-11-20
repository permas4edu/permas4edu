import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# Define input file path and column names
csv_file = "hbm_hbm.csv"
freq_col = "Frequency"
target_col = "H1-N101,u"

print(f"Loading data from '{csv_file}'...")
# Load semicolon-separated CSV and strip whitespace from column headers
df = pd.read_csv(csv_file, sep=";")
df.columns = [col.strip() for col in df.columns]

# Validate required columns
if freq_col not in df.columns or target_col not in df.columns:
    raise ValueError(
        f"Missing expected columns. Available columns: {df.columns.tolist()}"
    )

# Compute angular frequency (2 * pi * Frequency)
angular_freq = 2 * np.pi * df[freq_col]
response = df[target_col]

print(f"Loaded {len(df)} data points.")
print(
    f"2 * Pi * Frequency range: [{angular_freq.min():.4f}, {angular_freq.max():.4f}]"
)
print(
    f"{target_col} range: [{response.min():.6f}, {response.max():.6f}], "
    f"mean: {response.mean():.6f}, std: {response.std():.6f}"
)

# Create the plot using matplotlib
print("Generating plot...")
plt.figure(figsize=(8, 5))
plt.plot(angular_freq, response, label=target_col, linewidth=1.8)
plt.title(f"HBM")
plt.xlabel(r"$\Omega$ [rad/s]")
plt.ylabel(target_col)
plt.xlim(0.,1.6)
plt.grid(True)
plt.legend()
plt.tight_layout()

# Save and display the plot
output_image = "h1_n101_u_plot.png"
plt.savefig(output_image, dpi=150)
print(f"Plot saved to '{output_image}'.")
plt.show()
print("Done.")