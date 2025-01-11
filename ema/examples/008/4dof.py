import os
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df = pd.read_csv('frf_frf.csv',delimiter=';')
fig = plt.figure('FRF')
ax = fig.add_subplot(111)
#ax.semilogy(2*np.pi*df['Frequency'],df['N101,u'],label=r'$u_1$')
ax.semilogy(2*np.pi*df['Frequency'],df['N102,u'],label=r'$u_2$')
#ax.semilogy(2*np.pi*df['Frequency'],df['N103,u'],label=r'$u_3$')
#ax.semilogy(2*np.pi*df['Frequency'],df['N104,u'],label=r'$u_4$')
ax.grid()
ax.set_xticks(np.linspace(0.0,2.0,11))
ax.set_xlabel('Frequency $\Omega$ [rad/s]')
ax.set_ylabel('Magnitude')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()