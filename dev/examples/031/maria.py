import os, sys
import numpy 
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Mode shapes')
ax = fig.add_subplot(111)
for i in range(7):
    ax.plot(df['Coor_Z'],df[df.keys()[i+1]],label=r'$f_{%i}=%.3f$ [Hz]' %(i+1,float(df.keys()[i+1].split('_')[1])))
ax.set_xlabel('Coordinate')
ax.set_ylabel('Mode')
ax.set_xlim(df['Coor_Z'].min(),df['Coor_Z'].max())
ax.grid()
ax.legend(shadow=True).set_draggable(True)
mplcursors.cursor(ax,multiple=True)
plt.tight_layout()
plt.show()
