import os,sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell')
ax = fig.add_subplot(111)
ax.plot(df['Rot.Freq.'],df['Mode 1'],label='BW-1')
ax.plot(df['Rot.Freq.'],df['Mode 3'],label='FW-1')
ax.plot(df['Rot.Freq.'],df['Mode 5'],label='BW-2')
ax.plot(df['Rot.Freq.'],df['Mode 7'],label='FW-2')
ax.set_xlabel('Spin speed [1/s]')
ax.set_ylabel(r'Frequency $f$ [Hz]')
ax.grid()
ax.set_xlim(0.,1000.)
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()