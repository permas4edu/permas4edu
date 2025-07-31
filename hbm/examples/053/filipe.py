import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
df1 = pd.read_csv('frf_xy_resp.csv',delimiter=';')
df2 = pd.read_csv('hbm_asc_xy_resp.csv',delimiter=';')
df3 = pd.read_csv('hbm_des_xy_resp.csv',delimiter=';')

fig = plt.figure('HBM',figsize=(8,12))
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)
ax1.plot(2*np.pi*df1['Frequency'],df1['N101,u'],label='FRF N101')

ax1.plot(2*np.pi*df2['Frequency'],df2['H1-N101,u'],label='H1 N101 ascending')
ax1.plot(2*np.pi*df3['Frequency'],df3['H1-N101,u'],label='H1 N101 descending')
ax2.plot(2*np.pi*df1['Frequency'],df1['N102,u'],label='FRF N102')
ax2.plot(2*np.pi*df2['Frequency'],df2['H1-N102,u'],label='H1 N102 ascending')
ax2.plot(2*np.pi*df3['Frequency'],df3['H1-N102,u'],label='H1 N102 descending')
ax1.grid()
ax2.grid()
ax1.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax2.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'Peak Amplitude $A_1$')
ax2.set_ylabel(r'Peak Amplitude $A_1$')
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
