import os, sys
import mplcursors
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
colors = plt.rcParams["axes.prop_cycle"]()
fig = plt.figure('HBM')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
df = pd.read_csv('hbm_resp.csv',delimiter=';')
c = next(colors)["color"]
ax1.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],color=c,label=r'$x_1$')
c = next(colors)["color"]
ax2.plot(2*np.pi*df['Frequency'],df['H1-N102,u'],color=c,label=r'$x_2$')
ax2.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'Displacement [m]')
ax2.set_ylabel(r'Displacement [m]')
ax1.set_xlim(0.9,2.5)
ax2.set_xlim(0.9,2.5)
ax1.set_xticks(np.linspace(0.9,2.5,9))
ax2.set_xticks(np.linspace(0.9,2.5,9))
ax1.grid()
ax2.grid()
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
mplcursors.cursor(ax1,multiple=True)
mplcursors.cursor(ax2,multiple=True)
plt.tight_layout()
plt.show()
