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
from mpl_toolkits.axes_grid1 import make_axes_locatable

csv1s = glob.glob('transient_u_*.csv')
csv2s = glob.glob('transient_up_*.csv')
csv1s.sort()
csv2s.sort()

fig, axs = plt.subplots(1, 3, figsize=(15, 15), num='Transient Response')
# divider1 = make_axes_locatable(axs[0])
# cax1 = divider1.append_axes('right', size='5%', pad=0.15)
# divider2 = make_axes_locatable(axs[1])
# cax2 = divider2.append_axes('right', size='5%', pad=0.15)
divider3 = make_axes_locatable(axs[2])
cax3 = divider3.append_axes('right', size='5%', pad=0.15)

for i, csv1 in enumerate(csv1s):
    df1 = pd.read_csv(csv1s[i],delimiter=';')
    df2 = pd.read_csv(csv2s[i],delimiter=';')
    t = df1['Time'].values
    cNorm  = colors.Normalize(vmin=0, vmax=t[-1])
    scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=coolwarm)
    if i == 0:
        z1=axs[0].scatter(df2['N101,u'],50*df1['N1001,u'],s=10,c=df1['Time'].values,cmap='coolwarm',marker='_')
        axs[0].set_xticks(np.linspace(-30.,30.,7))
        axs[0].set_yticks(np.linspace(-60,60,7))
        axs[0].set_title(r'$\omega/\omega_n=0.7$')
    if i == 1:
        z2=axs[1].scatter(df2['N101,u'],50*df1['N1001,u'],s=10,c=df1['Time'].values,cmap='coolwarm',marker='_')
        axs[1].set_xticks(np.linspace(-20.,20.,5))
        axs[1].set_yticks(np.linspace(-50,50,3))
        axs[1].set_title(r'$\omega/\omega_n=1.3$')
    if i == 2:
        z3=axs[2].scatter(df2['N101,u'],50*df2['N1001,u'],s=10,c=df1['Time'].values,cmap='coolwarm',marker='_')
        axs[2].set_xticks(np.linspace(-30.,30.,7))
        axs[2].set_yticks(np.linspace(-800,800,9))
        axs[2].set_title(r'$\omega/\omega_n=0.75$')
for i, ax in enumerate(axs.flat):
    if i < 2:
        ax.set(xlabel=r'Velocity $\dot{x}$', ylabel ='$f=k\,z$')
    if i==2:
        ax.set(xlabel=r'Velocity $\dot{x}$', ylabel ='$\dot{f}=k\,\dot{z}$')
# Hide x labels and tick labels for top plots and y ticks for right plots.
# for ax in axs.flat:
#     ax.label_outer()
#plt.colorbar(z1,cax=cax1)
#plt.colorbar(z2,cax=cax2)
plt.colorbar(z3,cax=cax3,label=r'Time $t$ [s]')
plt.tight_layout()
plt.show()
