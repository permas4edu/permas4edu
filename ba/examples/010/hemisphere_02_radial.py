import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import mplcursors
fig = plt.figure('Load scale factors')
ax = fig.add_subplot(111)
r_0 = 1000.
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
ax.set_xlabel(r'Ratio $\frac{R}{t}$')
ax.set_ylabel(r'Load scale factor')
ax.plot(r_0+df1['DV_1'],df2['LSF_01'])
line,=ax.plot(r_0+df1['DV_1'],df2['LSF_01'],'o',label=r'LSF$_1$')
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(100.,1000.,10))
ax.grid()
mplcursors.cursor(line,multiple=True)
plt.tight_layout()
plt.show()

