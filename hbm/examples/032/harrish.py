import os, sys
import glob
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt

csvs=glob.glob('harrish_*.csv')
csvs.sort()
a = [0.003, 0.01 , 0.05,  0.1]
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(df['Frequency'],1E3*df['H1-N101,u'],label=r'%.3f g' %a[i])
ax.set_xlabel('Frequency $f$ [Hz]')
ax.set_ylabel('Displacement [mm]')
ax.grid()
ax.set_yticks(np.linspace(0.0,20.,9))
ax.set_xlim(5.0,11.0)
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
