import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
rms = df['N101,u']
fig=plt.figure('RMS')
ax=fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency'],rms,label=df.keys()[1])
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'Amplitude')
ax.set_xticks(np.linspace(0.2,0.7,11))
ax.set_yticks(np.linspace(0.0,0.18,7))
ax.set_xlim(0.2,0.7)
ax.grid()
mplcursors.cursor(ax,hover=True)
plt.tight_layout()
plt.show()