import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
csvs = glob.glob('hbm_*_resp.csv')
csvs.sort()
l = [0.025, 0.05, 0.075, 0.1, 0.125, 0.15]
for i, csv in enumerate(csvs):
    print ('Processing %s'%csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$\lambda=$%.3f'%l[i])
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'Amplitude $a$')
plt.tight_layout()
plt.show()
