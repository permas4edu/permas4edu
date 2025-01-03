import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

df1 = pd.read_csv('campbell_rsfrq.csv',delimiter=';')
df2 = pd.read_csv('unbalance_resp.csv',delimiter=';')

fig1 = plt.figure('Campbell diagram')
fig2 = plt.figure('Unbalance response')

ax1 = fig1.add_subplot(111)
ax2 = fig2.add_subplot(111)

ax1.plot(60*df1['Rot.Freq.'],df1['Mode 1'],label='FW-1')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 3'],label='BW-1')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 5'],label='FW-2')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 7'],label='BW-2')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 9'],label='FW-3')
ax1.plot(60*df1['Rot.Freq.'],df1['Mode 11'],label='BW-3')
ax1.plot(60*df1['Rot.Freq.'],df1['Rot.Freq.'],'-.',alpha=0.5,c='k')
ax1.set_xlim(0.,1E4)
ax1.set_yticks(np.linspace(0.,160.,9))
ax1.set_xlabel('Rotor spin speed [rpm]')
ax1.set_ylabel('Damped natural frequency')
ax1.grid()
ax1.legend(shadow=True).set_draggable(True)
plt.ticklabel_format(axis='y', style='sci', scilimits=(0,0))
plt.tight_layout()
ax2.plot(60*df2['Frequency'],df2['N11,u'],label='Disc 1 $u$')
ax2.plot(60*df2['Frequency'],df2['N11,v'],'o',label='Disc 1 $v$')
ax2.set_xlabel('Rotor spin speed [rpm]')
ax2.set_xlim(0.,1E4)
ax2.legend(shadow=True).set_draggable(True)
ax2.grid()
plt.tight_layout()
plt.show()
