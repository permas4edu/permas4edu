import os
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import glob
csvs = glob.glob('frf_*_resp.csv')
csvs.sort()
mpl.rcParams['savefig.directory']=os.getcwd()
fig=plt.figure('FRF')
ax=fig.add_subplot(111)
c = [0.0,250.,500.,750.]
for i, csv in enumerate(csvs):
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(2*np.pi*df['Frequency'],df['N101,u'],label=r'$c=$%.1f [Ns/m]' %c[i])
#    ax.plot(2*np.pi*df['Frequency'],df['N102,u'],label=r'$x_2$')
ax.grid()
ax.set_ylim(0.0,3.5E-5)
ax.set_xlabel(r'Frquency $\Omega$ [rad/s]')
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(0.0,180.,10))
plt.tight_layout()
plt.show()
