import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import mplcursors
csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
l=0.5
L=1.0
fig = plt.figure('Dimensionless frequencies')
ax1 = fig.add_subplot(111)
color = 'tab:red'
ax1.plot((l+df1['DV_1']/L),df2['NONDIM_F_1'],alpha=0.2)
ax1.plot((l+df1['DV_1']/L),df2['NONDIM_F_1'],'o',label=r'$\widetilde{\omega}_1$')
ax1.grid('on')
ax1.legend(loc='center left',shadow=True).set_draggable(True)
ax1.set_xlabel(r'Cutout ratio $\gamma$')
ax1.tick_params(axis='y',labelcolor=color)
ax1.set_ylabel(r'Dimensionless fundamental Frequency $\widetilde{\omega}=\omega\,L^2 \sqrt{\rho\,h/D}$',color=color)
ax2 = ax1.twinx()
color= 'tab:blue'
ax2.set_ylabel(r'Mass $m$ [kg]',color=color)
ax2.plot((l+df1['DV_1']/L),df2['WGT'],'-o',label=r'$m$')
ax2.tick_params(axis='y',labelcolor=color)
ax2.legend(loc='upper center',shadow=True).set_draggable(True)
mplcursors.cursor(ax1,multiple=True)
plt.tight_layout()
plt.show()
