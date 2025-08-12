import os, sys
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('Transient response')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')

ax1.set_title('Modal approach')
for i in range(5):
    ax1.plot(df1['Time'],df1[df1.keys()[i+1]],label=r'$u_%i(t)$' %(i+1))

ax1.set_xlabel(r'Time $t$ [s]')
ax1.set_ylabel(r'Displacement $u$ [m]')
ax1.grid()
ax1.legend(shadow=True).set_draggable(True)
ax2.set_title('Direct approach')

for i in range(5):
    ax2.plot(df2['Time'],df2[df2.keys()[i+1]],label=r'$u_%i(t)$' %(i+1))

ax2.set_xlabel(r'Time $t$ [s]')
ax2.set_ylabel(r'Displacement $u$ [m]')
ax2.grid()
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()