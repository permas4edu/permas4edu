import numpy as np
import matplotlib.pyplot as plt

# Set seed for reproducibility and define sample size
np.random.seed(42)
sample_size = 100

print("Generating the 4 random variables based on the updated structural parameters...")


# 1. First Normal Distribution (Stiffness: mu = 70 GPa, COV = 5% -> sigma = 3.5 GPa)
mu_1 = 70.0E+09
cov_1 = 0.05
sigma_1 = mu_1 * cov_1  # 3.5 GPa
normal_1 = np.sort(np.random.normal(loc=mu_1, scale=sigma_1, size=sample_size))

# 2. Second Normal Distribution (Stiffness: mu = 70 GPa, COV = 5% -> sigma = 3.5 GPa)
mu_2 = 2700.0
cov_2 = 0.05
sigma_2 = mu_2 * cov_2  # 3.5 GPa
normal_2 = np.sort(np.random.normal(loc=mu_2, scale=sigma_2, size=sample_size))

# 3. First Uniform Distribution (Thickness 1: mu = 2mm, COV = 2%)
mu_3 = 2.0
cov_3 = 0.02
sigma_3 = mu_3 * cov_3  # 0.04 mm
a_3 = mu_3 - sigma_3 * np.sqrt(3)
b_3 = mu_3 + sigma_3 * np.sqrt(3)
uniform_1 = np.sort(np.random.uniform(low=a_3, high=b_3, size=sample_size))

# 4. Second Uniform Distribution (Thickness 2: mu = 4mm, COV = 2%)
mu_4 = 4.0
cov_4 = 0.02
sigma_4 = mu_4 * cov_4  # 0.08 mm
a_4 = mu_4 - sigma_4 * np.sqrt(3)
b_4 = mu_4 + sigma_4 * np.sqrt(3)
uniform_2 = np.sort(np.random.uniform(low=a_4, high=b_4, size=sample_size))

print("Data generation complete. Creating the 2x2 layout...")

# Create a 2x2 grid of subplots
fig, axes = plt.subplots(2, 2, figsize=(12, 10))
fig.suptitle('Statistical Distributions (2x Uniform, 2x Normal)', fontsize=16, fontweight='bold')

# Plot 1: Normal Distribution 1
axes[0, 0].hist(normal_1, bins=50, density=True, color='#1f77b4', edgecolor='black', alpha=0.7)
axes[0, 0].set_title(f'Normal Distribution 1 ($\mu={mu_1}$, $\sigma={sigma_1}$ Pa) ')
axes[0, 0].set_xlabel('Stiffness [Pa]')
axes[0, 0].set_ylabel('Probability Density')
axes[0, 0].grid(True, linestyle=':', alpha=0.6)

# Plot 2: Normal Distribution (Stiffness)
axes[0, 1].hist(normal_2, bins=50, density=True, color='#ff7f0e', edgecolor='black', alpha=0.7)
axes[0, 1].set_title(f'Normal Distribution 2 ($\mu={mu_2}$, $\sigma={sigma_2}$ kg/m$^3$)')
axes[0, 1].set_xlabel(r'Density [kg/m$^3$]')
axes[0, 1].set_ylabel('Probability Density')
axes[0, 1].grid(True, linestyle=':', alpha=0.6)

# Plot 3: Uniform Distribution 2 (Thickness 1)
axes[1, 0].hist(uniform_1, bins=50, density=True, color='#2ca02c', edgecolor='black', alpha=0.7)
axes[1, 0].set_title(f'Uniform Distribution 2 ($a={a_3:.3f}, b={b_3:.3f}$ mm)')
axes[1, 0].set_xlabel('Thickness 1 [mm]')
axes[1, 0].set_ylabel('Probability Density')
axes[1, 0].grid(True, linestyle=':', alpha=0.6)

# Plot 4: Uniform Distribution 3 (Thickness 2)
axes[1, 1].hist(uniform_2, bins=50, density=True, color='#d62728', edgecolor='black', alpha=0.7)
axes[1, 1].set_title(f'Uniform Distribution 3 ($a={a_4:.3f}, b={b_4:.3f}$ mm)')
axes[1, 1].set_xlabel('Thickness 2 [mm]')
axes[1, 1].set_ylabel('Probability Density')
axes[1, 1].grid(True, linestyle=':', alpha=0.6)

# Adjust layout and render the plots
plt.tight_layout()
print("Displaying the plot window.")

# --- EXPORT SECTION ---
print("Exporting data in 'Index : Value' format...")

# Dictionary to map variable names to their corresponding numpy arrays
distributions = {
    "stiffness_normal.dat": normal_1,
    "density_normal.dat": normal_2,
    "thickness1_uniform.dat": uniform_1,
    "thickness2_uniform.dat": uniform_2
}
ic = 0
for filename, data in distributions.items():
    ic+=1
    print(f"Writing to {filename}...")
    with open(filename, "w") as f:
        f.write("$FUNCTION TABLE FID = %i DESCRIPTION = '%s'\n" %(ic,filename[:-4]))
        # Loop through data and write as "Float_Value : Integer_Index"
        for index, value in enumerate(data):
            f.write(f" {float(index)} : {float(value):.15e} \n")

print("All exports completed successfully.")
plt.savefig('distributions.png')
#plt.show()