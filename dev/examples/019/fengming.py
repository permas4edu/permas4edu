import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Sampling')
ax1 = fig.add_subplot(311)
ax2 = fig.add_subplot(312,sharex=ax1)
ax3 = fig.add_subplot(313,sharex=ax2)
ax1.plot(df1['DV_1'],df2['F_1'],label=r'$f_1$')
ax1.plot(df1['DV_1'],df2['F_2'],'-o',label=r'$f_2$')
ax2.plot(df1['DV_1'],df2['F_3'],label=r'$f_3$')
ax3.plot(df1['DV_1'],df2['F_4'],label=r'$f_4$')
ax3.plot(df1['DV_1'],df2['F_5'],'-o',label=r'$f_5$')
ax1.set_xlabel(r'Eccentricity $e$ [mm]')
ax1.set_ylabel(r'Natural frequency $f_i$')
ax1.grid('on')
ax1.legend(shadow=True).set_draggable(True)
ax2.set_xlabel(r'Eccentricity $e$ [mm]')
ax2.set_ylabel(r'Natural frequency $f_i$')
ax2.grid('on')
ax2.legend(shadow=True).set_draggable(True)
ax3.set_xlabel(r'Eccentricity $e$ [mm]')
ax3.set_ylabel(r'Natural frequency $f_i$')
ax3.legend(shadow=True).set_draggable(True)
ax3.grid('on')
plt.tight_layout()
plt.show()