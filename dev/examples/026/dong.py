import os, sys
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('FRFs')
ax=fig.add_subplot(111)
d0=1.E-03
ax.plot(df1['Frequency'],20*np.log10(df1['N2,v']/d0),label='Initial system')
ax.plot(df2['Frequency'],20*np.log10(df2['N2,v']/d0),label='Modified system')
ax.grid('on')
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(0.,45.,10))
ax.set_xlim(0.,45.)
plt.tight_layout()
plt.show()
