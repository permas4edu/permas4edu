import os, sys
import numpy as np 
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Modal response')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
ax1.plot(df['Time'],df['N102,v'],label=r'$m_2$')
ax2.plot(df['Time'],df['N101,v'],label=r'$m_1$')
ax1.set_xlabel(r'Time $t$ [s]')
ax2.set_xlabel(r'Time $t$ [s]')
ax1.set_ylabel(r'Displacement [m]')
ax2.set_ylabel(r'Displacement [m]')
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
ax1.set_xlim(0.,5.)
ax1.set_ylim(-1.1,1.1)
ax2.set_ylim(-1.1,1.1)
ax1.set_xticks(np.linspace(0.,5.,11))
plt.tight_layout()
plt.show()
