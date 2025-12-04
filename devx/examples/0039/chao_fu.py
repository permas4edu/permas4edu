import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell diagram')
ax = fig.add_subplot(111)
ax.plot(60*df['Rot.Freq.'],df['Mode 1'],label='BW-1')
ax.plot(60*df['Rot.Freq.'],df['Mode 3'],label='FW-1')
ax.plot(60*df['Rot.Freq.'],df['Mode 5'],label='FW-2')
ax.plot(60*df['Rot.Freq.'],df['Mode 7'],label='BW-2')
ax.plot(60*df['Rot.Freq.'],df['Mode 9'],label='BW-3')
ax.plot(60*df['Rot.Freq.'],df['Mode 11'],label='FW-3')
ax.set_xlabel('Rotor speed [rpm]')
ax.set_ylabel('Natural frequency $f$ [Hz]')
ax.set_xlim(0.,1E5)
ax.ticklabel_format(axis='x',scilimits=(1,0))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()