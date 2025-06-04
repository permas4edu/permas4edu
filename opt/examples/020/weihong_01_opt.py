import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import mplcursors
csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Optimization',figsize=(10,8))
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)
L=2000.
ax1.plot(df2['Loop'],df2['LSF_01'],'-')
sc = ax1.scatter(df2['Loop'],df2['LSF_01'],label=r'$\lambda_1$')
ax1.plot(df2['Loop'],df2['LSF_02'],'-o',label=r'$\lambda_2$')
ax1.plot(df2['Loop'],df2['LSF_03'],'-o',label=r'$\lambda_3$')
ax1.grid()
ax1.set_xlabel(r'Loop $i$')
ax1.set_ylabel(r'Load scale factor')
ax1.legend(shadow=True).set_draggable(True)
y0=100. # Initial position on the beam
L = 2000. # length of the beam
ax2.plot(df1[df1.keys()[0]],(100+df1['DV-1'])/L)
sc2=ax2.scatter(df1[df1.keys()[0]],(100+df1['DV-1'])/L)
ax2.set_ylabel(r'Position of the attached spring $\frac{y}{L}$')
ax1.set_xlabel(r'Loop $i$')
ax2.grid()
mplcursors.cursor(sc,multiple=True)
mplcursors.cursor(sc2,multiple=True)
plt.tight_layout()
plt.show()
