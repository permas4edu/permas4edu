import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campell')
ax = fig.add_subplot(111)
ax.plot(df['Rot.Freq.'],df['Mode 1'],label='BW-1')
ax.plot(df['Rot.Freq.'],df['Mode 3'],label='FW-1')
ax.plot(df['Rot.Freq.'],df['Mode 5'],label='BW-2')
ax.plot(df['Rot.Freq.'],df['Mode 7'],label='FW-2')
ax.legend(shadow=True).set_draggable(True)
ax.grid()
ax.set_xticks(np.linspace(0.0,200.,9))
ax.set_yticks(np.linspace(0.0,400.,9))
ax.set_xlabel('Rotation speed [Hz]')
ax.set_ylabel('Frequency [Hz]')
plt.tight_layout()
plt.show()
