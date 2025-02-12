import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
mpl.rcParams['savefig.directory']=os.getcwd()
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Nodal Point Stress')
ax = fig.add_subplot(111)
ax.plot(df1['Coor_Y1'],df1['LPAT_1_v'],'-',label=r'$\sigma^{inner}_{22}(\varphi)$')
ax.plot(df2['Coor_Y1'],df2['LPAT_1_v'],'-',label=r'$\sigma^{outer}_{22}(\varphi)$')
sc1=ax.scatter(df1['Coor_Y1'],df1['LPAT_1_v'])
sc2=ax.scatter(df2['Coor_Y1'],df2['LPAT_1_v'])
ax.set_xlabel(r'Angle $\varphi$')
ax.set_ylabel(r'Nodal point stress')
ax.grid()
ax.set_xlim(-90,90)
ax.legend(shadow=True).set_draggable(True)
mplcursors.cursor(sc1, multiple=True)
mplcursors.cursor(sc2, multiple=True)
plt.tight_layout()
plt.show()
