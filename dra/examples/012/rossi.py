import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Transient response')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
ax1.grid()
ax2.grid()
ax1.set_xlabel(r'Time $t$ [s]')
ax2.set_xlabel(r'Time $t$ [s]')
ax1.set_ylabel(r'Displacement $u$ [m]')
ax2.set_ylabel(r'Displacement $u$ [m]')
ax1.plot(df1['Time'],df1['N3,u'],c='r',label='DIRECT') 
ax2.plot(df2['Time'],df2['N3,u'],c='g',label='MODAL') 
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
