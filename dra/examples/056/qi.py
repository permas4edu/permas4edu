import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# 1. Import data using pandas (delimiter in the files is ';')
df_u = pd.read_csv('transient_u.csv', sep=';')
df_up = pd.read_csv('transient_up.csv', sep=';')
df_upp = pd.read_csv('transient_upp.csv', sep=';')

# Clean column names (removes any leading/trailing whitespaces)
df_u.columns = df_u.columns.str.strip()
df_up.columns = df_up.columns.str.strip()
df_upp.columns = df_upp.columns.str.strip()

# 2. Create three stacked subplots sharing the same X-axis
fig, (ax1, ax2, ax3) = plt.subplots(3, 1, figsize=(10, 11), sharex=True)

def u(t):
    k = 16.
    m = 1.0
    p_0 = 5.0
    omega = 2*np.pi/8.0
    omega_n = np.sqrt(k/m)
    u_0 = 0.0
    v_0 = omega_n*p_0/k

    return u_0*np.cos(omega_n*t)+(v_0/omega_n-(p_0/k)*(omega/omega_n)/(1-(omega/omega_n)**2))*np.sin(omega_n*t)+(p_0/k)*np.sin(omega*t)/(1-(omega/omega_n)**2)

# Plot 1: Displacement
ax1.plot(df_u['Time'], df_u['N101,u'], color='#1f77b4', linewidth=1.5, label=r'Displacement $u$')
ax1.plot(df_u['Time'][::10],u(df_u['Time'][::10]),'.',color='green',label='analytical')
ax1.set_ylabel('Displacement')
ax1.set_title('Transient Analysis - Node N101')
ax1.grid(True, linestyle='--', alpha=0.6)
ax1.set_yticks(np.linspace(-0.8,1.2,6))
ax1.set_xticks(np.linspace(0.,10.,11))
ax1.legend(loc='upper right')

# Plot 2: Velocity
ax2.plot(df_up['Time'], df_up['N101,u'], color='#ff7f0e', linewidth=1.5, label=r'Velocity $\dot{u}$')
ax2.set_ylabel('Velocity')
ax2.set_yticks(np.linspace(-1.6,2.4,11))
ax2.grid(True, linestyle='--', alpha=0.6)
ax2.legend(loc='upper right')

# Plot 3: Acceleration
ax3.plot(df_upp['Time'], df_upp['N101,u'], color='#2ca02c', linewidth=1.5, label=r'Acceleration $\ddot{u}$')
ax3.set_xlabel('Time')
ax3.set_ylabel('Acceleration')
ax3.set_yticks(np.linspace(-6.0,8.0,8))
ax3.grid(True, linestyle='--', alpha=0.6)
ax3.legend(loc='upper right')

# Optimize layout to prevent axis label clipping
plt.tight_layout()

# Save the plot as an image and display it
plt.savefig('transient_plot.png', dpi=300)
plt.show()