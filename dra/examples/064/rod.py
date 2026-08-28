import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
df = pd.read_csv('u_u.csv',delimiter=';')
# --- System and Material Parameters ---
E = 1.0E+07  # Young's modulus [Pa] (e.g., steel)
rho = 9000.  # Density [kg/m^3]
A = 1.E-04  # Cross-sectional area [m^2]
L = 1.0  # Length of the bar [m]

# Harmonic load definition: f(t) = f0 * sin(omega_0 * t)
f0 = 1.0  # Load amplitude [N]
omega_0 = 52.5  # Excitation frequency [rad/s]

# Derived parameter: Wave propagation speed
c = np.sqrt(E / rho)


# --- Functions for Modal Analysis ---
def omega_i(r):
    """Calculate the natural frequency for mode r."""
    return ((2 * r - 1) * np.pi / (2 * L)) * c


def U_i(x, r):
    """Calculate the mode shape function U_i(x) for mode r."""
    w_i = omega_i(r)
    return np.sqrt(2 / (rho * A * L)) * np.sin(w_i * x / c)


def eta_i(t, r):
    """Calculate the modal coordinate eta_i(t) according to Eq. (4)."""
    w_i = omega_i(r)
    pref1 = ((-1) ** (r + 1) * f0) / w_i
    pref2 = np.sqrt(2 / (rho * A * L))

    # Avoid division by zero near resonance (omega_0 ~ omega_i)
    denom = omega_0**2 - w_i**2
    if np.isclose(denom, 0):
        denom = 1e-12

    num = omega_0 * np.sin(w_i * t) - w_i * np.sin(omega_0 * t)
    return pref1 * pref2 * (num / denom)


def u_xt(x, t, n_modes=10):
    """Calculate total displacement u(x,t) by summing over n_modes."""
    u_sum = np.zeros_like(x if isinstance(x, np.ndarray) else t)
    for r in range(1, n_modes + 1):
        u_sum += U_i(x, r) * eta_i(t, r)
    return u_sum


# --- Execution and Visualization ---
num_modes = 20
x_target = L  # Evaluation position (at the end of the bar)
t_vec = np.linspace(0, 0.5, 500)  # Time vector (0 to 500 ms)

# Print initial parameter overview
print("=== System Parameters ===")
print(f"Wave speed (c): {c:.2f} m/s")
print(f"Excitation frequency (omega_0): {omega_0:.2f} rad/s")
print(
    f"First natural frequency (omega_1): {omega_i(1):.2f} rad/s\n"
)

# Compute displacement field
print(f"Computing displacement u(x,t) using {num_modes} modes...")
u_val = u_xt(x_target, t_vec, n_modes=num_modes)

# Print peak displacement results
max_u = np.max(np.abs(u_val))
print(f"Calculation complete.")
print(f"Maximum absolute displacement at x = {x_target} m: {max_u * 1000:.4f} mm")

# Plot the time response
plt.figure(figsize=(8, 4))
plt.plot(t_vec * 1000, u_val * 1000, label=f"u(x={x_target}m, t)")
plt.plot(1.E3*df['Time'][::10],1.E+3*df['N2,u'][::10],'o',label=r'PERMAS')
plt.xlabel("Time t [ms]")
plt.ylabel("Displacement u [mm]")
plt.title("Dynamic Response u(x,t) under Harmonic Boundary Load")
plt.grid(True)
plt.legend().set_draggable(True)
plt.tight_layout()
plt.show()