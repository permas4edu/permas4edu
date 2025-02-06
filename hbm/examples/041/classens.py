import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['savefig.directory']=os.getcwd()

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(df['Frequency'],df['H1-N101,u'],label=r'$x_1$')
ax.plot(df['Frequency'],df['H1-N102,u'],label=r'$x_2$')
ax.plot(df['Frequency'],df['H1-N103,u'],label=r'$x_3$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r'Displacement $x_i$ [m]')
ax.set_xlim(5.,100.)
plt.tight_layout()
plt.show()
