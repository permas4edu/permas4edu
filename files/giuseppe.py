import os, sys
import glob
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
colors = plt.rcParams["axes.prop_cycle"]()

fig = plt.figure('HBM')
ax = fig.add_subplot(111)
csvs = glob.glob('hbm_xy*.csv')
csvs.sort()
label= [0.001, 0.002, 0.003, 0.004, 0.0042, 0.005, 0.006, 0.007]
for i, csv in enumerate(csvs):
    print ('Processing %s'%csv)
    df = pd.read_csv(csv,delimiter=';')
    # Get the next color from the cycler
    c = next(colors)["color"]
    if i == 4:
        ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],color='k',label=r'$k_{NL2}=$%.4f [N/m$^3$]'%label[i])
    else:    
        ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],color=c,label=r'$k_{NL2}=$%.4f [N/m$^3$]'%label[i])
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_ylabel(r'Displacement [m]')
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
plt.tight_layout()
plt.show()
