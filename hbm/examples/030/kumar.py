import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')

fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(df['Frequency'],df['H1-N101,u'],label='PERMAS')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r'Amplitude $x_1$')
ax.set_xticks(np.linspace(0.0,0.5,11))
ax.set_yticks(np.linspace(0.,3.5,8))
ax.set_xlim(0.,0.5)
ax.set_ylim(0.,3.5)
ax.grid()
plt.tight_layout()
plt.show()
