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
    df = pd.read_csv(csv,delimiter=';')
    ax1.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],lw=2,label=r'$k_r=%d$ [N/m$^3]$' %kr[i])
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
fig1 = plt.figure('Hysteresis')
df1 = pd.read_csv('u_u.csv',delimiter=';')
df2 = pd.read_csv('nl_force_nl_f.csv',delimiter=';')
ax2 = fig1.add_subplot(211)
ax3 = fig1.add_subplot(212)
ax2.plot(df1['Time'],df1['N101,u'])
ax2.set_xlabel(r'Time $t$ [s]')
ax2.set_ylabel(r'Displacement $u$ [m]')
ax2.grid()
ax2.xaxis.set_minor_locator(AutoMinorLocator(2))
ax2.yaxis.set_minor_locator(AutoMinorLocator(2))
ax3.plot(df1['N101,u'],-df2['E4,C1'])
ax3.set_xlabel('Displacement')
ax3.set_ylabel('Nonlinear force [N]')
ax3.grid()
ax3.xaxis.set_minor_locator(AutoMinorLocator(2))
ax3.yaxis.set_minor_locator(AutoMinorLocator(2))
plt.tight_layout()
plt.show()