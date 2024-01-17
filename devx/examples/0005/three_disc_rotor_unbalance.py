import os, sys
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
mpl.rcParams['savefig.dpi'] = 80
mpl.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig2 = plt.figure('Unbalance response')
ax2 = fig2.add_subplot(111)
ax2.semilogy(60*df1['Frequency'],1.e-3*df1[df2.keys()[1]],'--',lw=2,c='r',label=df2.keys()[1]+' unbalanced')
ax2.semilogy(60*df2['Frequency'],1.e-3*df2[df2.keys()[1]],lw=2,c='b',label=df2.keys()[1]+' balanced')
ax2.set_xlabel(r'Spin speed $\Omega$ [rpm]')
ax2.set_ylabel(r'Displacement $u$ [m]')
ax2.grid('on')
ax2.set_xticks(np.linspace(0.0,3.e4,13))
ax2.ticklabel_format(style='sci', axis='x', scilimits=(0,0))
ax2.set_xlim(0.,3.e4)
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.savefig('unbalance.png')
#plt.show()
