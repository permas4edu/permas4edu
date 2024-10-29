import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()

import matplotlib.pyplot as plt

csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1= pd.read_csv(csv1,delimiter=';')
df2= pd.read_csv(csv2,delimiter=';')
fig= plt.figure('HBM')
ax=fig.add_subplot(111)
ax.plot(df1['Frequency'],df1['H1-N101,u'],label=r'$x_1$')
#ax.plot(df2['Frequency'],df2['H1-N101,u'],label=r'$\ddot{x}_1$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r'$x_1$ Amplitude')
ax.set_xlim(0.0,0.5)
ax.set_xticks(np.linspace(0.0,0.5,11))
ax.set_ylim(0.0,3.5)
ax.set_yticks(np.linspace(0.0,3.5,8))
plt.tight_layout()
plt.show()
