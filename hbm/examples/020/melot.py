import os, sys
import glob
import pandas as pd
import matplotlib as mpl

mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import numpy as np
csvs = glob.glob('hbm_*_resp.csv')
csvs.sort()
fig, axs = plt.subplots(2, 1)
F = [1.5, 2.0]
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    axs[i].set_title(r'$F=%.1f$ [N]'%F[i])
    axs[i].plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$x_1$')
    axs[i].plot(2*np.pi*df['Frequency'],df['H1-N102,u'],label=r'$x_2$')
for ax in axs.flat:
    ax.set(xlabel='Angular Frequency $\Omega$ [rad/s]', ylabel=r'$q$')
    ax.legend(shadow=True).set_draggable(True)
    ax.grid()
    ax.set_xlim(0.,6.)
    ax.set_ylim(0.,4.)
    ax.set_xticks(np.linspace(0.,6.,7))
    ax.set_yticks(np.linspace(0.,4.,5))
# Hide x labels and tick labels for top plots and y ticks for right plots.
for ax in axs.flat:
    ax.label_outer()
plt.tight_layout()
plt.show()
