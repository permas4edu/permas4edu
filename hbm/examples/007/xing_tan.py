import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.use('TkAgg')
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)
ax1.plot(2*np.pi*df['Frequency'],df['H1-N110,u'],label=r'$x_{10}$')
ax2.plot(2*np.pi*df['Frequency'],df['H1-N201,u'],label=r'$y_{8}$')
ax1.grid()
ax2.grid()
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
ax1.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax2.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'Displacement $x_{10}$ [m]')
ax2.set_ylabel(r'Displacement $y_{8}$ [m]')
ax1.set_xlim(460.,495.)
ax2.set_xlim(460.,495.)
ax1.set_xticks(np.linspace(460.,490.,7))
ax2.set_xticks(np.linspace(460.,490.,7))
ax1.set_title('1st order harmonic response')
ax2.set_title('1st order harmonic response')
plt.tight_layout()
plt.savefig('xing_tan.png',dpi=80)
#plt.show()
