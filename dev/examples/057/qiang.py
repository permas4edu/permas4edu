import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df = pd.read_csv('modes_modes.csv',delimiter=';')
fig, axs = plt.subplots(2, 3, figsize=(8,8))
labels=[]
for key in df.keys()[1:]:
    labels.append(key.split('_')[1])
axs[0,0].plot(df[df.keys()[1]],df['Coor_Y'],'-o',label=r'$f_1$=%.3f [Hz]'%float(labels[0]))
axs[0,1].plot(df[df.keys()[2]],df['Coor_Y'],'-o',label=r'$f_2$=%.3f [Hz]'%float(labels[1]))
axs[0,2].plot(df[df.keys()[3]],df['Coor_Y'],'-o',label=r'$f_3$=%.3f [Hz]'%float(labels[2]))
axs[1,0].plot(df[df.keys()[4]],df['Coor_Y'],'-o',label=r'$f_4$=%.3f [Hz]'%float(labels[3]))
axs[1,1].plot(df[df.keys()[5]],df['Coor_Y'],'-o',label=r'$f_5$=%.3f [Hz]'%float(labels[4]))
axs[1,2].plot(df[df.keys()[6]],df['Coor_Y'],'-o',label=r'$f_6$=%.3f [Hz]'%float(labels[5]))
for ax in axs.flat:
    ax.set(xlabel='Amplitude', ylabel='Floor')
    ax.grid()
    ax.legend(shadow=True).set_draggable(True)
    ax.set_yticks(np.linspace(0.,8.,9))
# Hide x labels and tick labels for top plots and y ticks for right plots.
for ax in axs.flat:
    ax.label_outer()
plt.tight_layout()
plt.show()
