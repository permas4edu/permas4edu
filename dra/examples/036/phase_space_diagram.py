import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig1 = plt.figure('Phase space diagram')
ax1 = fig1.add_subplot(111)
ax1.plot(df1['N52,u'],df2['N52,u'],label=r'$A$')
ax1.set_xlabel('Displacement $u$')
ax1.set_ylabel('Velocity $\dot{u}$')
ax1.grid()
ax1.legend(shadow=True)
plt.tight_layout()
fig2 = plt.figure('Transient response')
ax2 = fig2.add_subplot(211)
ax3 = fig2.add_subplot(212,sharex=ax2)
ax2.plot(df1['Time'],df1['N52,u'],label=r'$u$')
ax3.plot(df2['Time'],df2['N52,u'],label=r'$\dot{u}$')
ax3.set_xlabel(r'Time $t$ [s]')
ax2.grid()
ax3.grid()
ax2.set_ylabel('Displacement')
ax3.set_ylabel('Velocity')
ax2.legend(shadow=True)
ax3.legend(shadow=True)
plt.tight_layout()
plt.show()
