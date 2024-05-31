import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')

fig = plt.figure('Campbell diagram')
ax = fig.add_subplot(111)
# Initialize minor ticks
ax.minorticks_on()
ax.set_title('Deterministic model')
ax.plot(60*df['Rot.Freq.'],60*df['Mode 1'],label='BW-1')
ax.plot(60*df['Rot.Freq.'],60*df['Mode 3'],label='FW-1')
ax.plot(60*df['Rot.Freq.'],60*df['Mode 5'],label='BW-2')
ax.plot(60*df['Rot.Freq.'],60*df['Mode 7'],label='FW-2')
ax.plot(60*df['Rot.Freq.'],60*df['Rot.Freq.'],'--',label=r'$w(\Omega)=\Omega$')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'$\Omega$ [rpm]')
ax.set_ylabel(r'$w$ [rpm]')
ax.grid()
ax.set_ylim(0.0,5000.)
ax.set_xlim(0.0,1000.)
ax.set_xticks(np.linspace(0.,1000.,11))
ax.set_yticks(np.linspace(0.,5000.,11))
plt.tight_layout()
plt.show()

