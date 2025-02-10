import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['savefig.directory']=os.getcwd()
from matplotlib.ticker import MultipleLocator

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency'],1.E3*df['H1-N100,u'],label=r'$x_0$')
ax.grid(which='both')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r'Displacement $x_i$ [mm]')
ax.xaxis.set_minor_locator(MultipleLocator(2.0))
ax.set_xticks(np.linspace(190.,210.,6))
ax.set_xlim(190.,210.)
plt.tight_layout()
plt.show()
