import glob
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
fig = plt.figure('FRF',figsize=(12,6))
ax = fig.add_subplot(111)
csvs = glob.glob('a3*.csv')
csvs.sort()
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.semilogy(df['Frequency'],df['N6,w'],label='Step_%i' %(i+2))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel('Frequency $f$ [Hz]')
ax.set_ylabel(r'Acceleration $a$ [m/s$^2$]')
plt.show()
