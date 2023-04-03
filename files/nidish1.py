import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
df1 = pd.read_csv('normal_modes_mode.csv',delimiter=';')

m,n = df1.shape
fig, axs = plt.subplots(2, 3,figsize=(12,8))
fig.canvas.manager.set_window_title('Mode shapes') 
axs[0,0].plot(df1['Coor_X'],df1[df1.keys()[1]],label=r'$f=$%.3e [Hz]' %(float(df1.keys()[1].strip('Freq_').strip('_u'))*2*np.pi))
axs[0,1].plot(df1['Coor_X'],df1[df1.keys()[2]],label=r'$f=$%.3e [Hz]' %(float(df1.keys()[2].strip('Freq_').strip('_u'))*2*np.pi))
axs[0,2].plot(df1['Coor_X'],df1[df1.keys()[3]],label=r'$f=$%.3e [Hz]' %(float(df1.keys()[3].strip('Freq_').strip('_u'))*2*np.pi))
axs[1,0].plot(df1['Coor_X'],df1[df1.keys()[4]],label=r'$f=$%.3e [Hz]' %(float(df1.keys()[4].strip('Freq_').strip('_u'))*2*np.pi))
axs[1,1].plot(df1['Coor_X'],df1[df1.keys()[5]],label=r'$f=$%.3e [Hz]' %(float(df1.keys()[5].strip('Freq_').strip('_u'))*2*np.pi))
axs[1,2].plot(df1['Coor_X'],df1[df1.keys()[6]],label=r'$f=$%.3e [Hz]' %(float(df1.keys()[6].strip('Freq_').strip('_u'))*2*np.pi))


for ax in axs.flat:
    ax.set(xlabel='x Coordinate [m]', ylabel='Modal deflection')
    ax.grid()
    ax.legend(shadow=True).set_draggable(True)
# Hide x labels and tick labels for top plots and y ticks for right plots.
for ax in axs.flat:
    ax.label_outer()
plt.tight_layout()
plt.show()

    
