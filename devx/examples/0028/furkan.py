import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')

fig1 = plt.figure('Campbell diagram')
ax1 = fig1.add_subplot(111)
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 1'],label='BW-1')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 3'],label='FW-1')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 5'],label='BW-2')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 7'],label='FW-2')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 9'],label='BW-3')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 11'],label='FW-3')
ax1.set_xlabel('Rotor spin speed [rpm]')
ax1.set_ylabel('Damped natural frequencies [Hz]')
ax1.grid()
ax1.set_ylim(0.,100.)
ax1.set_yticks(np.linspace(0.,100.,6))
ax1.legend(shadow=True).set_draggable(True)
plt.tight_layout()
fig2 = plt.figure('Decay rate')
ax2 = fig2.add_subplot(111)
ax2.plot(60*df2['Rot.Freq.'],df2['Mode 1'],label='BW-1')
ax2.plot(60*df2['Rot.Freq.'],df2['Mode 3'],label='FW-1')
ax2.set_xlabel('Rotor spin speed [rpm]')
ax2.set_ylabel('Decay rate')
ax2.grid()
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()