import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'%s' %('$u_1$'))
#ax.plot(2*np.pi*df['Frequency'],df['H1-N102,u'],label=r'%s' %('$u_2$'))
ax.set_xlabel('Frequency $\Omega$ [rad/s]')
ax.set_ylabel('Amplitude')
ax.legend(shadow=True).set_draggable(True)
ax.grid()
ax.set_xlim(0.5,2.5)
ax.set_xticks(np.linspace(0.5,2.5,5))
ax.set_yticks(np.linspace(0.0,2.5,6))
plt.tight_layout()
plt.show()
