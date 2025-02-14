import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Buckling modes',figsize=(6,10))
ax = fig.add_subplot(111)
ax.plot(df[df.keys()[1]],1.E-3*df['Coor_X'],'-o',label=df.keys()[1])
ax.plot(df[df.keys()[2]],1.E-3*df['Coor_X'],'-o',label=df.keys()[2])
ax.plot(df[df.keys()[3]],1.E-3*df['Coor_X'],'-o',label=df.keys()[3])
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_ylabel('Coordinate $x$ [m]')
plt.tight_layout()
plt.show()
