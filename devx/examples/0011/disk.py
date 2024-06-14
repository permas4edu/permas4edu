import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell')
ax=fig.add_subplot(111)
ax.plot(60*df['Rot.Freq.'],df['Mode 1'],label='BW-1')
ax.plot(60*df['Rot.Freq.'],df['Mode 3'],label='FW-1')
#ax.plot(60*df['Rot.Freq.'],df['Mode 5'],label='')
ax.plot(60*df['Rot.Freq.'],df['Mode 7'],label='BW-2')
ax.plot(60*df['Rot.Freq.'],df['Mode 9'],label='FW-2')
ax.plot(60*df['Rot.Freq.'],df['Mode 11'],label='FW-3')
ax.plot(60*df['Rot.Freq.'],df['Mode 13'],label='BW-3')
ax.grid()
ax.set_xlabel('Rotational speed [rpm]')
ax.set_ylabel('Frequency [Hz]')
ax.set_xticks(np.linspace(0.,6000.,7))
ax.set_xlim(0.,6000.)
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
