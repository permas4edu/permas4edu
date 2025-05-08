import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('FRF')
ax = fig.add_subplot(111)
ax.plot(df['Frequency'],np.log10(df['N6,w']),label='PERMAS')
ax.set_xticks(np.linspace(0.,15.,4))
ax.set_yticks(np.linspace(-5.0,-1.,5))
ax.set_ylim(-5.0,-1.)
ax.grid()
ax.set_xlabel(r'Excitation frequency $f$ [Hz]')
ax.set_ylabel(r'$\log{|x|}$')
ax.set_xlim(0.,16.5)
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()