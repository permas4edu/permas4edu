import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
fig = plt.figure('Response')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)
df1 = pd.read_csv('static_deflection_defl.csv',delimiter=';')
df2 = pd.read_csv('modal_tip_tip.csv',delimiter=';')
ax1.plot(df1['Coor_X'],df1['LPAT_1_v'])
tip=ax1.plot(df1['Coor_X'].values[-1],df1['LPAT_1_v'].values[-1],'o',c='g',label='Tip')
ax1.set_xlabel('Position $x$ [m]')
mplcursors.cursor(tip)
ax1.grid()
ax1.legend(shadow=True).set_draggable(True)
ax1.set_xlim(0.0,1.0)
ax1.set_ylabel('Static deflection')
ax2.plot(df2['Time'],df2['N2,v'],c='g',label=r'$v_2$')
ini=ax2.plot(df2['Time'].values[0],df2['N2,v'].values[0],'o',c='g',label=r'Initial value')
mplcursors.cursor(ini)
ax2.set_xlabel(r'Time $t$ [s]')
ax2.set_ylabel(r'Tip displacement [m]')
ax2.grid()
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
 