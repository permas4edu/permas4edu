import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['savefig.directory'] = os.getcwd()
csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')

fig = plt.figure('Phase space')
ax1 = fig.add_subplot(111,aspect='equal')
ax1.set_title('Phase Space')
ax1.plot(df1['N101,u'],df2['N101,u'],lw=2,c='r',label=r'$q_1$')
#ax2.plot(df1['N102,u'],df2['N102,u'],lw=2,c='g',label=r'$q_2$')
ax1.legend(shadow=True).set_draggable(True)
#ax2.legend(shadow=True).set_draggable(True)
ax1.grid()
#ax2.grid()
ax1.set_xticks(np.linspace(-0.8,0.2,6))
ax1.set_yticks(np.linspace(-0.6,0.6,7))
ax1.set_xlabel(r'Displacement $q_i$')
ax1.set_ylabel(r'Velocity $\dot{q}_i$')
#ax2.set_xlabel(r'Displacement $q_i$')
#ax2.set_ylabel(r'Velocity $\dot{q}_i$')
plt.tight_layout()
plt.show()
