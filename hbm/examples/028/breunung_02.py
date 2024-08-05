import os, sys
import glob
import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
csvs = glob.glob('u_hbm_xy_00*_uresp.csv')
csvs.sort()
fig = plt.figure('Forced response curves')
ax = fig.add_subplot(111)
F=[410.89, 616.33, 821.77]
alpha=1.7266E-4

for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(df['Frequency'],df['H1-N101,u'],label=r'$f=$%.2f'%F[i])
ax.legend(shadow=True).set_draggable(True)
ax.grid()
ax.set_xlabel('Excitation frequency (Hz)')
ax.set_ylabel(r'Amplitude $q^1$')
ax.set_xlim(45.,48.)
plt.tight_layout()
plt.show()
