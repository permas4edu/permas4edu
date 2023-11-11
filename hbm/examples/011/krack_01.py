import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
omega1 = 6.18092E-01
csv = sys.argv[1]
df = pd.read_csv('hbm_u.csv',delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency']/omega1,df['H1-N101,u'],label=r'$q_1$')
ax.set_xlabel(r'$\frac{\Omega}{\omega_1}$')
ax.set_ylabel(r'$\max(q_1)$')
ax.set_xlim(0.8,1.3)
ax.set_ylim(0.0,1.4)
ax.set_xticks(np.linspace(0.8,1.3,6))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
