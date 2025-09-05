import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import mplcursors
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Loadscale Factor')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
ax1.plot(df1['Loop Number'],(100+df1['DV-1'])/1000,label=r'$x_1$')
ax1.grid()
ax1.legend(shadow=True).set_draggable(True)
ax1.set_xlabel(r'Loop')
ax1.set_ylabel('Relative Position')
ax2.plot(df2['Loop'],df2['LSF_1'],label=r'$\lambda_1$')
ax2.plot(df2['Loop'],df2['LSF_2'],label=r'$\lambda_2$')
ax2.grid()
ax2.legend(shadow=True).set_draggable(True)
ax2.set_xlabel(r'Loop')
ax2.set_ylabel('Loadscale factor')
mplcursors.cursor(ax1)
mplcursors.cursor(ax2)
plt.tight_layout()
plt.savefig('load_scale_factor')
plt.show()
