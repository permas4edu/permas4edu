import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('PSD')
ax = fig.add_subplot(111)
ax.semilogy(2*np.pi*df['Frequency'],df['N105,u'],label=r'$q_5$')
ax.semilogy(2*np.pi*df['Frequency'],df['N105,u'],label=r'$q_{10}$')
ax.set_xticks(np.linspace(0.,10.,5))
ax.grid()
plt.tight_layout()
plt.show()
