import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$q_1$')
ax.set_xlabel(r'$\Omega$')
ax.set_ylabel(r'$\max(q_1)$')
ax.set_xlim(0.0,1.5)
ax.set_ylim(0.0,1.4)
ax.set_xticks(np.linspace(0.0,1.5,4))
ax.set_yticks(np.linspace(0.0,4.0,5))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
