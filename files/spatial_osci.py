import os, sys
import glob
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np


fig = plt.figure('HBM',figsize=(8,12))
ax1 = fig.add_subplot(111)
#ax2 = fig.add_subplot(212,sharex=ax1)
csvs = glob.glob('hbm_xy*.csv')
csvs.sort()
label=[0.01,0.02,0.03] # Load amplitudes
for i, csv in enumerate(csvs):
    print ('Processing %s'%csv)
    df = pd.read_csv(csv,delimiter=';')
    ax1.plot(2*np.pi*df['Frequency'],df['H1-N2,u'],label=r'$\varepsilon=$%.2f'%label[i])
ax1.grid()
ax1.set_xlim(1.7,2.2)
ax1.set_ylim(0.0,0.25)
ax1.set_xticks(np.linspace(1.7,2.2,6))
ax1.set_yticks(np.linspace(0.0,0.25,6))
ax1.set_ylabel(r'$x_1$')
ax1.set_xlabel(r'Excitation frequency $\Omega$ [rad/s]')
ax1.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
