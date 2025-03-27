import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('FRF')
ax = fig.add_subplot(111)
ref = 1.E-12
ax.plot(df['Frequency'],20*np.log10(df[df.keys()[1]]/ref),label=r'$C$')
ax.plot(df['Frequency'],20*np.log10(df[df.keys()[2]]/ref),label=r'$A$')
ax.plot(df['Frequency'],20*np.log10(df[df.keys()[3]]/ref),label=r'$B$')
ax.set_xlabel('Frequency $f$ [Hz]')
ax.set_xlim(0.,170.)
ax.set_xticks(np.array([0.,45.,90.,135.,170.]))
ax.grid()
plt.tight_layout()
plt.show()