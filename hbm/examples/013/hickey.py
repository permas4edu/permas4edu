import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import glob
csvs = glob.glob('hbm_*_u.csv')
csvs.sort()

fig = plt.figure('HBM')
ax = fig.add_subplot(111)
label = [-0.003,0.04]
for i, csv in enumerate(csvs):
    df = pd.read_csv(csv,delimiter=';')    
    ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$\lambda=%+.3f$' %label[i])
ax.set_xlabel(r'$\frac{\Omega}{\omega_n}$')
ax.set_ylabel(r'$u_1$')
ax.set_xlim(0.0,2.5)
ax.set_xticks(np.linspace(0.0,2.5,6))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
