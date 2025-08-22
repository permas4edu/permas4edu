import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')

fig = plt.figure('Campbell')
ax = fig.add_subplot(111)
ax.plot(60*df['Rot.Freq.'],df[df.keys()[1]],lw=2,label='BW-1')
ax.plot(60*df['Rot.Freq.'],df[df.keys()[3]],lw=2,label='FW-1')
ax.plot(60*df['Rot.Freq.'],df[df.keys()[7]],lw=2,label='FW-2')
ax.plot(60*df['Rot.Freq.'],df[df.keys()[5]],lw=2,label='BW-2')
ax.plot(60*df['Rot.Freq.'],df['Rot.Freq.'],c='k',alpha=0.5,label='1X RPM')
ax.grid()
ax.set_xlabel('Rotational speed $\Omega$ [rpm]')
ax.set_ylabel('Frequency $f$ [Hz]')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.,18000.)
ax.set_ylim(0.,350.)
ax.set_xticks(np.linspace(0.,18000.,10))
ax.set_yticks(np.linspace(0.,450.,10))
plt.tight_layout()
plt.show()
