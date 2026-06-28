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

# Plot 1: Displacement
ax1.plot(df_u['Time'], df_u['N101,u'], color='#1f77b4', linewidth=1.5, label=r'Displacement $u$')
ax1.set_ylabel('Displacement')
ax1.set_title('Transient Analysis - Node N101')
ax1.grid(True, linestyle='--', alpha=0.6)
ax1.set_yticks(np.linspace(-0.04,0.04,5))
ax1.set_xticks(np.linspace(0.,10.,11))
ax1.legend(loc='upper right')

# Plot 2: Velocity
ax2.plot(df_up['Time'], df_up['N101,u'], color='#ff7f0e', linewidth=1.5, label=r'Velocity $\dot{u}$')
ax2.set_ylabel('Velocity')
ax2.set_yticks(np.linspace(-0.3,0.3,7))
ax2.grid(True, linestyle='--', alpha=0.6)
ax2.legend(loc='upper right')

# Plot 3: Acceleration
ax3.plot(df_upp['Time'], df_upp['N101,u'], color='#2ca02c', linewidth=1.5, label=r'Acceleration $\ddot{u}$')
ax3.set_xlabel('Time')
ax3.set_ylabel('Acceleration')
ax3.set_yticks(np.linspace(-4.0,3.0,8))
ax3.grid(True, linestyle='--', alpha=0.6)
ax3.legend(loc='upper right')

# Optimize layout to prevent axis label clipping
plt.tight_layout()

# Save the plot as an image and display it
plt.savefig('transient_plot.png', dpi=300)
plt.show()