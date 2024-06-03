import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
tmp = df.columns.tolist()
rms= (df.iloc[:,6:11]**2/5).sum(1).pow(1/2)
#fig=plt.figure('RMS')
#ax=fig.add_subplot(111)
#ax.plot(2*np.pi*df['Frequency'],rms)
#ax.grid()
fig1=plt.figure('HBM')
ax1=fig1.add_subplot(111)
for i in range(1):
    ax1.plot(2*np.pi*df['Frequency'],df.iloc[:,6+i],'-o',label=df.keys()[6+i])
ax1.legend(shadow=True).set_draggable(True)
ax1.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax1.set_ylabel(r'Amplitude')
ax1.set_xticks(np.linspace(0.515,0.525,3))
ax1.set_yticks(np.linspace(0.0,0.5,6))
ax1.set_xlim(0.515,0.525)
ax1.grid()
mplcursors.cursor(ax1,hover=True)
plt.tight_layout()
plt.show()