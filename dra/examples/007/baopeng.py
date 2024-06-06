import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Modal FRF')
ax = fig.add_subplot(111)
ax.semilogy(df['Frequency'],df['N3,w'],label='N3,w')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel('Frequency $f$ [Hz]')
ax.set_ylabel('Frequency response')
ax.set_xticks(np.linspace(0.0,500.,11))
ax.set_xlim(0.,500.)
ax.grid()
plt.tight_layout()
plt.show()
