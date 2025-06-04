import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import mplcursors

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Sampling')
ax = fig.add_subplot(111)
L=2000.
ax.plot((100+df['DV_1'])/L,df['LSF_01'],'-')
sc=ax.scatter((100+df['DV_1'])/L,df['LSF_01'],label=r'$\lambda_1$')
ax.plot((100+df['DV_1'])/L,df['LSF_02'],'-o',label=r'$\lambda_2$')
ax.grid()
ax.set_xlabel(r'Position $\frac{y}{L}$')
ax.set_ylabel(r'Load scale factor')
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(0.1,0.9,9))
mplcursors.cursor(sc,multiple=True)
plt.tight_layout()
plt.show()
