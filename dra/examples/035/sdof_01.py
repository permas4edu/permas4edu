import os, sys
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('Transient response')
ax = fig.add_subplot(111)
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
ax.plot(df['Time'],df['N101,u'],label=r'$u_1(t)$')
ax.set_xlabel(r'Time $t$ [s]')
ax.set_ylabel(r'Displacement $u$ [m]')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()