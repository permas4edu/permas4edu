import os, sys
import glob
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt

csvs=glob.glob('harrish_*.csv')
csvs.sort()
a = [0.1, 0.2 , 0.3,  0.4, 0.5 , 0.6]
fig = plt.figure('HBM 01')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax1.plot(df['Frequency'],1E3*df['H1-N101,u'],label=r'%.3f g $m_1$' %a[i])
    ax2.plot(df['Frequency'],1E3*df['H1-N102,u'],label=r'%.3f g $m_2$' %a[i])
ax1.set_xlabel('Frequency $f$ [Hz]')
ax1.set_ylabel('Displacement [mm]')
ax1.grid()
ax1.set_yticks(np.linspace(0.0,50.,6))
ax1.set_xlim(0.0,20.0)
ax1.legend(shadow=True).set_draggable(True)
ax2.set_xlabel('Frequency $f$ [Hz]')
ax2.set_ylabel('Displacement [mm]')
ax2.grid()
ax2.set_yticks(np.linspace(0.0,50.,6))
ax2.set_xlim(0.0,20.0)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
