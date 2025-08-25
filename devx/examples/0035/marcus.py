import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
fig = plt.figure('Unbalance')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
ax1.semilogy(60*df1['Frequency'],df1['N2,v'],label=r'$v_2$')
ax1.semilogy(60*df1['Frequency'],df1['N2,w'],label=r'$w_2$')
ax2.plot(60*df2['Frequency'],np.rad2deg(np.pi+df2['N2,v']),label=r'$v_2$')
ax2.plot(60*df2['Frequency'],np.rad2deg(np.pi+df2['N2,w']),label=r'$w_2$')
ax1.grid()
ax2.grid()
ax1.legend(shadow=True).set_draggable(True)
ax2.legend(shadow=True).set_draggable(True)
ax2.set_xlabel(r'Frequency $\Omega$ [rpm]')
ax2.set_ylabel(r'Phase [$^\circ$]')
ax1.set_ylabel(r'Amplitude [m]')
plt.tight_layout()
plt.show()
