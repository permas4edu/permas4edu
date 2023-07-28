import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
from matplotlib.ticker import (MultipleLocator, AutoMinorLocator)
mpl.rcParams['savefig.directory']=os.getcwd()
csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell')
ax = fig.add_subplot(111)
ax.set_xlabel(r'Rotating speed $f$ [Hz]')
ax.set_ylabel(r'Frequency [Hz]')
ax.plot(df['Rot.Freq.'],df['Mode 1'])
ax.plot(df['Rot.Freq.'],df['Mode 3'])
ax.plot(df['Rot.Freq.'],df['Mode 5'])
ax.plot(df['Rot.Freq.'],df['Mode 7'])
ax.plot(df['Rot.Freq.'],df['Mode 9'])
ax.plot(df['Rot.Freq.'],df['Mode 11'])
ax.plot(df['Rot.Freq.'],df['Mode 13'])
ax.plot(df['Rot.Freq.'],df['Mode 15'])
ax.plot(df['Rot.Freq.'],df['Mode 17'])
ax.plot(df['Rot.Freq.'],df['Mode 19'])
ax.plot(df['Rot.Freq.'],df['Mode 21'])
ax.plot(df['Rot.Freq.'],df['Mode 23'])
ax.set_yticks(np.linspace(0.,15.e3,7))
ax.plot(df['Rot.Freq.'],df['Rot.Freq.'],'-.',c='k',alpha=0.5)
#ax.yaxis.set_minor_locator(MultipleLocator(1))
ax.yaxis.set_minor_locator(AutoMinorLocator(2))
ax.set_xlim(0.,5000.)
ax.grid()
plt.tight_layout()
plt.show()