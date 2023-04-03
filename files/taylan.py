import os, sys
import glob
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
csvs = glob.glob('hbm_*_xy_resp.csv')
csvs.sort()
fig1 = plt.figure('HBM 1')
fig2 = plt.figure('HBM 2')
ax1 = fig1.add_subplot(111)
ax2 = fig2.add_subplot(111)
for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax1.plot(df['Frequency'],df['H1-N1,u'],label=r'%.0f N' %(5*float(i+2)))
    ax2.plot(df['Frequency'],df['H1-N5,u'],label=r'%.0f N' %(5*float(i+2)))
ax1.set_xlabel('Frequency $f$ [Hz]')    
ax1.set_ylabel('Magnitude')
ax1.set_yticks(np.linspace(0.0,0.09,10))
ax1.grid()
ax1.legend(shadow=True).set_draggable(True)
ax2.set_xlabel('Frequency $f$ [Hz]')    
ax2.set_ylabel('Magnitude')
ax2.grid()
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()


