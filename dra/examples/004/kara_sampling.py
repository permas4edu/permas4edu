import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
csvs = glob.glob('frf_*.csv')
csvs.sort()
df = pd.read_csv('sampling_xdhis.csv',delimiter=';')
dhis = df['DV_1']
fig = plt.figure('FRF',figsize=(9,11))
ax = fig.add_subplot(111)

for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.semilogy(df['Frequency'], df['N9,w'],label=r'$m=$%.3e [kg]'%dhis[i])
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r'Receptance [m/N]')
ax.set_xticks(np.linspace(0.,1000.,11))
ax.set_xlim(0.,1000.)
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.show()
