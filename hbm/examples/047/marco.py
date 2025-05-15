import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],lw=2,label='PERMAS')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.05,2)
ax.set_xticks(np.array([0.05,0.5,1.0,1.5,2.0]))
ax.set_yticks(np.linspace(0.,0.1,3))
ax.set_xlabel(r'Frequency $\Omega$ [rad/s]')
ax.set_ylabel(r'$\hat{x}$')
ax.grid()
plt.tight_layout()
plt.show()
