import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import mplcursors

csvs = glob.glob('angle_*_angle.csv')
fig = plt.figure('Twist angle')
ax = fig.add_subplot(111)
k = [2.500000E+04, 5.000000E+04, 1.000000E+05, 1.000000E+12]

for i, csv in enumerate(csvs):
    df = pd.read_csv(csv, delimiter = ';')

    ax.plot(df['Coor_X'], np.abs(df['LPAT_1_phiu']),'-o',label=r'$k_%i=%e$' %(i+1,k[i]))

mplcursors.cursor(ax,multiple=True)
ax.grid()
ax.set_xlabel(r'$x$ [m]')
ax.set_ylabel(r'$\Phi$ [rad]')
ax.set_ylim(0.,0.14)
ax.set_xlim(0.,1.4)
ax.set_yticks(np.linspace(0.,0.14,7))
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
