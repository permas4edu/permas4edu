import os
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt

df1 = pd.read_csv('acceleration_modal_a.csv',delimiter=';')
df2 = pd.read_csv('acceleration_phase_modal_af.csv',delimiter=';')

fig, axs = plt.subplots(2,1,figsize=(10,4))
fig.suptitle('FRF')
axs[0].semilogy(df1['Frequency'],df1['N103,u'],label=r'$H_{3,5}$')
axs[1].plot(df2['Frequency'],np.rad2deg(df2['N103,u']),label=r'$H_{3,5}$')
axs[1].set_xlabel(r'Frequency $f$ [Hz]')
axs[0].set_ylabel(r'Amplitude [$ms^{-2}/N]$')
axs[1].set_ylabel(r'Phase [$^{\circ}]$')
axs[1].set_yticks(np.linspace(-200.,200.,3))
axs[1].set_xticks(np.linspace(0.,40.,9))
axs[0].grid() 
axs[1].grid() 
axs[0].set_xlim(0.,40.)
axs[1].set_xlim(0.,40.)
plt.tight_layout()
plt.savefig('FRF.png',dpi=80)
#plt.show()
