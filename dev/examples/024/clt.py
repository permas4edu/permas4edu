import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df1 = pd.read_csv('frf_01_ampl.csv',delimiter=';')
df2 = pd.read_csv('frf_02_phase.csv',delimiter=';')
fig = plt.figure('FRF')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)
ax1.semilogy(df1['Frequency'],df1['N66,w'])
ax2.plot(df2['Frequency'],np.rad2deg(df2['N66,w']))
ax1.grid('on')
ax1.grid('on')
ax1.set_xlabel(r'Frequency $f$ [Hz]')
ax2.set_xlabel(r'Frequency $f$ [Hz]')
ax2.set_yticks(np.linspace(0.,180.,3))
plt.tight_layout()
plt.show()