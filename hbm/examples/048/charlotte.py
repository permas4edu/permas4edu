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
for i in range(10):
    ax.plot(2*np.pi*df['Frequency'],df[df.keys()[11+i]],label=r'%s'%df.keys()[11+i])
ax.set_xlabel('Frequency $\Omega$ [rad/s]')
ax.set_ylabel('Amplitude')
ax.legend(shadow=True).set_draggable(True)
ax.grid()
plt.tight_layout()
plt.show()