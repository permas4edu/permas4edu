import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv1 = sys.argv[1]
csv2 = sys.argv[2]
csv3 = sys.argv[3]
csv4 = sys.argv[4]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
df3 = pd.read_csv(csv3,delimiter=';')
df4 = pd.read_csv(csv4,delimiter=';')
fig = plt.figure(111)
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
f=0.00124
ax1.plot(df1['Frequency'],df1['H1-N101,u']/f,lw=2,label=r'HBM $u_1$')
ax1.plot(df3['Frequency'],df3['N101,u']/f,lw=2,label=r'FRF $u_1$')
ax1.set_xlabel(r'Frequency $f$ [Hz]')
ax1.set_ylabel(r'Amplitude $\frac{u}{f}$')
ax1.grid()
ax1.legend(shadow=True).set_draggable(True)
ax1.set_ylim(0.,1.4E-3)
ax1.set_yticks(np.linspace(0.,1.4E-3,8))
ax1.set_xlim(50.,120.)
ax1.set_xticks(np.linspace(50.,120.,8))
ax2.plot(df2['Frequency'],df2['H1-N101,u'],lw=2,label=r'HBM $u_1$')
ax2.plot(df4['Frequency'],df4['N101,u'],lw=2,label=r'FRF $u_1$')
ax2.set_xlabel(r'Frequency $f$ [Hz]')
ax2.set_ylabel(r'Phase angle $\varphi$ [rad]')
ax2.set_xlim(50.,120.)
ax2.set_xticks(np.linspace(50.,120.,8))
ax2.set_yticks(np.linspace(-3.5,0.,8))
ax2.grid()

ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()