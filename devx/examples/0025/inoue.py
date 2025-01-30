import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt

csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Campbell diagram')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)

ax1.plot(df1['Rot.Freq.'],df1['Mode 1'],'-o',label='backward')
ax1.plot(df1['Rot.Freq.'],df1['Mode 3'],'-o',label='forward')
ax1.grid()
ax1.set_xlabel('Rotational speed [Hz]')
ax1.set_ylabel('Natural frequency [Hz]')
ax1.set_yticks(np.linspace(8.,12.5,10))
ax1.set_ylim(8.,12.5)
ax1.set_xlim(0.,20.)
ax1.legend(shadow=True).set_draggable(True)
ax2.plot(df2['Rot.Freq.'],df2['Mode 1'],'-o',label='backward')
ax2.plot(df2['Rot.Freq.'],df2['Mode 3'],'-o',label='forward')
ax2.grid()
ax2.set_xlabel('Rotational speed [Hz]')
ax2.set_ylabel(r'Damping ratio $\xi$ [-]')
ax2.set_yticks(np.array([0.005,0.01,0.02,0.03,0.04,0.05]))
ax2.set_ylim(0.005,0.05)
ax2.set_xlim(0.,20.)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
