import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
df1 = pd.read_csv('hbm_mag_response_mag.csv',delimiter=';')
df2 = pd.read_csv('hbm_phase_response_phase.csv',delimiter=';')
df3 = pd.read_csv('mag_response_mag.csv',delimiter=';')
df4 = pd.read_csv('phase_response_phase.csv',delimiter=';')
m,n = df1.shape
fig, axs = plt.subplots(2, 2,figsize=(12,8))
fig.canvas.manager.set_window_title('Nonlinear frequency response')

axs[0,0].plot(2*np.pi*df1['Frequency'],df1['H1-N92,u'],label='H1-N92,u')
axs[0,0].plot(2*np.pi*df3['Frequency'],df3['N92,u'],label='Linear N92,u')
axs[0,1].plot(2*np.pi*df1['Frequency'],df1['H3-N92,u'],c='r',label='H3-N92,u')
axs[1,0].plot(2*np.pi*df2['Frequency'],np.rad2deg(df2['H1-N92,u']),label='H1-N92,u')
axs[1,0].plot(2*np.pi*df4['Frequency'],np.rad2deg(df4['N92,u']),label='Linear N92,u')
axs[1,1].plot(2*np.pi*df1['Frequency'],df1['H5-N92,u'],c='g',label='H5-N92,u')
axs[0,0].set_yticks(np.linspace(0.2,1.4,7))
axs[1,0].set_yticks(np.linspace(0.,-180.,10))
axs[0,1].set_yticks(1.e-3*np.linspace(0.,1.,6))
axs[1,1].set_yticks(1.e-6*np.linspace(0.,2.,5))
axs[0,0].set_ylabel('Response amplitude [m]')
axs[0,1].set_ylabel('Response amplitude [m]')
axs[1,0].set_ylabel('Response phase [deg]')
axs[1,1].set_ylabel('Response amplitude [m]')
axs[0,1].ticklabel_format(style='sci', axis='y', scilimits=(-3,-3))
for ax in axs.flat:
    ax.set(xlabel=r'$f$ Frequency [rad/s]')
    ax.ticklabel_format(style='sci', axis='x', scilimits=(3,3))
    ax.grid()
    ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()

    
