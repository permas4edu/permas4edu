import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
mpl.use('Agg') 
import matplotlib.pyplot as plt

fig = plt.figure('FRF',figsize=(6,10))
ax1 = fig.add_subplot(311)
ax2 = fig.add_subplot(312)
ax3 = fig.add_subplot(313)
csv_frf = glob.glob('frf_*_resp.csv')
csv_frf.sort()
csv_hbm = glob.glob('hbm_*_resp.csv')
csv_hbm.sort()
f = [ 0.0788, 0.1576, 0.2364]
for i in range(3):
   df1 = pd.read_csv(csv_frf[i],delimiter=';')
   df2 = pd.read_csv(csv_hbm[i],delimiter=';')
   if i == 0:
       ax1.plot(2*np.pi*df1['Frequency'],df1['N101,u'],label=r'FRF')
       ax1.plot(2*np.pi*df2['Frequency'],df2['H1-N101,u'],label=r'HBM')
   if i == 1:
       ax2.plot(2*np.pi*df1['Frequency'],df1['N101,u'],label=r'FRF')
       ax2.plot(2*np.pi*df2['Frequency'],df2['H1-N101,u'],label=r'HBM')
   if i == 2:
       ax3.plot(2*np.pi*df1['Frequency'],df1['N101,u'],label=r'FRF')
       ax3.plot(2*np.pi*df2['Frequency'],df2['H1-N101,u'],label=r'HBM')
ax1.set_xlabel(r'$\Omega_r$')
ax2.set_xlabel(r'$\Omega_r$')
ax3.set_xlabel(r'$\Omega_r$')
ax1.set_ylabel(r'$x$')
ax2.set_ylabel(r'$x$')
ax3.set_ylabel(r'$x$')
ax1.set_title(r'$f=$%.3f'%f[0])
ax2.set_title(r'$f=$%.3f'%f[1])
ax3.set_title(r'$f=$%.3f'%f[2])
ax1.grid()
ax2.grid()
ax3.grid()
ax1.legend(shadow=True)
ax2.legend(shadow=True)
ax3.legend(shadow=True)
ax1.set_yticks(np.linspace(0.,2.,3))
ax2.set_yticks(np.linspace(0.,4.,3))
ax3.set_yticks(np.linspace(0.,6.,3))
ax1.set_xlim(0.5,2.)
ax2.set_xlim(0.5,2.)
ax3.set_xlim(0.5,2.)
ax1.set_xticks(np.linspace(0.5,2.,7))
ax2.set_xticks(np.linspace(0.5,2.,7))
ax3.set_xticks(np.linspace(0.5,2.,7))
plt.tight_layout()
plt.savefig('frf.png',dpi=100)
#plt.show()
