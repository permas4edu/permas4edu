import os
import pandas as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import mplcursors
df1 = pd.read_csv('opt_final_srhis.csv',delimiter=';') 
df2 = pd.read_csv('opt_final_xdhis.csv',delimiter=';') 

fig = plt.figure('Load scale factors', figsize=(8,8))
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
bs = 205.
ax1.plot(df1['Loop'],df1['LSF_01'],alpha=0.7)
ax1.plot(df1['Loop'],df1['LSF_02'],alpha=0.7)
ax1.plot(df1['Loop'],df1['LSF_03'],alpha=0.7)
ax1.plot(df1['Loop'],df1['LSF_04'],alpha=0.7)
scatter1=ax1.plot(df1['Loop'],df1['LSF_01'],'o',label=r'$\lambda_1$')
scatter2=ax1.plot(df1['Loop'],df1['LSF_02'],'o',label=r'$\lambda_2$')
scatter3=ax1.plot(df1['Loop'],df1['LSF_03'],'o',label=r'$\lambda_3$')
scatter4=ax1.plot(df1['Loop'],df1['LSF_04'],'o',label=r'$\lambda_4$')
ax1.set_xlabel(r'Loop $i$')
ax1.set_ylabel(r'Load scale factor')
ax1.grid()
ax1.set_xlim(0,df1['Loop'].values[-1]+1)
ax1.legend(shadow=True).set_draggable(True)
mplcursors.cursor(scatter1, multiple = True)
mplcursors.cursor(scatter2, multiple = True)
mplcursors.cursor(scatter3, multiple = True)
mplcursors.cursor(scatter4, multiple = True)
ax2.plot(df2['Loop Number'],df2['DV-1'],'-o', label=r'$x_1$')
ax2.set_xlabel(r'Loop $i$')
ax2.set_ylabel(r'Position of the $\Omega$-stringer $x$ [mm]')
ax2.grid()
ax2.set_xlim(0,df2['Loop Number'].values[-1]+1)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
