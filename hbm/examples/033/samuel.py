import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()

import matplotlib.pyplot as plt

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
fig= plt.figure('HBM')
ax=fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$x_1$')
#ax.plot(2*np.pi*df['Frequency'],df['H1-N102,u'],label=r'$x_2$')
#ax.plot(2*np.pi*df['Frequency'],df['H1-N103,u'],label=r'$x_3$')
#ax.plot(2*np.pi*df['Frequency'],df['H1-N104,u'],label=r'$x_4$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'Amplitude of the first DOF [m]')
#ax.set_xlim(0.0,4.0)
ax.set_xlim(0.0,5.0)
#ax.set_xticks(np.linspace(0.0,4.0,5))
ax.set_xticks(np.linspace(0.0,5.0,6))
#ax.set_ylim(0.0,3.5)
ax.set_ylim(0.0,5.0)
#ax.set_yticks(np.linspace(0.0,3.5,8))
ax.set_yticks(np.linspace(0.0,5,6))
plt.tight_layout()
plt.show()