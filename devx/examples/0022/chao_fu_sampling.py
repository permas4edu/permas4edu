import os, sys, glob
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
csvs = glob.glob('unbalance_*dampl.csv')
csvs.sort()

fig = plt.figure('Unbalance response')
ax = fig.add_subplot(111)

for i, csv in enumerate(csvs):
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(60*df['Frequency'],1.E-3*df['N64,u'])
ax.set_xlabel(r'Frequency $f$ [rpm]')
ax.set_ylabel(r'Amplitude $u$ [m]')
ax.set_xlim(0.,2100.)
ax.set_xticks(np.linspace(0.0, 2000.0, 11))
ax.grid()
plt.ticklabel_format(axis='y', style='sci', scilimits=(0,0))
plt.tight_layout()
plt.show()
