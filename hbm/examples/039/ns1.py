import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt

fig, axs = plt.subplots(1,2,figsize=(12,4))
df1 = pd.read_csv('displacements_u.csv',delimiter=';')
df2 = pd.read_csv('velocities_up.csv',delimiter=';')
df3 = pd.read_csv('accelerations_upp.csv',delimiter=';')
axs[0].plot(df1['Time'],df1['N101,u'],label = r'$u$')
axs[0].plot(df2['Time'],df2['N101,u'],label = r'$\dot{u}$')
axs[0].plot(df3['Time'],df3['N101,u'],label = r'$\ddot{u}$')
axs[0].legend(shadow=True).set_draggable(True)
axs[0].set_xlabel(r'Time $t$')
axs[0].set_xlim(0.0,2.0)
axs[0].set_xticks(np.linspace(0.0,2.0,5))
axs[0].set_yticks(np.linspace(-2.0,1.5,8))
axs[0].grid()
axs[1].plot(df1['N101,u'],df2['N101,u'])
axs[1].set_xlabel(r'Displacement $u$')
axs[1].set_ylabel(r'Velocity $\dot{u}$')
axs[1].grid()
axs[1].set_xticks(np.linspace(-0.25,0.0,6))
axs[1].set_yticks(np.linspace(-0.4,0.4,9))
plt.tight_layout()
plt.show()
