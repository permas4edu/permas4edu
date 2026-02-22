import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
df1 = pd.read_csv('frf_frf.csv',delimiter=';')
df2 = pd.read_csv('hbm_hbm.csv',delimiter=';')
ax1 = fig.add_subplot(111)
ax1.plot(2*np.pi*df1['Frequency'],df1['N101,u'],label='linear')
ax1.plot(2*np.pi*df2['Frequency'],df2['H1-N101,u'],label='non-linear')
ax1.grid()
ax1.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'$u_{max}$')
ax1.legend(shadow=True).set_draggable(True)
ax1.set_yticks(np.linspace(0.,20.,5))
plt.tight_layout()
plt.show()
