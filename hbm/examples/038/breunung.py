import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
df1 = pd.read_csv('hbm_hbm.csv',delimiter=';')
df2 = pd.read_csv('displacements_1_u.csv',delimiter=';')
df3 = pd.read_csv('velocities_1_up.csv',delimiter=';')
df4 = pd.read_csv('displacements_2_u.csv',delimiter=';')
df5 = pd.read_csv('velocities_2_up.csv',delimiter=';')
df6 = pd.read_csv('displacements_3_u.csv',delimiter=';')
df7 = pd.read_csv('velocities_3_up.csv',delimiter=';')
fig1 = plt.figure('HBM')
ax1 = fig1.add_subplot(111)
Omega=2*np.pi*df1['Frequency']
ind = np.where(np.abs(Omega-1.3)<1.e-5)[0]
print ('Match', ind)
ax1.plot(Omega,df1['H1-N101,u'])
ax1.scatter(Omega[ind],df1['H1-N101,u'][ind],c='r',label=r'$\Omega=1.3$')
ax1.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_xlim(0.,2.3)
ax1.legend(shadow=True).set_draggable(True)
ax1.grid()
plt.tight_layout()
fig2 = plt.figure('Periodic orbit')
ax2 = fig2.add_subplot(111)
ax2.set_title(r'$\ddot{u}+0.02\,\dot{u}+u+u^3=0.1\cos{(1.3\,t)}$')
ax2.plot(df2['N101,u'],df3['N101,u'], label='solution 1')
ax2.plot(df4['N101,u'],df5['N101,u'], label='solution 2')
ax2.plot(df6['N101,u'],df7['N101,u'], label='solution 3')
ax2.legend(shadow=True).set_draggable(True)
ax2.set_xlabel('Displacement $u$')
ax2.set_ylabel('Velocity $\dot{u}$')
ax2.grid()
plt.show()
