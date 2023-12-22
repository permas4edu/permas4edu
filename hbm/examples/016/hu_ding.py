import numpy as np
import pandas as pd
import os, sys
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'])
ax.set_xlabel(r'$s$')
ax.set_ylabel(r'Amplitude of LO')
ax.grid('on')
ax.set_xlim(0.4,1.4)
plt.show()
