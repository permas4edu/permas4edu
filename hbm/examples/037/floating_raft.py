import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
fig = plt.figure('HBM')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212,sharex=ax1)
a_0 = 1.E-6 # reference value
csv1 = sys.argv[1]

df1 = pd.read_csv(csv1,delimiter=';')
ax1.plot(df1['Frequency'],df1['H1-N101,u'],label=r'$M_1$')
ax1.set_xlabel(r'Frequency $f$ [Hz]')
ax1.set_ylabel(r'Acceleration of $M_1$ [m/s$^2$]')
ax1.legend(shadow=True).set_draggable(True)
ax1.grid()
ax1.set_xlim(5.0,6.5)
ax1.set_xticks(np.linspace(5.0,6.5,4))
ax2.plot(df1['Frequency'],20*np.log10(df1['H1-N101,u']/a_0),label=r'$M_1$')
ax2.set_xlabel(r'Frequency $f$ [Hz]')
ax2.set_ylabel(r'$L$ [dB]')
ax2.legend(shadow=True).set_draggable(True)
ax2.grid()
plt.tight_layout()
plt.show()
