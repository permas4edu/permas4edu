import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib import rcParams
rcParams['axes.labelpad'] = 20
rcParams['savefig.directory'] = os.getcwd()
fig, ax = plt.subplots(subplot_kw={'projection': '3d'})

csvs = glob.glob('hbm_*_*.csv')
csvs.sort()
lam = [0.5, 1.05, 1.1, 1.5, 2.0]

for i, csv in enumerate(csvs):
    print ('Processing %s'%csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.plot3D(2*np.pi*df['Frequency'], df['H1-N102,u'], zs=lam[i], zdir='y',label=r'$\lambda=$%.2f'%lam[i])
#ax.set_xlim(1.2,2.)
ax.set_ylabel(r'$\lambda$')
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_zlabel(r'Amplitude $a$',rotation=180)
ax.set_yticks(np.linspace(0.5,2.0,4))
ax.set_zticks(np.linspace(0.0,6.0,4))
ax.view_init(elev=20., azim=-60.)

ax.legend(loc=0,shadow=True).set_draggable(True)
plt.show()
