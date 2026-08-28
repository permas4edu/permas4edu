import matplotlib.pyplot as plt
import numpy as np

# --- Scalar Parameters (Table 6) ---
L = 0.5  # Beam length [m]
NU = 0.3  # Poisson's ratio [-]
RHO = 2000.0  # Mass density [kg/m^3]

R0 = 0.01  # Radius base magnitude [m]
E0 = 1.0e7  # Young's modulus base magnitude [Pa]
Q0 = 1.0  # Load amplitude [N]

# Spatial frequencies and angular frequency ranges
OMEGA_R_RANGE = (np.pi / L, 10.0 * np.pi / L)
OMEGA_E_RANGE = (np.pi / L, 10.0 * np.pi / L)
OMEGA_0_RANGE = (6.28, 622.04)  # Excitation frequency range [rad/s]

NUM_ELEMENTS = 100


# --- Function Definitions ---
def R(x: np.ndarray, omega_r: float) -> np.ndarray:
    """Spatially varying beam radius R(x)."""
    return R0 * (1.0 + np.sin(omega_r * x) ** 4)


def E(x: np.ndarray, omega_E: float) -> np.ndarray:
    """Spatially varying Young's modulus E(x)."""
    return E0 * (1.0 + 0.3 * np.cos(omega_E * x) ** 4)


def q(t: float, omega_0: float) -> float:
    """Time-dependent load q(x,t) = q0 * sin(omega_0 * t)."""
    return Q0 * np.sin(omega_0 * t)


def write_dat_file(
    filename: str, R_vec: np.ndarray, E_vec: np.ndarray, num_elem: int, density: float
) -> None:
    """Generates the DAT export file for component geometry and material properties."""
    with open(filename, "w", encoding="utf-8") as ofile:
        ofile.write("$ENTER COMPONENT NAME = DFLT_COMP\n")
        ofile.write("$SYSTEM NAME = S_STEP_1\n")
        ofile.write("$GEODAT BEAM CONT = SECTTYPE SECTDIM SECTDIM\n")

        for i in range(num_elem):
            ofile.write(f"GD_BEAM_{i+1:03d} 4 : {R_vec[i]:.8e} : {R_vec[i+1]:.8e}\n")

        ofile.write("$ELPROP\n")
        for i in range(num_elem):
            ofile.write(
                f"{i+1:8d} GEODAT = GD_BEAM_{i+1:03d} MATERIAL = MAT_{i+1:03d}\n"
            )

        ofile.write("$END SYSTEM\n")
        ofile.write("$EXIT COMPONENT\n")
        ofile.write("$ENTER MATERIAL\n")

        for i in range(num_elem):
            ofile.write(f"$MATERIAL NAME = MAT_{i+1:03d}\n")
            ofile.write("$ELASTIC GENERAL\n")
            e_mean = 0.5 * (E_vec[i] + E_vec[i+1])
            ofile.write(f"{e_mean:.8e} 0.0\n")
            ofile.write("$DENSITY\n")
            ofile.write(f"  {density:.1f}\n")
            ofile.write("$END MATERIAL\n")

        ofile.write("$EXIT MATERIAL\n")
        ofile.write("$FIN\n")


# --- Main Execution ---
def main():
    print("=== Beam Properties (Table 6) ===")
    print(f"Length (L): {L} m")
    print(f"Poisson's ratio (nu): {NU}")
    print(f"Density (rho): {RHO} kg/m^3")
    print(f"Base Radius (R0): {R0} m")
    print(f"Base Young's Modulus (E0): {E0:.1e} Pa")
    print(f"Load Amplitude (q0): {Q0} N")

    # Pick mid-range values for demonstration
    omega_r_mid = float(np.mean(OMEGA_R_RANGE))
    omega_E_mid = float(np.mean(OMEGA_E_RANGE))
    omega_0_mid = float(np.mean(OMEGA_0_RANGE))

    print("\n=== Sample Parameter Values ===")
    print(f"Selected omega_r: {omega_r_mid:.4f} rad/m")
    print(f"Selected omega_E: {omega_E_mid:.4f} rad/m")
    print(f"Selected omega_0: {omega_0_mid:.4f} rad/s")

    # Compute sample distributions along x
    x_vec = np.linspace(0, L, NUM_ELEMENTS + 1)
    R_vec = R(x_vec, omega_r_mid)
    E_vec = E(x_vec, omega_E_mid)

    print("\n=== Evaluated Field Ranges ===")
    print(f"Radius R(x) range: [{np.min(R_vec):.4f}, {np.max(R_vec):.4f}] m")
    print(f"Modulus E(x) range: [{np.min(E_vec):.2e}, {np.max(E_vec):.2e}] Pa")

    # Export configuration data
    write_dat_file("varying_cross_section.dat", R_vec, E_vec, NUM_ELEMENTS, RHO)
    print("\n[INFO] File 'varying_cross_section.dat' successfully written.")

    # --- Visualization ---
    fig, axes = plt.subplots(2, 1, figsize=(8, 6), sharex=True)

    # Plot R(x)
    axes[0].plot(x_vec, R_vec * 1000, color="navy", lw=2)
    axes[0].set_ylabel("Radius R(x) [mm]")
    axes[0].set_title("Spatial Variation of Beam Radius R(x)")
    axes[0].grid(True)

    # Plot E(x)
    axes[1].plot(x_vec, E_vec / 1e6, color="darkred", lw=2)
    axes[1].set_xlabel("Position along beam x [m]")
    axes[1].set_ylabel("Young's Modulus E(x) [MPa]")
    axes[1].set_title("Spatial Variation of Young's Modulus E(x)")
    axes[1].grid(True)

    plt.tight_layout()
    plt.show()


if __name__ == "__main__":
    main()