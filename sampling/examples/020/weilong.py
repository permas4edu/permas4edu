import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Natural frequencies')
ax = fig.add_subplot(111)
ax.semilogx(df1['DV_2'],df2['F_1'],'-o',label=r'$%s$'%df2.keys()[1].replace('F','f'))
ax.semilogx(df1['DV_2'],df2['F_2'],'-o',label=r'$%s$'%df2.keys()[2].replace('F','f'))
ax.semilogx(df1['DV_2'],df2['F_3'],'-o',label=r'$%s$'%df2.keys()[3].replace('F','f'))
ax.semilogx(df1['DV_2'],df2['F_4'],'-o',label=r'$%s$'%df2.keys()[4].replace('F','f'))
ax.semilogx(df1['DV_2'],df2['F_5'],'-o',label=r'$%s$'%df2.keys()[5].replace('F','f'))
ax.semilogx(df1['DV_2'],df2['F_6'],'-o',label=r'$%s$'%df2.keys()[6].replace('F','f'))
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(10**np.linspace(0.,12,13))
ax.set_xlabel(r'Stiffness of translational spring $k$ [N/m]')
plt.tight_layout()
plt.show()
