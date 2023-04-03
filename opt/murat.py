import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import mplcursors

fig = plt.figure('FRF')
ax = fig.add_subplot(111)
df = pd.read_csv('frf_resp.csv',delimiter=';')
ax.semilogy(df['Frequency'],df['N103,u'],label=r'$\alpha_{33}$')
ax.semilogy(df['Frequency'],df['N104,u'],label=r'$\alpha_{34}$')
ax.set_yticks(np.logspace(-4,4,9))
ax.set_xlim(0.05,0.35)
ax.legend(shadow=True).set_draggable(True)
mplcursors.cursor(ax,multiple=True)
ax.set_xlabel('Frequency $f$ [Hz]')
plt.tight_layout()
plt.show()
