import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np

csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1, delimiter=';')
df2 = pd.read_csv(csv2, delimiter=';')

fig = plt.figure('Frequency response')
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)
ax1.plot(df1['Frequency'],df1['N2,u'],label=r'linear $x_1=L$')
ax1.plot(df2['Frequency'],df2['H1-N2,u'],label=r'nonlinear $x_1=L$')
ax1.set_xlabel(r'Frequency $f$ [Hz]')
ax1.legend(shadow=True).set_draggable(True)
ax1.grid('on')
ax1.set_xlim(0.,50.)
ax2.plot(df1['Frequency'],df1['N3,u'],label=r'linear $x_2=0$')
ax2.plot(df2['Frequency'],df2['H1-N3,u'],label=r'nonlinear $x_2=0$')
ax2.set_xlabel(r'Frequency $f$ [Hz]')
ax2.legend(shadow=True).set_draggable(True)
ax2.grid('on')
ax2.set_xlim(0.,50.)
plt.tight_layout()
plt.show()