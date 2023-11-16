import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$x_1$')
ax.plot(2*np.pi*df['Frequency'],df['H1-N102,u'],label=r'$x_2$')
ax.plot(2*np.pi*df['Frequency'],df['H1-N103,u'],label=r'$x_3$')
ax.set_xlabel(r'$\Omega$ [rad/s]')
ax.set_ylabel(r'$\max(q_i)$')
ax.set_xlim(10.0,80.0)
#ax.set_ylim(0.0,1.4)
ax.set_xticks(np.linspace(10.0,80.0,6))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
