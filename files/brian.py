import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
csvs = glob.glob('displacements_*.csv')
csvs.sort()
Gamma = np.linspace(0.9,1.1,5)
fig = plt.figure('FRF amplitude')
ax = fig.add_subplot(111)
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.loglog(df['Frequency'],df['N51,w'],label=r'$\gamma=$%.2f' %Gamma[i])
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r'$|H|$')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.savefig('frf_amplitudes.png')
plt.show()
