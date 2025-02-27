import os
import glob
import pandas as pd
import numpy as np
import matplotlib as mpl
import mplcursors
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
csvs=glob.glob('resp_*_resp.csv')
csvs.sort()
fig = plt.figure('Load deflection')
ax = fig.add_subplot(111)
df1 = pd.read_csv('sum_reac_001_lreak.csv',delimiter=';')
t = np.arange(1,6)
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df2 = pd.read_csv(csv,delimiter=';')
    ax.plot(df2['N1327,w'],np.abs(df1['CLAMPED,Fw']),'-o',label=r'$t=$%.1f [mm]'%t[i])
ax.set_ylabel(r'Force $F$ [N]')
ax.set_xlabel(r'Displacement $w$ [mm]')
ax.grid()
ax.set_ylim(150.,300.)
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
mplcursors.cursor(ax,multiple=True)
plt.show()
