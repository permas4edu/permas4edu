import os
import glob
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['savefig.directory'] = os.getcwd()
csvs = glob.glob('hbm_xy_00*.csv')
csvs.sort()
fig = plt.figure('HBM')
beta = [-0.05,0.0,0.15,0.4]
ax = fig.add_subplot(111)

for i, csv in enumerate(csvs):
    print ('Processing %s' %csv)
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$\beta=$%+.2f'%beta[i])        
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(0.6,1.4,5))
ax.set_yticks(np.linspace(0.0,3.,4))
ax.set_xlabel(r'$\omega$')
ax.set_xlim(0.6,1.5)
plt.show()

