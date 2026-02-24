import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import mplcursors
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
df1 = pd.read_csv('frf_frf.csv',delimiter=';')
df2 = pd.read_csv('hbm_hbm.csv',delimiter=';')
df3 = pd.read_csv('u_u.csv',delimiter=';')
df4 = pd.read_csv('up_up.csv',delimiter=';')
df5 = pd.read_csv('upp_upp.csv',delimiter=';')
ax1 = fig.add_subplot(311)
ax2 = fig.add_subplot(312)
ax3 = fig.add_subplot(313)
ax1.plot(df1['Frequency'],df1['N101,u'],label='linear')
line, = ax1.plot(df2['Frequency'],df2['H1-N101,u'],label='non-linear')
ax1.grid()
ax1.set_xlabel(r'Frequency $f$ [Hz]')
ax1.set_ylabel(r'$u_{max}$')
ax1.legend(shadow=True).set_draggable(True)
ax2.plot(df3['N101,u'],df4['N101,u'])
ax2.set_xlabel(r'Displacement $u$')
ax2.set_ylabel(r'Velocity $\dot{u}$')
ax3.plot(df5['Time'],df5['N101,u'])
ax3.set_xlabel('Time $t$')
ax3.set_ylabel(r'Acceleration $a$ [m/s$^2$]')

cursor = mplcursors.cursor(line, multiple=True)

@cursor.connect("add")
def on_add(sel):
    idx = int(round(sel.index))
    
    freq_val = df2.iloc[idx]['Frequency']
    amp_val = df2.iloc[idx]['H1-N101,u']
    
    sel.annotation.set_text(
        f'Index: {idx+1}\n'
        f'f: {freq_val:.3f} Hz\n'
        f'u_max: {amp_val:.3f}'
    )

plt.tight_layout()
plt.show()
