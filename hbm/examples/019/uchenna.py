import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency']/5.,df['H1-N101,u'])
ax.grid('on')
ax.set_xlabel(r'Nondimensional frequency $\frac{\Omega}{\omega_n}$')
ax.set_ylabel(r'$Z$[m]')
ax.set_xlim(0.,2.0)
ax.set_ylim(0.,0.14)
ax.set_yticks(np.linspace(0.,0.14,8))
plt.tight_layout()
plt.show()
