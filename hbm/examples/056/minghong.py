import os, sys
import glob
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
#mpl.rcParams['xtick.minor.visible'] = True
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from matplotlib.ticker import AutoMinorLocator
import pandas as pd
import numpy as np
csvs = glob.glob('hbm_xy_*_resp.csv')
csvs.sort()
fig = plt.figure('HBM',figsize=(7,8))
ax1 = fig.add_subplot(111)
kr=[10.,20.,50.,100.,200.]
for i, csv in enumerate(csvs):
    df1 = pd.read_csv(csv,delimiter=';')
    ax1.plot(2*np.pi*df1['Frequency'],df1['H1-N101,u'],lw=2,label=r'$k_r=%d$ [N/m$^3]$' %kr[i])
ax1.grid()
ax1.set_xlabel(r'Excitation Frequency $\Omega$ ')
ax1.set_xlim(0.0,45.)
ax1.set_ylim(0.0,9.0)
ax1.set_xticks(np.linspace(0.0,40,9))
ax1.set_yticks(np.linspace(0.0,9,10))
ax1.set_ylabel(r'Amplitude $C$')
ax1.legend(shadow=True).set_draggable(True)
plt.gca().xaxis.set_minor_locator(AutoMinorLocator(2))
plt.gca().yaxis.set_minor_locator(AutoMinorLocator(2))
plt.tight_layout()
plt.show()