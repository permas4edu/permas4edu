import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
from scipy.interpolate import splrep, splev
from scipy.optimize import root

target = float(sys.argv[1])

def fun(x):
    return splev(x,tck,der=0)-target

df = pd.read_csv('sampling_srhis.csv',delimiter=';')
x = df['DV_1'] # m --> mm
y = df['F_1']
tck = splrep(x,y,s=0)

sol=root(fun,x[0])
if sol['success']:
    x_est=sol['x'][0]

fig = plt.figure('Natural frequencies')
ax = fig.add_subplot(111)
ax.plot(x,y,'-o',alpha=0.5,label=r'$%s$' %df.keys()[1].replace('F','f'))
y_est = splev(x_est,tck,der=0)
ax.plot(x_est,y_est,'+',alpha=1.0,c='r',label=r'Target frequency $\hat{f}=%.1f$ [Hz]'%target)
ax.grid()
ax.set_xlabel(r'$\Delta l$ [mm]')
ax.set_ylabel('Natural frequency $f$ [Hz]')
ax.hlines(target,x.min(),x.max(),color='k',alpha=0.5)
ax.vlines(x_est,y.min(),y.max(),color='k',alpha=0.5)
ax.legend(shadow=True).set_draggable(True)
ax.annotate(r'$\Delta l_{opt}=%.3f$ [mm]'%x_est, xy=(x_est, y_est),  xycoords='data',
            xytext=(0.8, 0.7), textcoords='axes fraction',
            arrowprops=dict(facecolor='black', shrink=0.1, width=1.0, headwidth=5.),
            horizontalalignment='right', verticalalignment='top',
            )
plt.show()
