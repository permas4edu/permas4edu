import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
csv = sys.argv[1]

df = pd.read_csv(csv,delimiter = ';')
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$H1$')
ax.legend(shadow=True).set_draggable(True)
ax.grid()
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'Amplitude')
ax.set_xticks(np.linspace(2.0,4.0,5))
ax.set_yticks(np.linspace(0.0,8.0,9))
ax.set_xlim(2.0,4.0)
plt.tight_layout()
plt.show()