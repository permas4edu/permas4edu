import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')

fig = plt.figure('FRF')
ax = fig.add_subplot(111)
ax.plot(df['Frequency'],np.log10(df['N11,v']),label=r'$v_{11}$')
ax.set_xlabel('Frequency $f$ [Hz]')
ax.set_ylabel('Amplitude')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.0,500.)
plt.tight_layout()
plt.show()

