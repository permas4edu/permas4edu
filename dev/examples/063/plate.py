import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['savefig.directory']=os.getcwd()

csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')

fig = plt.figure('Natural frequencies')
ax = fig.add_subplot(111)
ax.semilogx(df1['DV_1'],df2['F_1'],'-o',label=r'$%s$' %df2.keys()[1].lower())
ax.semilogx(df1['DV_1'],df2['F_2'],'-o',label=r'$%s$' %df2.keys()[2].lower())
ax.semilogx(df1['DV_1'],df2['F_3'],'-o',label=r'$%s$' %df2.keys()[3].lower())
ax.semilogx(df1['DV_1'],df2['F_4'],'-o',label=r'$%s$' %df2.keys()[4].lower())
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Rotational spring $K_y$ [Nm/rad]')
ax.set_ylabel(r'Frequency $f_i$ [Hz]')
plt.tight_layout()
plt.show()
