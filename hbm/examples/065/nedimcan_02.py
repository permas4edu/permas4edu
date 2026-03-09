import os, sys
import numpy as np
import pandas as pd 
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
df = pd.read_csv('hbm_hbm.csv',delimiter=';')
fig = plt.figure('HBM')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)
ax1.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],c='r',label=r'$x_1$')
ax2.plot(2*np.pi*df['Frequency'],df['H1-N102,u'],c='g',label=r'$x_2$')
ax1.grid()
ax2.grid()
ax1.set_xlim(0.8,1.3)
ax2.set_xlim(0.,1.5)
ax1.set_ylim(0.2,0.65)
ax1.set_xticks(np.linspace(0.8,1.3,6))
ax2.set_xticks(np.linspace(0.0,1.4,8))
ax1.set_yticks(np.linspace(0.2,0.65,10))
ax2.set_yticks(np.linspace(0.,2.5,6))
ax2.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'$x_1$')
ax2.set_ylabel(r'$x_2$')
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()