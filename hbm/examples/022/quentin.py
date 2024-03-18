import os, sys
import glob
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
csvs = glob.glob('hbm_00*_resp.csv')
csvs.sort()
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
k_NL = [-0.003,0.0,0.01,0.04]
for i, csv in enumerate(csvs):
    df = pd.read_csv(csv,delimiter=';')
    ax.semilogy(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$k_{\mathrm{NL}}=%+.3f$'%k_NL[i])
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'Amplitude $q$ [m]')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.0,2.5)
ax.set_xticks(np.linspace(0.0,2.5,6))
plt.tight_layout()
plt.show()  
