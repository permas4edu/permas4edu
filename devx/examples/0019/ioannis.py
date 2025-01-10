import os
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
from scipy.signal import find_peaks
import mplcursors
df1 = pd.read_csv('campbell_rsfrq.csv',delimiter=';')
df2 = pd.read_csv('unbalance_resp.csv',delimiter=';')
peaks = find_peaks(df2['N2,u'])
x =60*df2['Frequency'].values[peaks[0]]
y =df2['N2,u'].values[peaks[0]]
fig, axs = plt.subplots(2,1,figsize=(8,8))
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 1'],label='BW-1')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 3'],label='FW-1')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 5'],label='BW-2')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 7'],label='FW-2')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 9'],label='BW-3')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 11'],label='FW-3')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 13'],label='BW-4')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 15'],label='FW-4')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 17'],label='BW-5')
axs[0].plot(60*df1['Rot.Freq.'],df1['Mode 19'],label='FW-5')
axs[0].plot(60*df1['Rot.Freq.'],df1['Rot.Freq.'],c='k',alpha=0.3,label='-')
axs[0].legend(shadow=True).set_draggable(True)
axs[1].plot(60*df2['Frequency'],df2['N2,u'],label='Disk 1')
axs[1].plot(60*df2['Frequency'],df2['N3,u'],label='Disk 2')
sc=axs[1].scatter(x,y,c='r')
mplcursors.cursor(sc,multiple=True)
axs[1].legend(shadow=True).set_draggable(True)
axs[0].grid()
axs[1].grid()
axs[1].set_xlabel(r'Rotor speed $\Omega$ [rpm]')
axs[1].set_ylabel(r'Displacement amplitude in horizontal $u$ direction')
plt.tight_layout()
plt.show()

