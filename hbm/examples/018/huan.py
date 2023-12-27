import numpy as np
import pandas as pd
import os, sys
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig1 = plt.figure('HBM 1st order')
ax1 = fig1.add_subplot(211)
ax2 = fig1.add_subplot(212,sharex=ax1)

ax1.plot(2*np.pi*df['Frequency'],df['H1-N110,u'],c='r',label=r'$x_{10}$')
ax2.plot(2*np.pi*df['Frequency'],df['H1-N208,u'],c='g',label=r'$y_8$')
ax1.set_xlabel(r'$\Omega$')
ax1.set_ylabel(r'Displacement [m]')
ax1.grid('on')
ax1.legend(shadow=True).set_draggable(True)
ax1.set_xlim(460.,495.)
ax1.set_xticks(np.linspace(460.,495.,8))

ax2.set_xlabel(r'$\Omega$')
ax2.set_ylabel(r'Displacement [m]')
ax2.grid('on')
ax2.legend(shadow=True).set_draggable(True)
ax2.set_xlim(460.,495.)
ax2.set_xticks(np.linspace(460.,495.,8))


fig2 = plt.figure('HBM 3rd order')
ax3 = fig2.add_subplot(211)
ax4 = fig2.add_subplot(212,sharex=ax1)

ax3.plot(2*np.pi*df['Frequency'],df['H3-N110,u'],c='b',label=r'$x_{10}$')
ax4.plot(2*np.pi*df['Frequency'],df['H3-N208,u'],c='k',label=r'$y_8$')
ax3.set_xlabel(r'$\Omega$')
ax3.set_ylabel(r'Displacement [m]')
ax3.grid('on')
ax3.legend(shadow=True).set_draggable(True)
ax3.set_xlim(460.,495.)
ax3.set_xticks(np.linspace(460.,495.,8))

ax4.set_xlabel(r'$\Omega$')
ax4.set_ylabel(r'Displacement [m]')
ax4.grid('on')
ax4.legend(shadow=True).set_draggable(True)
ax4.set_xlim(460.,495.)
ax4.set_xticks(np.linspace(460.,495.,8))
plt.tight_layout()
plt.show()
