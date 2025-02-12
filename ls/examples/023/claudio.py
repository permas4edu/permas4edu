import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
mpl.rcParams['savefig.directory']=os.getcwd()
csv1 = sys.argv[1]
csv2 = sys.argv[2]
csv3 = sys.argv[3]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
df3 = pd.read_csv(csv3,delimiter=';')
fig = plt.figure('Nodal Point Stress')
ax1 = fig.add_subplot(211)
ax1.plot(df1['Coor_Y1'],df1['LPAT_1_v'],'-',label=r'$\sigma^{inner}_{22}(\varphi)$')
ax1.plot(df2['Coor_Y1'],df2['LPAT_1_v'],'-',label=r'$\sigma^{outer}_{22}(\varphi)$')
sc1=ax1.scatter(df1['Coor_Y1'],df1['LPAT_1_v'])
sc2=ax1.scatter(df2['Coor_Y1'],df2['LPAT_1_v'])
ax1.set_xlabel(r'Angle $\varphi$')
ax1.set_ylabel(r'Nodal point stress')
ax1.grid()
ax1.set_xlim(-90,90)
ax1.legend(shadow=True).set_draggable(True)
ax2 = fig.add_subplot(212)
ax2.plot(df3['Coor_X'],df3['LPAT_1_v'],'-',label=r'$\sigma^{central}_{22}(x)$')
sc3=ax2.scatter(df3['Coor_X'],df3['LPAT_1_v'])
ax2.set_xlim(300.,500.)
ax2.set_xlabel(r'Coordinate $x$')
ax2.set_ylabel(r'Nodal point stress')
ax2.grid()
ax2.legend(shadow=True).set_draggable(True)
mplcursors.cursor(sc1, multiple=True)
mplcursors.cursor(sc2, multiple=True)
mplcursors.cursor(sc3, multiple=True)
plt.tight_layout()
plt.show()
