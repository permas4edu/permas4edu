import os
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
df = pd.read_csv('campbell_rsfrq.csv',delimiter=';')

fig = plt.figure('Campbell diagram')
ax = fig.add_subplot(111)
ax.plot(df['Rot.Freq.'],df['Mode 17'],label='BW-1')
ax.plot(df['Rot.Freq.'],df['Mode 19'],label='FW-1')
#
ax.plot(df['Rot.Freq.'],df['Mode 21'],label='BW-2')
ax.plot(df['Rot.Freq.'],df['Mode 23'],label='FW-2')
#
ax.plot(df['Rot.Freq.'],df['Mode 25'],label='BW-3')
ax.plot(df['Rot.Freq.'],df['Mode 27'],label='BW-3')
#
ax.plot(df['Rot.Freq.'],df['Mode 29'],label='BW-4')
ax.plot(df['Rot.Freq.'],df['Mode 31'],label='BW-4')
ax.grid()
ax.set_xlabel('Rotational frequency $f$ [Hz]')
ax.set_ylabel('Imaginary part of eigenvalue $\lambda$')
ax.set_xlim(0.,200.)
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
 
