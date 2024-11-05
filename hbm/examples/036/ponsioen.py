import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
df1=pd.read_csv('frf_tip_tip.csv',delimiter=';')
df2=pd.read_csv('modal_hbm_tip_tip.csv',delimiter=';')
df3=pd.read_csv('direct_hbm_tip_tip.csv',delimiter=';')
fig = plt.figure('FRFs')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df1['Frequency'],df1['N2,w'],label='linear FRF')
ax.plot(2*np.pi*df2['Frequency'],df2['H1-N2,w'],label='non-linear modal HBM')
ax.plot(2*np.pi*df3['Frequency'],df3['H1-N2,w'],'o',label='non-linear direct HBM')
ax.grid()
ax.set_xlim(2*np.pi*df1['Frequency'].values[0],2*np.pi*df1['Frequency'].values[-1])
#ax.set_yticks(np.linspace(0.02,0.2,10))
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
plt.tight_layout()
plt.show()
