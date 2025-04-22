import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

df = pd.read_csv('sampling_srhis.csv',delimiter=';')
dfT = df.T
fig = plt.figure('Eigenvalue distribution')
ax = fig.add_subplot(111)
c = dfT.values[8:]
ax.set_title(r'$n=3$ Levels')
ax.plot(np.arange(1,15),np.sort(c,axis=0),'-o')
ax.grid()
ax.set_xlabel('Index')
ax.set_ylabel(r'$\Im{(\lambda)}$')
plt.tight_layout()
plt.show()
