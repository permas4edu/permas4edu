import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')

fig = plt.figure('Fundamental frequency')
ax = fig.add_subplot(111)
ax.plot(df['Loop'],df['OMEGA_1'],label=r'$\omega_1$')
# ax.plot(df['Loop'],df['OMEGA_2'],label=r'$\omega_2$')
# ax.plot(df['Loop'],df['OMEGA_3'],label=r'$\omega_3$')
# ax.plot(df['Loop'],df['OMEGA_4'],label=r'$\omega_4$')
# ax.plot(df['Loop'],df['OMEGA_5'],label=r'$\omega_5$')
ax.grid()
ax.set_xlabel(r'Loop $i$')
ax.set_ylabel(r'Frequency $\omega$ [rad/s]')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
mplcursors.cursor(ax,multiple=True)
plt.show()
