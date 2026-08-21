import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
fig = plt.figure('FRFs')
ax = fig.add_subplot(111)
csvs=glob.glob('frf_*_frf.csv')
csvs.sort()
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(df['Frequency'],df['N101,u'],label='Iteration %i' %(i+1))
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel(r'Magnitude $x_1$')
ax.set_xlim(0.,1.)
ax.grid()
plt.tight_layout()
plt.savefig('frfs.png',dpi=80)