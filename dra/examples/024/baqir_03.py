import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt

csv = sys.argv[1]

fig = plt.figure('Transient response')
ax = fig.add_subplot(111)
df = pd.read_csv(csv,delimiter=';')
ax.plot(df['Time'],df['N8,v'],label=r'$v(x=L,y=R/2,t)$')
ax.set_xlabel(r'Time $t$ [s]')
ax.set_ylabel(r'Displacement $v$ [m]')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.,0.14)
plt.ticklabel_format(axis='y', style='sci', scilimits=(0, 0))
plt.tight_layout()
plt.show()
