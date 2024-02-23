import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
import numpy as np
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
line=ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],lw=2,label=r'$H_1$')
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'Amplitude [m]')
ax.set_xlim(0.0,1.0)
ax.set_ylim(0.0,0.7)
ax.legend(shadow=True).set_draggable(True)
mplcursors.cursor(line,multiple=True)
ax.grid('on')
plt.tight_layout()
plt.show()