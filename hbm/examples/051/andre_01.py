import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
#mpl.rcParams['xtick.minor.visible'] = True
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from matplotlib.ticker import AutoMinorLocator
import pandas as pd
import numpy as np
csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
omega=1.5
fig = plt.figure('HBM',figsize=(8,4))
ax1 = fig.add_subplot(111)
ax1.plot(2*np.pi*df['Frequency']/omega,df['H1-N101,u'],c='b',lw=2,label=r'$H_1@x_1$')
ax1.grid()
ax1.set_xlabel(r'Frequency ratio $\Omega/\omega$ ')
ax1.set_xlim(0.8,1.3)
ax1.set_ylim(0.0,1.2)

ax1.set_xticks(np.linspace(0.8,1.3,11))
ax1.set_yticks(np.linspace(0.0,1.2,13))
ax1.set_ylabel(r'Amplitude $x_1$')
ax1.legend(shadow=True).set_draggable(True)
plt.gca().xaxis.set_minor_locator(AutoMinorLocator(2))
plt.gca().yaxis.set_minor_locator(AutoMinorLocator(2))
plt.tight_layout()
plt.show()