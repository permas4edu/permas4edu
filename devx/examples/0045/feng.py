import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
df = pd.read_csv('campbell_rsfrq.csv',delimiter=';')
fig = plt.figure('Campbell diagram')
ax = fig.add_subplot(111)
ax.plot(df['Rot.Freq.'],df['Mode 1'],label='BW-1')
ax.plot(df['Rot.Freq.'],df['Mode 3'],label='FW-1')
ax.plot(df['Rot.Freq.'],df['Mode 5'],label='BW-2')
ax.plot(df['Rot.Freq.'],df['Mode 7'],label='FW-2')
ax.plot(df['Rot.Freq.'],df['Mode 9'],label='FW-3')
ax.plot(df['Rot.Freq.'],df['Mode 11'],label='BW-3')
ax.plot(df['Rot.Freq.'],df['Mode 13'],label='BW-4')
ax.plot(df['Rot.Freq.'],df['Mode 15'],label='FW-4')
ax.plot(df['Rot.Freq.'],df['Rot.Freq.'],c='k',alpha=0.5)
ax.set_xlabel('Rotational speed [Hz]')
ax.set_ylabel(r'Frequency $f$ [Hz]')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()