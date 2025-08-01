import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
#mpl.rcParams['xtick.minor.visible'] = True
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from matplotlib.ticker import AutoMinorLocator
import pandas as pd
import numpy as np
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('HBM',figsize=(5,8))
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
ax1.plot(2*np.pi*df1['Frequency'],df1['H1-N101,u'],c='b',lw=2,label=r'$H_1@x_1$')
ax1.grid()
ax1.set_xlabel(r'Excitation Frequency $\Omega$ ')
ax1.set_xlim(0.0,1.2)
ax1.set_ylim(0.0,3.5)

ax1.set_xticks(np.linspace(0.0,1.2,7))
ax1.set_yticks(np.linspace(0.0,3.5,8))
ax1.set_ylabel(r'Amplitude $C$')
ax1.legend(shadow=True).set_draggable(True)

ax2.plot(2*np.pi*df2['Frequency'],-df2['H1-N101,u'],c='g',lw=2,label=r'$H_1@x_1$')
ax2.grid()
ax2.set_xlabel(r'Excitation Frequency $\Omega$ ')
ax2.set_ylabel(r'Phase $\Phi$')
ax2.set_xlim(0.0,1.2)
ax2.set_ylim(0.0,3.2)
ax2.set_xticks(np.linspace(0.0,1.2,7))
ax2.set_yticks(np.linspace(0.0,3.0,7))
plt.gca().xaxis.set_minor_locator(AutoMinorLocator(2))
plt.gca().yaxis.set_minor_locator(AutoMinorLocator(2))
plt.tight_layout()
plt.show()