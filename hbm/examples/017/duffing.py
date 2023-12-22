import numpy as np
import pandas as pd
import os, sys
import matplotlib as mpl
import matplotlib.pyplot as plt
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('HBM',figsize=(6,9))
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
ax1.set_title('Initial system')
ax1.plot(2*np.pi*df1['Frequency'],df1['H1-N101,u'],lw=2,c='b')
ax1.set_xlabel(r'Angular frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'Amplitude of harmonic 1')
ax1.set_aspect("equal")
ax1.grid('on')
ax1.set_xlim(0.0,6.0)
ax1.set_yticks(np.linspace(0.,7.,8))
ax2.set_title('Optimized system')
ax2.plot(2*np.pi*df2['Frequency'],df2['H1-N101,u'],lw=2,c='g')
ax2.set_xlabel(r'Angular frequency $\Omega$ [rad/s]')
ax2.set_ylabel(r'Amplitude of harmonic 1')
ax2.set_aspect("equal")
ax2.grid('on')
ax2.set_xlim(0.0,6.0)
ax2.set_yticks(np.linspace(0.,7.,8))
plt.tight_layout()
plt.show()
