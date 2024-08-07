import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
fig = plt.figure('Mode Shapes')
ax = fig.add_subplot(111)
df = pd.read_csv('yongzhi_mode.csv',delimiter=';')
m,n=df.shape
for i in range(1,5):
    ax.plot(df['Coor_X'],df[df.keys()[i]],'-o',label='Mode %i @ $f=$ %s [Hz]'%(i,df.keys()[i].lstrip('Freq_').rstrip('_v')))
ax.grid()
ax.set_xlabel(r'Coordinate $x$')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()