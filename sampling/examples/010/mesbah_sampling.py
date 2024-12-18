import os
import pandas as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import mplcursors
df1 = pd.read_csv('sampling_xdhis.csv',delimiter=';') 
df2 = pd.read_csv('sampling_srhis.csv',delimiter=';') 
fig = plt.figure('Load scale factors')
ax = fig.add_subplot(111)
bs = 205.
ax.plot(bs-2*df1['DV_1'],df2['LSF_01'],alpha=0.7)
ax.plot(bs-2*df1['DV_1'],df2['LSF_02'],alpha=0.7)
ax.plot(bs-2*df1['DV_1'],df2['LSF_03'],alpha=0.7)
ax.plot(bs-2*df1['DV_1'],df2['LSF_04'],alpha=0.7)
scatter1=ax.plot(bs-2*df1['DV_1'],df2['LSF_01'],'o',label=r'$\lambda_1$')
scatter2=ax.plot(bs-2*df1['DV_1'],df2['LSF_02'],'o',label=r'$\lambda_2$')
scatter3=ax.plot(bs-2*df1['DV_1'],df2['LSF_03'],'o',label=r'$\lambda_3$')
scatter4=ax.plot(bs-2*df1['DV_1'],df2['LSF_04'],'o',label=r'$\lambda_4$')
ax.set_xlabel(r'Distance between stringers $\Delta x$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
mplcursors.cursor(scatter1, multiple = True)
mplcursors.cursor(scatter2, multiple = True)
mplcursors.cursor(scatter3, multiple = True)
mplcursors.cursor(scatter4, multiple = True)
plt.tight_layout()
plt.show()
