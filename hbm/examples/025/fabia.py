import os, sys
import numpy as np
import pandas as pd
import mplcursors
import matplotlib as mpl
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$x_1$')
ax.grid()
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'$x_1$')
ax.set_xlim(0.,5.5)
ax.set_xticks(np.linspace(0,5.,6))
ax.set_ylim(0.0, 3)
ax.set_yticks(np.linspace(0.,3.,7))
ax.legend(shadow=True).set_draggable(True)
mplcursors.cursor(ax,multiple=True)
plt.tight_layout()
plt.show()