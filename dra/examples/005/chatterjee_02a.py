import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
from matplotlib import cm
import matplotlib.colors as colors
import matplotlib.cm as cmx
coolwarm = cm =  plt.get_cmap('coolwarm')
from matplotlib.colors import Normalize

csv1s = glob.glob('transient_u_*.csv')
csv2s = glob.glob('transient_up_*.csv')
csv1s.sort()
csv2s.sort()

fig, axs = plt.subplots(2, 2, figsize=(15, 15), num='Transient Response')

for i, csv1 in enumerate(csv1s):
    df1 = pd.read_csv(csv1s[i],delimiter=';')
    df2 = pd.read_csv(csv2s[i],delimiter=';')
    t = df1['Time'].values
    cNorm  = colors.Normalize(vmin=0, vmax=t[-1])
    scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=coolwarm)
    if i == 0:
        axs[0,0].scatter(df1['N101,u'],df2['N101,u'],s=10,c=df1['Time'].values,cmap='coolwarm',marker='_')
        axs[0,0].set_xticks(np.linspace(-0.3,0.3,7))
        axs[0,0].set_yticks(np.linspace(-8,8,9))
        axs[0,0].set_title(r'$\omega/\omega_n=0.65$')
    if i == 1:
        axs[0,1].scatter(df1['N101,u'],df2['N101,u'],s=10,c=df1['Time'].values,cmap='coolwarm',marker='_')
        axs[0,1].set_xticks(np.linspace(-1.0,1.0,5))
        axs[0,1].set_yticks(np.linspace(-40,40,9))
        axs[0,1].set_title(r'$\omega/\omega_n=1.05$')
    if i == 2:
        axs[1,0].scatter(df1['N101,u'],df2['N101,u'],s=10,c=df1['Time'].values,cmap='coolwarm',marker='_')
        axs[1,0].set_xticks(np.linspace(-0.3,0.3,5))
        axs[1,0].set_yticks(np.linspace(-15,15,7))
        axs[1,0].set_title(r'$\omega/\omega_n=1.25$')
    if i == 3:
        axs[1,1].scatter(df1['N101,u'],df2['N101,u'],s=10,c=df1['Time'].values,cmap='coolwarm',marker='_')
        axs[1,1].set_xticks(np.linspace(-0.2,0.2,5))
        axs[1,1].set_yticks(np.linspace(-8,8,9))
        axs[1,1].set_title(r'$\omega/\omega_n=1.4$')
for ax in axs.flat:
    ax.set(xlabel='Displacement', ylabel ='Velocity')
# Hide x labels and tick labels for top plots and y ticks for right plots.
# for ax in axs.flat:
#     ax.label_outer()
fig.subplots_adjust(right=0.8)
cbar_ax = fig.add_axes([0.85, 0.15, 0.05, 0.7])

plt.colorbar(plt.cm.ScalarMappable(norm=Normalize(0, t[-1]), cmap=coolwarm),
             cax=cbar_ax, label=r'Time $t$ [s]')
#plt.tight_layout()
plt.show()
