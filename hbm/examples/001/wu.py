import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
df = pd.read_csv('hbm_xy_resp.csv',delimiter=';')

fig = plt.figure('HBM',figsize=(8,4))
ax1 = fig.add_subplot(121)
ax2 = fig.add_subplot(122,sharex=ax1)
ax1.plot(2*np.pi*df['Frequency'],df['H1-N2,u'],c='r',label=r'$H_1@x_1$')
ax2.plot(2*np.pi*df['Frequency'],df['H1-N3,u'],c='g',label=r'$H_1@x_2$')
ax1.grid()
ax2.grid()
ax1.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax2.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_xlim(0.8,1.2)
ax1.set_ylim(0.05,0.5)
ax2.set_ylim(0.0,0.7)
ax1.set_yticks(np.linspace(0.05,0.5,10))
ax2.set_yticks(np.linspace(0.0,0.7,8))
ax1.set_ylabel(r'Amplitude $x_1$')
ax2.set_ylabel(r'Amplitude $x_2$')
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
