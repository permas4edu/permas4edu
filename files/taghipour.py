import os, sys
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import numpy as np

df1 = pd.read_csv('disp_xdisp.csv',delimiter=';')
df2 = pd.read_csv('velo_xvelo.csv',delimiter=';')

fig = plt.figure('Phase diagram')
ax = fig.add_subplot(111)
ax.set_title(r'$\Omega=24 $[rad/s], $F=20$ N')
ax.plot(df1['N1,u'],df2['N1,u'],label=df1.keys()[1])
ax.set_xlabel(r'$u_1$')
ax.set_ylabel(r'$\dot{u}_1$')
ax.ticklabel_format(axis='x',scilimits=(0,0))
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
fig2 = plt.figure('Time domain')
ax2 =  fig2.add_subplot(211)
ax3 =  fig2.add_subplot(212,sharex=ax2)
ax2.ticklabel_format(axis='y',scilimits=(0,0))
ax2.plot(df1['Time'],df1['N1,u'],c='r',label=df1.keys()[1])
ax2.set_xlabel(r'Time $t$ [s]')
ax2.set_ylabel(r'Displacement $u$ [m]')
ax2.legend(shadow=True).set_draggable(True)
ax3.plot(df2['Time'],df2['N1,u'],c='g',label=df2.keys()[1])
ax3.set_xlabel(r'Time $t$ [s]')
ax3.set_ylabel(r'Velocity $\dot{u}$ [m/s]')
ax3.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
