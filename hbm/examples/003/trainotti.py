import os
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['savefig.directory'] = os.getcwd()
fig = plt.figure('HBM')
ax = fig.add_subplot(111)

df = pd.read_csv('hbm_xy_resp.csv',delimiter=';')
ax.plot(2*np.pi*df['Frequency'],df['H1-N101,u'],label=r'$q_1$')        
ax.plot(2*np.pi*df['Frequency'],df['H1-N102,u'],label=r'$q_2$')        
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(1.,5.,3))
ax.set_yticks(np.linspace(0.0,4.,2))
ax.set_xlabel(r'$\omega$')
#ax.set_xlim(0.8,5.0)
plt.show()

