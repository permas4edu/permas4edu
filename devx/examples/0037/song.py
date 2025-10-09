import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

csv = sys.argv[1]

df = pd.read_csv(csv, delimiter=';')
fig = plt.figure('Normal modes')
ax = fig.add_subplot(111)
for i in range(4):
   ax.plot(df[df.keys()[i+1]],df[df.keys()[0]],'-o',label='Mode %i'%(i+1))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()