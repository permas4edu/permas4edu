import os, sys
import glob
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt

fig = plt.figure('HBM')
ax = fig.add_subplot(111)
csvs = glob.glob('hbm_*_hbm.csv')
F = [0.1,0.5,1.0,1.5]
csvs.sort()
for i, csv in enumerate(csvs):
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(2*np.pi*df['Frequency'], df['H1-N101,u'],label=r'F=%.1f'%F[i])
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'Absorber amplitude')
ax.set_xlim(0.0,4.0)
plt.tight_layout()
plt.show()