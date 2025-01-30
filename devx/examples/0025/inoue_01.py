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
fig,axs = plt.subplots(2,2,figsize=(10,12))
axs[0,0].plot(df1['Rot.Freq.'],df1['Mode 1'],'-o',label='backward I')
axs[0,0].plot(df1['Rot.Freq.'],df1['Mode 3'],'-o',label='forward I')
axs[0,0].grid()
axs[0,0].set_xlim(0.,20.)
axs[0,0].set_ylim(28.,32.)
axs[0,0].set_yticks(np.linspace(28.,32.,9))
axs[0,0].set_xlabel('Rotational speed [Hz]')
axs[0,0].set_ylabel('Natural frequency [Hz]')
axs[0,0].legend(shadow=True).set_draggable(True)
#
axs[1,0].plot(df1['Rot.Freq.'],df1['Mode 5'],'-o',label='backward II')
axs[1,0].plot(df1['Rot.Freq.'],df1['Mode 7'],'-o',label='forward II')
axs[1,0].grid()
axs[1,0].set_ylim(44.9,45.5)
axs[1,0].set_yticks(np.linspace(44.9,45.5,7))
axs[1,0].set_xlabel('Rotational speed [Hz]')
axs[1,0].set_ylabel('Natural frequency [Hz]')
axs[1,0].legend(shadow=True).set_draggable(True)
#
axs[0,1].plot(df2['Rot.Freq.'],df2['Mode 1'],'-o',label='backward I')
axs[0,1].plot(df2['Rot.Freq.'],df2['Mode 3'],'-o',label='forward I')
axs[0,1].grid()
axs[0,1].set_xlabel('Rotational speed [Hz]')
axs[0,1].set_ylabel(r'Damping ratio $\xi$ [-]')
axs[0,1].set_xlim(0.,20.)
axs[0,1].set_ylim(0.,0.045)
axs[0,1].set_yticks(np.array([0.0,0.01,0.02,0.03,0.04,0.045]))
axs[0,1].legend(shadow=True).set_draggable(True)
#
axs[1,1].plot(df2['Rot.Freq.'],df2['Mode 5'],'-o',label='backward II')
axs[1,1].plot(df2['Rot.Freq.'],df2['Mode 7'],'-o',label='forward II')
axs[1,1].grid()
axs[1,1].set_xlabel('Rotational speed [Hz]')
axs[1,1].set_ylabel(r'Damping ratio $\xi$ [-]')
axs[1,1].set_xlim(0.,20.)
axs[1,1].set_ylim(0.,0.045)
axs[1,1].set_yticks(np.array([0.0,0.01,0.02,0.03,0.04,0.045]))
axs[1,1].legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
