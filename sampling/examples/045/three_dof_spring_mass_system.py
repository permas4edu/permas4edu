import numpy as np
import os, sys

n_samples = int(sys.argv[1])

# Parameters for the Gaussian distribution
mean = 2.0  # µ in N/m
std_dev = 0.3  # σ in N/m

n_vars = 3  # 3 random variables (columns: k1, k2, k5)

# Recommended NumPy random generator setup (modern API)
rng = np.random.default_rng()  # Optional: pass seed like default_rng(42)

# 1. Generate unsorted array with shape (50, 3)
k_samples = rng.normal(loc=mean, scale=std_dev, size=(n_samples, n_vars))

# 2. Sort columns in ascending order along axis 0
k_samples_sorted = np.sort(k_samples, axis=0)

# Output results to console
print(f"Array shape: {k_samples_sorted.shape}")
print("First 5 rows (smallest values per column):\n", k_samples_sorted[:5])
print("Last 5 rows (largest values per column):\n", k_samples_sorted[-5:])

# Write formatted PERMAS-style data using context manager
output_filename = "three_dof_spring_mass_system_add.dat"

with open(output_filename, "w", encoding="utf-8") as ofile:
    ofile.write("$ENTER FUNCTION\n")

    for i in range(n_vars):
        ofile.write(f"$FUNCTION TABLE FID = {i + 1}\n")

        # Column 1: sorted k values, Column 2: 0-indexed integer steps
        table_data = np.column_stack(
            (np.arange(n_samples), k_samples_sorted[:, i])
        )
        np.savetxt(ofile, table_data, fmt="%.12e:%.12e", delimiter=":")

        ofile.write("!\n")

    ofile.write("$EXIT FUNCTION\n")
    ofile.write("$FIN\n")
