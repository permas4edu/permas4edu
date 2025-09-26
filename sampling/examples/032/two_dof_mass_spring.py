import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('Sampling')
ax = fig.add_subplot(111)
csv = sys.argv[1]
df = pd.read_csv(csv, delimiter=';')
ax.plot(df['DV_1'],df['OMEGA_1'],label=r'$\omega_1$')
ax.plot(df['DV_1'],df['OMEGA_2'],label=r'$\omega_2$')
ax.set_xlabel(r'$k_1$')
ax.set_ylabel(r'$\omega=2\,\pi\, f$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.5,1.5)
ax.set_xticks(np.linspace(0.6,1.4,5))
ax.set_yticks(np.linspace(1.0,1.8,5))
plt.tight_layout()
plt.show()
