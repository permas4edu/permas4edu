import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['savefig.directory']=os.getcwd()
from matplotlib.ticker import MultipleLocator

csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
F=120.0
ax.semilogy(df1['Frequency'],df1['N102,u']/F,c='b',label=r'direct FRF (linear)')
ax.semilogy(df2['Frequency'],df2['H1-N102,u']/F,c='r',label=r'HBM (nonlinear)')
ax.grid(which='both')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r' $x_2/F$ [m/N]')
ax.set_xticks(np.linspace(4.,18.,8))
ax.set_xlim(3.5,18.5)
plt.tight_layout()
plt.show()
