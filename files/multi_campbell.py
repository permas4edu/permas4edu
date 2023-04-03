import os, sys, glob
import numpy as np
import matplotlib as mpl
mpl.use('AGG')
mpl.rcParams['savefig.directory'] = os.getcwd()
#mpl.rcParams['savefig.dpi'] = 800
import matplotlib.pyplot as plt
import pandas as pd
from matplotlib.pyplot import cm
from matplotlib.cm import get_cmap
import matplotlib.colors as colors
import matplotlib.cm as cmx

n = 13 # odd number
colors = cm.jet(np.linspace(0,1,n))

csvs = glob.glob('campbell_*.csv')
csvs.sort()
fig = plt.figure('Campbell')
ax = fig.add_subplot(111)

for i, csv in enumerate(csvs):
    print ('Processing %s'%csv)
    df = pd.read_csv(csv,delimiter=';')
    k = 0
    for j in range(1,2*n-1,2):
        ax.plot(df['Rot.Freq.'],df[df.keys()[j]],c=colors[k],label='%s'%df.keys()[j])
        k += 1
ax.set_xlabel('Rotational speed [Hz]')
ax.set_ylabel('Frequency [Hz]')
plt.tight_layout()
plt.savefig('campbell.png')
#plt.show()
