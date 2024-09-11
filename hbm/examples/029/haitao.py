import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
fig1 = plt.figure('HBM')
fig2 = plt.figure('HBM zoom')

ax1 = fig1.add_subplot(211)
ax2 = fig1.add_subplot(212,sharex=ax1)
ax3 = fig2.add_subplot(111)
ax3.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label='PERMAS')
ax3.set_xticks(np.linspace(1.3,1.5,5))
ax3.set_xlim(1.3,1.5)
ax3.grid()
ax3.legend(shadow=True).set_draggable(True)
ax3.set_yticks(np.linspace(0.,55.0,12))
ax3.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax3.set_ylabel(r'Amplitude $u_1$')
plt.tight_layout()

ax1.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label='PERMAS')
ax1.legend(shadow=True).set_draggable(True)
ax1.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'Amplitude $u_1$')
ax1.set_xticks(np.linspace(1.0,3.5,6))
ax1.set_yticks(np.linspace(0.,55.,12))
ax1.set_xlim(0.9,3.5)
ax1.set_ylim(0.,55.)
ax1.grid()
ax2.plot(2*np.pi*df['Frequency'],df['H1-N102,u'],label='PERMAS')
ax2.legend(shadow=True).set_draggable(True)
ax2.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax2.set_ylabel(r'Amplitude $u_2$')
ax2.set_xticks(np.linspace(1.0,3.5,6))
ax2.set_yticks(np.linspace(0.,3.0,7))
ax2.set_xlim(0.9,3.5)
ax2.set_ylim(0.,3.5)
ax2.grid()
plt.tight_layout()
plt.show()
